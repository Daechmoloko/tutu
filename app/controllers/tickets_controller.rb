class TicketsController < ApplicationController

  before_action :set_ticket, only: %i[show edit update destroy]

  def index 
    @tickets = Ticket.all
  end

  def new 
    @ticket = Ticket.new
  end

  def create 
    @ticket = Ticket.new(ticket_params)
    if @ticket.save 
      redirect_to @ticket
    else
      render :new
    end
  end

  def show
  end

  def edit 
  end

  def update 
    if @ticket.update(ticket_params)
      redirect_to @ticket
    else
      render :edit
    end
  end 

  def destroy 
    @ticket.destroy
    redirect_to tickets_path
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:user_name, :starting_station, :ending_station)
  end
end