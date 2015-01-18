class SelectionsController < ApplicationController
  def new
    @selection = Selection.new
  end

  def create
  	@selection = current_user.selections.create(selection_params)

    if @selection.save
      redirect_to user_path(current_user),
        notice: "Oscar picks have been selected!"
    else
      render :new
    end
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