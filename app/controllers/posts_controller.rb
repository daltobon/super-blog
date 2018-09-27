class PostsController < ApplicationController
	before_action :authenticate_user!, :except => [:index, :show,]
	before_action :find_post, only: [:show, :update, :edit, :destroy]

	def index
		@posts = Post.all.order("created_at DESC")	
	end

	def new
		@post = Post.new	
	end

	def create
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
		if @post.update(post_params)
			redirect_to @post
		else 
			render 'edit'
		end
	end	

	def destroy
		@post.destroy
		redirect_to posts_path
	end

	private

	def post_params
		params.require(:post).permit(:title, :content, :user_id)
	end

	def find_post
		@post = Post.find(params[:id])		
	end
end
