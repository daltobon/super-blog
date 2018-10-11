class PostsController < ApplicationController
	before_action :authenticate_user!, :except => [:index, :show,]
	before_action :find_post, only: [:show, :update, :edit, :destroy]

	def index
		@posts = Post.page(params[:page]).order('created_at DESC')		
	end

	def new
		@post = Post.new	
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			flash[:success] = "Publicación creada Exitosamente"
			redirect_to post_path(@post)
		else
			flash[:danger] = "Debes llenar todos los campos"
			render 'new'
		end
	end
	
	def show
		@comment = @post.comments.new
		@comments = @post.comments.order("created_at DESC")
	end		

	def edit
	end

	def update
		if @post.update(post_params)
			flash[:info] = "Tu publicación ha sido actualizada"
			redirect_to post_path(@post)
		else
			flash[:danger] = "Ha ocurrido un error, revisa e intenta de nuevo." 
			render 'edit'
		end
	end	

	def destroy
		@post.destroy
		flash[:danger] = "Tu publicación ha sido borrada"
		redirect_to posts_path
	end

	private

	def post_params
		params.require(:post).permit(:title, :content, :user_id, :image, :slug)
	end

	def find_post
		@post = Post.friendly.find(params[:id])		
	end

end
