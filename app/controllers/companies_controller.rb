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
  
  def update
    @company = Company.find(params[:id])
    if @company.update_attributes(params[:company])
      flash[:notice] = "Company updated"
      redirect_to(@company)
    else
      render :action => :edit
    end
  end
  
  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to(companies_url)
  end
    
end
