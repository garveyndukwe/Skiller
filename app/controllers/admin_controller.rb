class AdminController < ApplicationController
  #before_action :set_admin, only: [:dashboard, :destroy]
  before_action :authenticate_user!
  def index
  end

  def show

end

  def dashboard
  end

  def chart
    @query=Query.first
  end
  def destroy

  end

  private
  def set_admin
    @admin = User.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "User is not found."
    redirect_to admin_path
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_params
    #params.require(:skill).permit(:id, :oral_score, :written_score, :analytic_score, :computing_score)
  end
end


