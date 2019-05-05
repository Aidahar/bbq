class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events
  has_many :comments
  has_many :subscriptions

  before_validation :set_name, on: :create

  validates :name, presence: true, length: {maximum: 35}
  validate :check_mail, unless: -> { user.present? }

  after_commit :link_subscriptions, on: :create

  private

  def set_name
    self.name = "Товарищ №#{rand(777)}" if self.name.blank?
  end

  def link_subscriptions
    Subscription.where(user_id: nil, user_email: user.email).update_all(user_id: self.id)
  end

  def check_mail
    errors.add(:user_email, :not_available) if User.find_by(email: user_email)
  end
end
