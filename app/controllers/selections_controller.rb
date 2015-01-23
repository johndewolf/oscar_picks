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

  def edit
    @selection = current_user.selections.find(params[:id])
  end

  def update
    @user = current_user
    @selection = current_user.selections.find(params[:id])
      if @selection.update(selection_params)
        redirect_to @user, notice: 'Oscar picks were successfully updated.'
      else
        render action: 'edit'
      end
  end


  private

  def selection_params
    params.require(:selection).permit(:best_picture, :best_actor, :user, :year)
  end
end