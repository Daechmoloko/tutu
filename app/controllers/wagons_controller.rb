# frozen_string_literal: true

class WagonsController < ApplicationController
  before_action :set_train
  before_action :set_wagon, only: [:destory]

  def new
    @wagon = Wagon.new
  end

  def create
    @wagon = Wagon.new(params_wagon)
    @wagon[:train_id] = @train.id
    if @wagon.save!
      redirect_to train_path(@train)
    else
      render :new
    end
  end

  private

  def set_train
    @train = Train.find(params[:train_id])
  end

  def set_wagon
    @wagon = Wagon.find(params[:id])
  end

  def params_wagon
    params.require(:wagon).permit(:number, :top_place, :under_place, :wagon_class_id, :train_id)
  end
end
