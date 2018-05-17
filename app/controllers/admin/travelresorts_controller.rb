class Admin::TravelresortsController < ApplicationController
  before_action :authenticate_admin
  before_action :set_travelresort ,only: [:show,:edit,:update]

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
    #@travelresort = Travelresort.find(params[:id])
  end

  def edit
    #@travelresort = Travelresort.find(params[:id])
  end

  def update
    #@travelresort = Travelresort.find(params[:id])
    if @travelresort.update(travelresort_params)
      flash[:notice]="resort was successfully updated"
      redirect_to admin_travelresort_path(@travelresort)
    else
      flash[:alert]="resort was failed to update"
      render :edit
    end
  end




  private

  def set_travelresort
    @travelresort = Travelresort.find(params[:id])
  end

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
