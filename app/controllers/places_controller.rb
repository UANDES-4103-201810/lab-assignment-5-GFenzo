class PlacesController < ApplicationController
  def create
    @place = Place.new(params[:name, :address, :capacity])
    if @place.save
      render json: @place
    end
  end

  def destroy
    @place.destroy
    render json: @place
  end

  def update
    @place = Place.find(params[:id])
    if @place.update(place_params)
    else
      render json: @place
    end
  end

  def show
    @place = Place.find(params[:id])
    render json: @place
  end

  def more_assistance
    @more = Event.find(params[:id])
    render json: @more
  end
end

