class User_PicksController < ApplicationController
  def new
    @goal = Goal.new
  end

end