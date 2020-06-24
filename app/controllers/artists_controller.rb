class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
  end

  def create
    @artist = Artist.create({name: params[:name], age: params[:age], bio: params[:bio]})
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end
   
  def update
    @artist = Artist.find(params[:id])
    @artist.update(name: params[:artist][:name], age: params[:artist][:age], bio: params[:artist][:bio])
    redirect_to artist_path(@artist)
  end

  # def delete
  #   @artist = Artist.find(params[:id])
  # end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path
  end

  # def destroy
  #   @artist.destroy
  #   redirect_to artists_path
  # end

end
