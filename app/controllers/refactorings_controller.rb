class RefactoringsController < ApplicationController
  def index
    @refactorings = Refactoring.all
  end
  
  def show
    @refactoring = Refactoring.find(params[:id])
  end
  
  def new
    @refactoring = Refactoring.new
  end
  
  def create
    @refactoring = Refactoring.new(params[:refactoring])
    if @refactoring.save
      flash[:notice] = "Successfully created refactoring."
      redirect_to @refactoring
    else
      render :action => 'new'
    end
  end
  
  def edit
    @refactoring = Refactoring.find(params[:id])
  end
  
  def update
    @refactoring = Refactoring.find(params[:id])
    if @refactoring.update_attributes(params[:refactoring])
      flash[:notice] = "Successfully updated refactoring."
      redirect_to @refactoring
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @refactoring = Refactoring.find(params[:id])
    @refactoring.destroy
    flash[:notice] = "Successfully destroyed refactoring."
    redirect_to refactorings_url
  end
end
