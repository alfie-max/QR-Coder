Rails.application.routes.draw do

  root 'application#home'

  post  '/qrcode', to: 'application#qrcode', as: 'qrcode'

end
