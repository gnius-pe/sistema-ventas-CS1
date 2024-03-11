Rails.application.routes.draw do
  get 'sales/index'
  get 'sales/new'
  get 'sales/create'
  get 'sales/show'
  get 'sales/edit'
  get 'sales/update'
  get 'sales/destroy'
  get 'profile/products', to: 'products#index', as: 'user_products' # Muestra los productos del usuario
  get 'profile/products/new', to: 'products#new', as: 'new_user_product' # Muestra el formulario para crear un nuevo producto del usuario
  post 'profile/products', to: 'products#create' # Crea un nuevo producto del usuario
  get 'profile/products/:id/edit', to: 'products#edit', as: 'edit_user_product' # Muestra el formulario para editar un producto del usuario
  patch 'profile/products/:id', to: 'products#update' # Actualiza un producto del usuario
  delete 'profile/products/:id', to: 'products#destroy' # Elimina un producto del usuario

  # Rutas para iniciar sesión y registro
  devise_for :tiends, controllers: {
  sessions: 'devise/sessions',
  registrations: 'devise/registrations'
  }
  devise_scope :tiend do
    root "tiend#index"
    get 'tiends/sign_out', to: 'devise/sessions#destroy'
  end
  # Ruta para el cierre de sesión
    # config/routes.rb

  # Tus otras rutas aquí
  resources :sales, only: [:new, :create]

  #devise_for :tiends
  get 'products/:id', to: 'products#show', as: 'product'
  get '/products/new', to: 'products#new', as: 'new_product'
  # config/routes.rb
  get 'sales/:id/factura', to: 'sales#factura', as: 'factura_sale'
  resources :sales do
    get :factura, on: :member
  end
  
  get 'bienvenido', to: 'bienvenido#index', as: 'bienvenido'
  
  resources :tiends
  resources :products
  

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
end
