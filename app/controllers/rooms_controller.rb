class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :update, :destroy]


  # POST /search_room
  def search_room
    room_date_info = {}
    room_date_info = params.permit([:start_date, :end_date]).to_h
    # if room_date_info.empty?
    #   @rooms = Room.all
    # else
    @rooms = Room.includes(:orders).where(
      "orders.start_date >= ? or orders.end_date <= ?", room_date_info[:end_date], room_date_info[:start_date]
      ).references(:orders)
    # end
    json_response(@rooms)
  end

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


 