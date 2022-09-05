# frozen_string_literal: true

class RailwayStationsController < ApplicationController
  before_action :set_railway_station!, only: %i[edit update show destroy]

  def index
    @railway_stations = RailwayStation.all
  end

  def new
    @railway_station = RailwayStation.new
  end

  def create
    @railway_station = RailwayStation.new(railway_station_params)
    if @railway_station.save
      flash[:success] = 'RailwayStation successfully created'
      redirect_to @railway_station
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  def show; end

  def edit; end

  def update
    if @railway_station.update(set_railway_station_params)
      flash[:success] = 'RailwayStation was successfully updated'
      redirect_to @railway_station
    else
      flash[:error] = 'Something went wrong'
      render 'edit'
    end
  end

  def destroy
    if @railway_station.destroy
      flash[:success] = 'RailwayStation delete'
    else
      flash[:error] = 'Error'
    end
    redirect_to railway_stations_path
  end

  private

  def railway_station_params
    params.require(:railway_station).permit(:title)
  end

  def set_railway_station!
    @railway_station = RailwayStation.find(params[:id])
  end
end
