class BusinessesController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @business = @category.businesses.new
  end
  def create
    @category = Category.find(params[:category_id])
    @business = @category.businesses.new(business_params)
    if @business.save
      redirect_to category_path(@business.category)
    else
      render :new
    end
  end
  def edit
    @category = Category.find(params[:category_id])
    @business = @category.businesses.find(params[:id])
    render :edit
  end
  def update
    @category = Category.find(params[:category_id])
    @business = @category.businesses.find(params[:id])
    if @business.update(business_params)
      redirect_to category_path(@business.category)
    else
      render :edit
    end
  end
  def destroy
    @category = Category.find(params[:category_id])
    @business = @category.businesses.find(params[:id])
    @business.destroy
    redirect_to category_path(@business.category)
  end

  private
    def business_params
      params.require(:business).permit(:name, :address, :phone, :website, :operational_hours)
    end
end
