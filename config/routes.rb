Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  get 'rand_ph' => 'home#rand_ph'
  get 'clear_ph' => 'home#clear_ph'

end
