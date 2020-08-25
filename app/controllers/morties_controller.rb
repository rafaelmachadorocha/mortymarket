class MortiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :index:, :search ]
  before_action :set_morty
  skip_before_action :authenticate_user!, only: :index, :show

  def index
    @mortys = Morty.all
  end

  def show
    @morty = Morty.find[:id]
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
