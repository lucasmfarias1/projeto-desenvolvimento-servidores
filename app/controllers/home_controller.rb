class HomeController < ApplicationController
  def index
    @bandas = Banda.where.not(nota: nil).order(nota: :desc)
    @albums = Album.where.not(nota: nil).order(nota: :desc)
  end

  def explorar
    @albums = Album.all
    @bandas = Banda.all
  end
end
