class AnnouncesController < ApplicationController

  def index
    @announces = Announce.all
  end

  def show
    @announce = Announce.find(params[:id])
  end

  def create
    @announce = Announce.new(announce_params)
    if @announce.save
      redirect_to announce_path(@announce)
    else
      render :new
    end
  end
  # def show
  #   @announce = .find(params[:id])
  #   @dose = Dose.new
  #   @review = Review.new
  # end

  # def new
  #   @cocktail = Cocktail.new
  # end

  # def create
  #   @cocktail = Cocktail.new(cocktail_params)
  #   if @cocktail.save
  #     redirect_to cocktail_path(@cocktail)
  #   else
  #     render 'new'
  #   end
  # end

  # private


end
