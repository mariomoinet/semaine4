Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get 'corsairs/new'
  
resources :corsairs
end
