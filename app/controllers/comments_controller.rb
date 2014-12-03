class CommentsController < ApplicationController

	# Normalmente teria index show edit mas aqui so havera create e destroy
	before_action :authenticate_user!

	

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.new(comment_params)
		@comment.user_id = current_user.id if current_user
		# @comment.post_id = @post.id
		if @comment.save
		redirect_to post_path(@post)
		else
		render 'new'
		end
	end

	
	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
			redirect_to post_path(@post)
	end

	private
		def comment_params 
		params.require(:comment).permit(:body)
		end






end
