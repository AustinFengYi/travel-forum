class Admin::TravelresortsController < ApplicationController
  before_action :authenticate_admin

  def index
    @travelresorts = Travelresort.all
  end

  def new
    @travelresort = Travelresort.new
  end

  def create
    @travelresort = Travelresort.new(travelresort_params)
    if @travelresort.save
      flash[:notice]="resort was successfully created"
      redirect_to admin_root_path
    else
      flash[:alert]="resort was failed to create"
      render :new
    end
  end

  def show
    @travelresort = Travelresort.find(params[:id])
  end




  private

  def travelresort_params
    params.require(:travelresort).permit(:name,:tel,:address,:opening_hours,:description)
  end

  def authenticate_admin
    unless current_user.admin?
      flash[:alert]="Not Allow"
      redirect_to root_path
    end
  end

end
