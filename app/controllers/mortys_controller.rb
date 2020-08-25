class MortysController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :index:, :search ]
  before_action :set_morty

  def index
    @mortys = Morty.all
  end

  def show
  end


  private

  def set_morty
  end




end
