class TiendController < ApplicationController
  def index
    
    if tiend_signed_in?
      # Si el usuario está conectado, obtén el usuario actual
      @current_tiend = current_tiend
    end
  end
end
  