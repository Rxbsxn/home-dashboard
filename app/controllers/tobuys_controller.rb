class TobuysController < ApplicationController
  def index
    @tobuys = Tobuy.all
  end

  def new
    @tobuy = Tobuy.new
  end

  def create
    @tobuy = Tobuy.create(tobuy_params)
    redirect_to tobuys_path
  end

  def show
    @tobuy = Tobuy.find(params[:id])
  end

  def destroy
    @tobuy = Tobuy.find(params[:id])
    @tobuy.destroy
  end

  private
    def tobuy_params
    params.require(:tobuy).permit(:name, :quantity)
    end
end
