Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :wizards
    # get '/wizards', to:'wizards#index'
    # put '/wizards/:id', to: 'wizards#rate'
  end
end
