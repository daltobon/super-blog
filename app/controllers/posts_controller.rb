class PostsController < ApplicationController

	before_action :find_post, only: [:show]

	def index
		@posts = Post.all.order("created_at DESC")
	end

	def new
		@post = Post.new	
	end

	def createm
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post, notice: "Post created correctly"
		else
			render 'new'
		end
	end
	
	def show
	end

	def edit		
	end

	def update		
	end

	def destroy		
	end

	private

	def post_params
		params.require(:post).permit(:title, :content, :user_id)
	end

	def find_post
		@post = Post.find(params[:id])		
	end
end
