class UsersTicketsController < ApplicationController
  def create
    @users_ticket = UserTicket.new(params[:user, :ticket])
    if @users_ticket.save
      render json: @users_ticket
    end
  end

  def destroy
    @users_ticket.destroy
    render json: @users_ticket
  end

  def update
    @users_ticket = UserTicket.find(params[:id])
    if @users_ticket.update(users_ticket_params)
    else
      render json: @users_ticket
    end
  end

  def show
    @users_ticket = UserTicket.find(params[:id])
    render json: @users_ticket
  end
end
