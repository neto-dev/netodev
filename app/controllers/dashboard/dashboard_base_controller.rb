class Dashboard::DashboardBaseController < ApplicationController

  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  layout "dashboard/layouts/base"
  before_action :authenticate_user!

  private

  #Encontrar el host para hacer las rutas
  def get_host
    (request.base_url.split('//')[1])
  end

  def user_not_authorized
    flash[:alert] = "No tienes permiso para realizar la accion solicitada"
    redirect_to(dashboard_unauthorized_path)
  end

end
