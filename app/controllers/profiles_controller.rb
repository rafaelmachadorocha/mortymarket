class ProfilesController < ApplicationController
  skip_before_action :authenticate_rick!, only: :show
  def show
    @rick = Rick.find(params[:id])
  end
end
