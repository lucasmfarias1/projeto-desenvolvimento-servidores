class HomeController < ApplicationController
  def index
  end

  def explorar
    @albums = Album.all
    @bandas = Banda.all
  end
end
