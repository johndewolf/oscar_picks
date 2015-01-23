require 'date'
class Selection < ActiveRecord::Base
	  belongs_to :user

	  validates_presence_of :best_picture
	  validates_presence_of :best_actor
    validates :year, uniqueness: {message: "- You already have your Oscar picks for this year"}


end
