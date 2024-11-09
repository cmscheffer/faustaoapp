class OrgansController < ApplicationController
  before_action :authenticate_user!
  before_action :restrict_access, only: :show

  def index
    @organs = Organ.where.missing(:orders).where.not(user: current_user)
    if params[:query].present?
      @organs = @organs.where("name ILIKE ?", "%#{params[:query]}%")
    end
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
      redirect_to my_offers_organs_path, notice: 'Organ was successfully created.'
    else
      render :new
    end
  end

  def edit
    @organ = Organ.find(params[:id])
    if current_user != @organ.user || @organ.orders.present?
      redirect_to my_offers_organs_path, notice: "You not allowed to edit this Organ"
    end
  end

  def update
    @organ = Organ.find(params[:id])
    if @organ.update(organ_params)
      redirect_to my_offers_organs_path, notice: 'Organ was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @organ = Organ.find(params[:id])
    if @organ.orders.present?
      redirect_to my_offers_organs_path, alert: "This offer was already bougth"
    else
      @organ.destroy
      redirect_to organs_path
    end
  end

  def my_offers
    @organs = Organ.where(user: current_user)
  end


  private

  def restrict_access
    organ = Organ.find(params[:id])
    if organ.user_id != current_user.id && Order.where(organ_id: organ.id).present?
      redirect_to root_path, alert: "You are not allowed to see this offer"
    end
  end


  def organ_params
    params.require(:organ).permit(:name, :description, :price, :age, :img_url, :robot_type)
  end
end
