class MortiesController < ApplicationController
  skip_before_action :authenticate_rick!, only: [ :show, :index, :search ]
  before_action :set_morty, only: [ :edit, :show, :update, :destroy ]  

  def index
    search = params[:search]

    if search.present?
      sql = "title ILIKE :query OR description ILIKE :query"
      @morties = Morty.where(sql, query: "%#{search}%")
    else
      all_morties = Morty.all
      @morties = all_morties.select do |morty|
        morty.buyer_rick.blank?
      end
    end
  
  end

  def show
    @morty = Morty.find(params[:id])
    @seller_rick = @morty.seller_rick
    @exchange = Exchange.new
  end

  def new
    @morty = Morty.new
  end

  def create
    @morty = Morty.new(morty_params)
    @morty.seller_rick = current_rick
    if @morty.save
      redirect_to morty_path(@morty), alert: 'New Morty for sale! Wubba Lubba Dub Dub!'
    else
      render :new
    end

  end

  def edit
    if @morty.seller_rick == current_rick
      @morty = Morty.find(params[:id])
    else
      redirect_to root_path, notice: 'You are not the owner of that Morty.'
    end      
  end

  def update
    if @morty.update(morty_params)
      redirect_to morty_path(@morty), alert: 'Morty was successfully updated.' 
    else
      render :edit
    end
  end

  def destroy
    if @morty.seller_rick == current_rick
      @morty = Morty.find(params[:id])
      @morty.destroy
      redirect_to root_path, notice: 'Morty removed from sale!'  
    else
      redirect_to root_path, notice: 'You are not the owner of that Morty.'
    end  
  end

  def my_morties
    all_morties = Morty.all
    @morties = all_morties.select do |morty|
      # morty.seller_rick == current_rick && morty.buyer_rick.nil?
      morty.buyer_rick == current_rick
    end
  end

  private

  def set_morty
    @morty = Morty.find(params[:id])
  end

  def morty_params
    params.require(:morty).permit(:price, :description, :rarity, :title, :rick_id, :photo)
  end

end
