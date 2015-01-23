class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @oscar_selections = @user.selections
  end

  def after_sign_out_path_for
  	redirect_to root_path
	end

end