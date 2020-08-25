class MortiesController < ApplicationController
  skip_before_action :authenticate_rick!, only: [ :show, :index, :search ]
  before_action :set_morty, except: [:index, :show]
  skip_before_action :authenticate_rick!, only: [ :index, :show ]

  def index
    @morties = Morty.all
  end

  def show
    @morty = Morty.find(params[:id])
    @seller_rick = @morty.seller_rick
  end

  def new

  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def search
  end

  private

  def set_morty
    params.require(:morty).permit(:price, :description, :rarity, :title, :rick_id, :photo)
  end




end
