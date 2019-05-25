class BuscaController < ApplicationController
  def index
    bandas = Banda.where('nome LIKE ?', "%#{params[:query]}%")
    albums = Album.where('nome LIKE ?', "%#{params[:query]}%")

    @result = bandas + albums
  end
end