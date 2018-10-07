class CommentsController < ApplicationController
	before_action :authenticate_user!

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			flash[:success] = "¡Bien hecho!"
		else
			flash[:danger] = "Debes llenar todos los campos"
		end

		if comment_params[:commentable_type] == 'Post'
			redirect_to post_path(comment_params[:commentable_id])
		end
	end
	
	private 
		def comment_params
			params.require(:comment).permit(:commentable_type, :commentable_id, :body, :user_id)
		end


end