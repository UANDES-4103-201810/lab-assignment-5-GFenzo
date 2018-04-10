class TicketsController < ApplicationController
  def create
    @ticket = Ticket.new(params[:description, :price, :event])
    if @ticket.save
      render json: @ticket
    end
  end

  def destroy
    @ticket.destroy
    render json: @ticket
  end

  def update
    @ticket = Ticket.find(params[:id])
    if @ticket.update(ticket_params)
    else
      render json: @ticket
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
    render json: @ticket
  end

  def most_expensives

  end
end