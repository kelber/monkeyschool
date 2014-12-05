class Post < ActiveRecord::Base

	dragonfly_accessor :image

	acts_as_votable

	belongs_to :user
	has_many :comments


	
end
