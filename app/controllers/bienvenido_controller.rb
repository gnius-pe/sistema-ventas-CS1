class BienvenidoController < ApplicationController
  def index
    @sales = current_tiend.sales
    puts @sales.inspect
  end
  def after_sign_out_path_for(resource_or_scope)
    new_tiend_session_path
  end
  
end
