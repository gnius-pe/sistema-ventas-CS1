class ApplicationController < ActionController::Base
    before_action :authenticate_tiend!, except: [:index, :new, :create] # Asegúrate de que la autenticación sea necesaria en todas las acciones excepto en las acciones de registro
    def after_sign_in_path_for(resource)
        bienvenido_path
      end
end
