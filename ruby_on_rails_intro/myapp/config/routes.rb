Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # have routes defined & generated for your resources
  resources :owners
  resources :dogs

  # or set your own routes
  get "treats" ,to: "treats#index"

end
