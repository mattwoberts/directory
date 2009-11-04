class CompaniesController < ApplicationController
  
  def new
    @company = Company.new    
  end
  
  def create
    @company = Company.new(params[:company])
    if @company.save
      flash[:notice] = "Company was sucessfully created."
      redirect_to(@company)
    else
      render :action => "new"
    end
  end
  
  def index
    @companies = Company.all
  end
  
  def show
    @company = Company.find(params[:id])
  end
  
  def edit
    @company = Company.find(params[:id])
  end
  
end
