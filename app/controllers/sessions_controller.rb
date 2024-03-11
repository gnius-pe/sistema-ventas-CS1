# app/controllers/sessions_controller.rb
class SessionsController < Devise::SessionsController
    def new
      # Aquí puedes agregar tu lógica personalizada si es necesario
      super
    end
  
    # Otras acciones que necesites personalizar
  end
  