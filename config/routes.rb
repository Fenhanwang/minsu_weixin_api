Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :rooms do
    resources :orders
  end
  match '/search_room', to: 'rooms#search_room', via: :post
end