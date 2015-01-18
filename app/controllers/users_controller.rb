class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @oscar_selections = @user.selections
  end

end