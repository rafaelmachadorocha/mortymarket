class MymortiesController < ApplicationController
  def index
    all_morties = Morty.all
    @mymorties = all_morties.select do |morty|
      morty.buyer_rick == current_rick
    end
  end
end
