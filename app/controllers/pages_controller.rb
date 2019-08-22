class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @announces = Announce.all.limit(5)
  end

  def dashboard
    # Recuperer les bookings du user connecte : 1) les bookings en tant que client ET 2) les bookings en tant aue proprio
    # @mybookings (les bookings en tant que clients = array)
    @mybookings = current_user.bookings

    if current_user.announces.exists?
      @myrentings = current_user.announces.map{ |annonce| annonce.bookings}.flatten
    end

    # @myrentings (les bookings en tant que proprio = array)

    # Recuperer les announces du user connecte
    @myannounces = current_user.announces
    # @myannounces

  end
end
