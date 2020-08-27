class ExchangesController < ApplicationController
  # skip_before_action :authenticate_rick!, only: :new
  before_action :set_morty, only: [:create, :new] 

  def show
    @exchange = Exchange.find(params[:id])
  end

  def new
    @exchange = Exchange.new  
  end

  def create
    @exchange = Exchange.new(exchange_params)
    @exchange.rick = current_rick
    @exchange.morty = @morty

    if @exchange.save
      redirect_to morty_exchange_path(@morty, @exchange), notice: 'That Morty is yours, Rick!!'
    else
      render 'morties/show'
    end
  end

  private

  def set_morty
    @morty = Morty.find(params[:morty_id])
  end

  def exchange_params
    params.require(:exchange).permit(:review, :morty_id, :rick_id, :payment)
  end

end
