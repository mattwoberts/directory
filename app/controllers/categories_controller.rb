class CategoriesController < ApplicationController

  def index
    @categories = Category.find(:all)
  end
  
  def show
    @category = Category.find(params[:id])
  end
  
  def new
    @category = Category.new
  end
  
  def edit
    @category = Category.find(params[:id])
  end
  
  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:notice] = "Category was sucessfully created."
      redirect_to(@category)
    else
      render :action => "new"
    end
  end
  
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      flash[:notice] = "Category updated"
      redirect_to(@category)
    else
      render :action => :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to(category_url)
  end

end
