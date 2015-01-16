class Selection < ActiveRecord::Base
	  belongs_to :user

	  validates_presence_of :best_pictures
	  validates_presence_of :best_actor
end
