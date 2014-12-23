class Post < ActiveRecord::Base

	#dragonfly_accessor :image
	# <%= image_tag post.image.thumb('400x200#').url , class: "thumbnail" if post.image_stored? %>
	# <%= f.file_field :image %>
	# <%= image_tag @post.image.thumb('400x200#').url , class: "thumbnail" if @post.image_stored? %>


	acts_as_votable

	belongs_to :user
	has_many :comments

	


	
end
