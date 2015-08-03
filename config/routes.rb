Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'application#home'

  post  '/qrcode', to: 'application#qrcode', as: 'qrcode'

end
