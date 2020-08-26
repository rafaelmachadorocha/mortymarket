class ExchangesController < ApplicationController
  skip_before_action :authenticate_rick!, only: :new
end
