class MymortiesController < ApplicationController
  def index
    all_morties = Morty.all
    @mymorties = all_morties.select do |morty|
      morty.buyer_rick == current_rick
    end
    @forsalemorties = all_morties.select do |forsale|
      forsale.seller_rick == current_rick && forsale.buyer_rick.nil?
    end
    @soldmorties = all_morties.select do |sold|
      sold.seller_rick == current_rick && !sold.buyer_rick.nil?
    end
  end
end
