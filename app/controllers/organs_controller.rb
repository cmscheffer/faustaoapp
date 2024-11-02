class OrgansController < ApplicationController
  before_action :authenticate_user!

  def index
    @organs = Organ.where.missing(:orders).where.not(user: current_user)
  end

  def show
    @organ = Organ.find(params[:id])
    @order = Order.new
  end

  def new
    @organ = Organ.new
  end

  def create
    @organ = Organ.new(organ_params)
    @organ.user = current_user
    if @organ.save
      redirect_to organ_path(@organ), notice: 'Organ was successfully created.'
    else
      render :new
    end
  end

  def edit
    @organ = Organ.find(params[:id])
    if current_user != @organ.user
      redirect_to organs_path, notice: "You not allowed to edit this Organ"
    end
  end

  def update
    @organ = Organ.find(params[:id])
    if @organ.update(organ_params)
      redirect_to organ_path(@organ), notice: 'Organ was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @organ = Organ.find(params[:id])
    @organ.destroy
    redirect_to organs_path
  end

  def my_orders
    @my_orders = Order.where(user: current_user)
  end

  private

  def organ_params
    params.require(:organ).permit(:name, :description, :price, :age, :img_url, :robot_type)
  end
end
