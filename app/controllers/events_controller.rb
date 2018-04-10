class EventsController < ApplicationController
  def create
    @event = Event.new(params[:name, :description, :star_date, :place])
    if @event.save
      render json: @event
    end
  end

  def destroy
    @event.destroy
    render json: @event
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
    else
      render json: @event
    end
  end

  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  def more_bought_less_paid

  end
end
