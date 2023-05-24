Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "sites#index"
  post '/perform_filter', to: 'sites#perform_filter'
end
