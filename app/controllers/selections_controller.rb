class SelectionsController < ApplicationController
  def new
    @selection = Selection.new
  end

  def create
  	@selection = current_user.selection.build(selection_params)
  end

  def delete
  end

  def show
  	@selection = Selection.find(params[:id])
  end

  def edit
  end


  private

  def selection_params
    params.require(:selection).permit(:best_picture, :best_actor, :user)
  end
end