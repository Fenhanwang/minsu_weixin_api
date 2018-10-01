class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :update, :destroy]

  # GET /rooms
  def index
    @rooms = Room.all
    json_response(@rooms)
  end

  # POST /rooms
  def create
    @room = Room.create!(room_params)
    json_response(@room, :created)
  end

  # GET /rooms/:id
  def show
    json_response(@room)
  end

  # PUT /rooms/:id
  def update
    @room.update(room_params)
    head :no_content
  end

  # DELETE /rooms/:id
  def destroy
    @room.destroy
    head :no_content
  end

  private

  def room_params
    # whitelist params
    params.permit(
        :room_name,
        :unit, 
        :max_guest, 
        :max_kid, 
        :room_size, 
        :bed_type, 
        :bed_quantity, 
        :amenity, 
        :description, 
        :country, 
        :postal_code, 
        :house_num, 
        :street, 
        :city, 
        :state_province, 
        :apt_number, 
        :charge_type, 
        :weekday_price, 
        :weekend_price, 
        :weekly_price, 
        :monthly_price, 
        :for_each_guest_above, 
        :charge, 
        :created_at, 
        :updated_at, 
        :picture_file_name, 
        :picture_content_type, 
        :picture_file_size, 
        :picture_updated_at
    )
  end

  def set_room
    @room = Room.find(params[:id])
  end
end


 