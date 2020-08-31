class ProfilesController < ApplicationController
  skip_before_action :authenticate_rick!, only: :show
  before_action :set_rick

  def show
    @morties_sold = @rick.sold_morties.select { |morty| morty.exchange.present? }
  end

  def edit 
    if current_rick != @rick
      redirect_to morties_path, notice: "You can't edit that profile!"
    end 
  end

  def update
    if @rick.update(rick_params)
      redirect_to profile_path(@rick), notice: 'Your profile was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_rick
    @rick = Rick.find(params[:id])
  end

  def rick_params
    params.require(:rick).permit(:username, :email, :password, :bio, :photo)
  end

end
