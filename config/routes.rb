Rails.application.routes.draw do
  get 'urls/shorten'
  resources :urls, only: [:create, :show,]
  get '/redirecturl/:id', to: 'urls#redirecturl'
  
  # resources :urls do
  #   member do
  #     get 'redirecturl'
  #   end
  # end
  # get 'urls/shorten'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
