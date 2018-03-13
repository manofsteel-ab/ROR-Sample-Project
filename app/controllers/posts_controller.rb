class PostsController < ApplicationController
	def post_params
		params.require(:post).permit! 
		# this will permit anything
	end
	def index
		@posts = Post.all
	end
	def show
		@posts = Post.find(params[:id])
	end
	def new
		@post = Post.new
		@category = Category.all;
	end
	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to posts_path, :notice => "Your Post has been saved" 
		else
			render "new"
		end
	end
	def edit
		
	end
	def update
		
	end
	def destroy
		
	end
end
