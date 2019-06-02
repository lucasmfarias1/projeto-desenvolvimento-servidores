class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_filter

  def index
    @banda_requests = Banda.where(pendente: 1)
    @album_requests = Album.where(pendente: 1)
  end

  def aprova_banda
    @banda = Banda.find(params[:id])
    @banda.pendente = 0
    @banda.save
    redirect_to req_path, notice: "Você aprovou a banda #{@banda.nome} com sucesso"
  end

  def reprova_banda
    @banda = Banda.find(params[:id])
    @banda.destroy
    redirect_to req_path, notice: "Você reprovou a banda #{@banda.nome} com sucesso"
  end

  def aprova_album
    @album = Album.find(params[:id])
    @album.pendente = 0
    @album.save
    redirect_to req_path, notice: "Você aprovou o album #{@album.nome} com sucesso"
  end

  def reprova_album
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to req_path, notice: "Você reprovou o album #{@album.nome} com sucesso"
  end

  private

  def admin_filter
    unless current_user.is_admin?
      return redirect_to root_path, alert: 'Esta ação demanda privilégios de Admin'
    end
  end
end
