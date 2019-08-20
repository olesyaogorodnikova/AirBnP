class AnnouncesController < ApplicationController

  def index
    @announces = Announce.all
  end

  def new
    @announce = Announce.new
  end

  def create
    @announce = Announce.new(announce_params)
    @announce.user = current_user
    if @announce.save
      redirect_to announces_path
    else
      render 'new'
    end
  end

  private

  def announce_params
    params.require(:announce).permit(:model, :brand, :state, :photo, :description, :purchase_year, :date_start, :date_end)
  end
end
