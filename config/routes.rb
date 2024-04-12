Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'

  # get 'pages/home'    were replacing this so that we reach teh home page without having to type that in the browser.!!!!!!
  root 'pages#home'     #This will now allow the user to reach into the homes page without having to type that into the browser indow
  get 'about' => 'pages#about'
  get 'contact-us' => 'pages#contact-us'

  # just playing around with chatgpt

  get 'signup', to: 'users#new'  # Display the signup form
  post 'users', to: 'users#create'  # Handle form submission and user creation

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
