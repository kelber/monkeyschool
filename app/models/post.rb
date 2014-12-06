class Post < ActiveRecord::Base

	dragonfly_accessor :image, app: :assets

	acts_as_votable

	belongs_to :user
	has_many :comments


	
end
