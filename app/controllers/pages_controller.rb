class PagesController < ApplicationController
  skip_before_action :authenticate_rick!, only: :home
  def home
    
  end
end
