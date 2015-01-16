class Selection < ActiveRecord::Base
	  belongs_to :user

	  validates_presence_of :best_picture
	  validates_presence_of :best_actor
end
