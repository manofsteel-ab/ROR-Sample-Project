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
		@posts = Post.find(params[:id])
		@category = Category.all;
	end
	def update
		@posts = Post.find(params[:id])

		if @posts.update_attributes(post_params)
			redirect_to post_path, :notice =>"You post has been updated."
	    else
	    	render "edit"
	    end		
	end
	def destroy
	    @post = Post.find(params[:id])
	    @post.destroy
	    respond_to do |format|
	    	format.html { redirect_to posts_url }
	    	format.json { head :no_content }
	    end
	end
end
