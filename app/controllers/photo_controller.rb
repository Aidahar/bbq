class PhotoController < ApplicationController
  before_action :set_event, only: [:create, :destroy]
  before_action :set_photo, only: [:destroy]

  def create
    @new_photo = @event.photo.build(photo_params)
    @new_photo.user = current_user


  end
end
