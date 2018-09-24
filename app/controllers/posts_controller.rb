class PostsController < ApplicationController

	def index
		@posts = Post.all.order("created_at DESC")
	end

	def create		
	end
	
	def show		
	end

	def edit		
	end

	def update
		
	end

	def destroy		
	end

end
