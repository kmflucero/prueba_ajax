class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = Comment.new(content:params[:comment][:content], user: current_user)
		@post.comments << @comment
		@comment.save
		
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = Comment.find(params[:id])
		@comment.destroy
		
	end

	def edit
			@comment = Comment.find(params[:id])
			@post = Post.find(params[:post_id])
		
	end

	def update
		@comment = Comment.find(params[:id])
		@comment.update(content: params[:comment][:content])
		
	end
end
