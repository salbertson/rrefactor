class RefactoringsController < ApplicationController
  def index
    if params[:post_id]
      @post = Post.find(params[:post_id])
      @refactorings = @post.refactorings
    else
      @refactorings = Refactoring.all
    end
  end
  
  def show
    @refactoring = Refactoring.find(params[:id])
  end
  
  def new
    @post = Post.find(params[:post_id])
    @refactoring = @post.refactorings.build
    @refactoring.user = current_user
  end
  
  def create
    @post = Post.find(params[:post_id])
    @refactoring = @post.refactorings.build(params[:refactoring])
    @refactoring.user = current_user

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
