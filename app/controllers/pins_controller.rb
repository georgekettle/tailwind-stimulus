class PinsController < ApplicationController
  
  # POST /photos/:photo_id/pins
  def create
    # create a pin with strong params
    @pin = Pin.new(pin_params)
    # grab photo using params[:photo_id]
    @photo = Photo.find(params[:photo_id])
    # attach the photo to the pin
    @pin.photo = @photo
    # save pin
    if @pin.save
      redirect_to root_path, status: :see_other, notice: "Your pin was added to board!"
    else
      redirect_to root_path, status: :see_other, alert: "Something went wrong"
    end
    # redirect_back to main page
  end

  private

  def pin_params
    params.require(:pin).permit(:board_id)
  end
end
