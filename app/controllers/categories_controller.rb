class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render :index
  end
  def show
    @category = Category.find(params[:id])
    render :show
  end
  def new
    @category = Category.new
    render :new
  end
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render :new
    end
  end
  def edit
    @category = Category.find(params[:id])
    render :edit
  end
  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to categories_path
    else
      render :edit
    end
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
