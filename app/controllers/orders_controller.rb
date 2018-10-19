class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :destroy]
  # skip_before_action :verify_authenticity_token

  # GET /orders
  def index
    @orders = Order.all
    json_response(@orders)
  end

  # POST /orders
  def create
    @order = Order.create!(order_params)
    json_response(@order, :created)
  end

  # GET /orders/:id
  def show
    json_response(@order)
  end

  # PUT /orders/:id
  def update
    @order.update(order_params)
    head :no_content
  end

  # DELETE /orders/:id
  def destroy
    @order.destroy
    head :no_content
  end

  private

  def order_params
    # whitelist params
    params.permit(
        :first_name,
        :last_name,
        :gender,
        :phone_num,
        :amenity,
        :personal_id_num,
        :check_in,
        :check_out,
        :num_night,
        :num_pet,
        :num_guest,
        :num_kid,
        :order_number,
        :room_id,
        :user_id,
        :room_id,
        :user_id,
        :start_date,
        :end_date
    )
  end

  def set_order
    @order = Order.find(params[:id])
  end
end


 