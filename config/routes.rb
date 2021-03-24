
Rails.application.routes.draw do
  resources :interventions
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  get 'pages/residential'
  get 'pages/commercial'
  get 'pages/404'
  get 'quotes/quotes'
  get 'pages/charts'
  get 'pages/diagram'
  get 'intervention/index'


  get 'intervention', to: 'intervention#index'
  devise_for :users
  
  root to: "home#index"
  
  get '/commercial'      => 'pages#commercial'
  get "/home"            => 'home#index'
  get '/404'             => 'pages#404'
  get '/quotes'          => 'quotes#quotes'
  get '/residential'     => 'pages#residential'
  get '/charts'          => 'pages#charts'
  get '/diagram'         => 'pages#diagram'
  get '/news'            => 'home#news'
  get '/clients'         => 'home#clients'
  get '/contact'         => 'contact#index'
  get '/portfolio'       => 'home#portfolio'
  get '/charts'          => 'charts#dashboard'
  #get '/maps'           => 'maps#dashboard'
  post '/leads'          => 'leads#create'
  post '/quotes'         => 'quotes#create'
   
  get 'buildinglocalisation' => 'buildinglocalisation#building'
  get '/speak'           => 'speak#speech'
  # get '/speak', to: 'speak#text_to_speech', as: 'button'
  get 'intervention'     => 'intervention#index'
  
  devise_scope :user do 
    get "/signup"          => "devise/registrations#new" 
    get "/signin"          => "devise/sessions#new" 
    get "/signout"         => "devise/sessions#destroy"
    get "/changepassword"  => "devise/passwords#new"

    post "/signup"         => "devise/registrations#new" 
    post "/signin"         => "devise/sessions#new" 
    post "/signout"        => "devise/sessions#destroy"
    post "/changepassword" => "devise/passwords#new"
  end
  # devise_for :users,
  #   :controllers => { registrations: 'registrations'},
  #   :path_prefix => '',
  #   path: 'u',
  #   path_names: {
  #   sign_in: 'sign_in',
  #   sign_out: 'sign_out',
  #   password: 's',
  #   confirmation: 'v'
  # }

  # get 

  Rails.application.routes.draw do
    resources :quotes, only: [:new, :create]
  end
end