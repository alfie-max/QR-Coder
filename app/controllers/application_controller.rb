class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def home
  end

  def qrcode
    media_link = params[:media_link]
    QrCode.create(ip_address: request.env.fetch('HTTP_X_FORWARDED_FOR', request.remote_ip), url: media_link)

    @qrcode_link = "http://chart.apis.google.com/chart?cht=qr&chs=250x250&choe=UTF-8&chld=H&chl=" + media_link
  end
end
