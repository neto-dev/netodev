require 'api_constraints'

Rails.application.routes.draw do


  get '/' => 'home#index'
  get '/blog' => 'home#blog'
  get '/blog/:id' => 'home#publication', as: "publication_show"
  get '/blog/categoria/:id' => 'home#category'
  get '/buscar' => 'home#search'

  #Devise map routes
  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    unlocks: 'users/unlocks',
    omniauth: 'users/omniauth'
  }, paths: {confirmation: 'verification'}

  #Login 
  devise_scope :user do
    get '/cerrar' => 'devise/sessions#destroy'
    get "/ingresar" => "devise/sessions#new"
  end

  resources :comments
  resources :publications
  resources :categories

  #Admin routes
  namespace :dashboard, path: "administracion", as: :dashboard do
      get '/' => 'publications#index', module: :dashboard
    get '/no-permitido' => 'home#unauthorized', module: :dashboard, as: :unauthorized
    resources :categories, path: "categorias"
    resources :publications, path: "publicaciones"
    resources :comments, path: "comentarios"
  end

  get 'errors/not_found'
  get 'errors/internal_server_error'

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
  

  # Namespace for the API

  # Api with subdomain, api.mysite.org as '/...'
    # namespace :api,
    #   defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/'  do
    # end

  # Unused
  # Api uri formated mysite.org/api/...
  # namespace :api, defaults: { format: :json } do
  #   scope module: :v1,
  #             constraints: ApiConstraints.new(version: 1, default: true) do
  #     # We are going to list our resources here
  #   end
  # end


end
