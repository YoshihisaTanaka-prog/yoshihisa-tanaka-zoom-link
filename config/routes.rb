Rails.application.routes.draw do

  root to: 'homes#index'
  devise_for :users

  get 'admin', to: 'admin#index'
  get 'admin/edit', to: 'admin#edit'
  post 'admin/edit', to: 'admin#edit'
  get 'admin/edit/userinfo', to: 'admin#edit_userinfo'
  post 'admin/edit/userinfo', to: 'admin#edit_userinfo'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
