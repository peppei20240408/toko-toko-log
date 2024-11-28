class TokoLogsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  # リダイレクトすべきアクション:[:edit, :destroy]
  def index
    @toko_logs = TokoLog.all
  end

  def new
    @toko_log = TokoLog.new
  end

  def create
    @toko_log = TokoLog.new(toko_log_params)
    if @toko_log.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def toko_log_params
    params.require(:toko_log).permit(:title, :description).merge(user_id: current_user.id)
  end
end