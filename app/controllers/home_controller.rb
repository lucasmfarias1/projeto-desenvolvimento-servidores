class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:admin_panel]
  before_action :admin_filter, only: [:admin_panel]
  
  def index
    @bandas = Banda.where.not(nota: nil).order(nota: :desc)
    @albums = Album.where.not(nota: nil).order(nota: :desc)
  end

  def explorar
    @albums = Album.all
    @bandas = Banda.all
  end

  def admin_panel
  end

  private

  def admin_filter
    unless current_user.is_admin?
      return redirect_to root_path, alert: 'Esta ação demanda privilégios de Admin'
    end
  end
end
