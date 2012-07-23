Rails3MongoidDevise::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  
  root :to => "home#index"

  devise_for :users
  resources :users, :only => [:show, :index, :edit]

  post "/passets/new",
    :controller => "passets", 
    :action => "create";

  post "/acts/new",
    :controller => "acts", 
    :action => "create";

  resources :acts do
    collection do
      get :adminindex
    end
  end
  
  resources :passets do 
   collection do
     get :search
     get :adminindex
   end
  end

  resources :shows do 
   member do
      get 'items' 
      get 'show_items'
   end
  end

  resources :show_items

  # this is a non-standard endpoint thanks to 
  # datatables

  post "/show_items/update_seq", 
    :controller => "show_items",
    :action => "update_seq"


  get "/s/:uuid-:dims.jpg",
    :controller => "images",
    :action => "servethumb"

  get "/sf/:uuid.jpg",
    :controller => "images",
    :action => "servefull"

  get "/sf/:uuid",
    :controller => "images",
    :action => "servefull"

  get "/thumbs/:uuid-:dims.jpg",
    :controller => "images",
    :action => "servethumb"

  get 'uploads/download/:fn' => 'uploads#download'

end
