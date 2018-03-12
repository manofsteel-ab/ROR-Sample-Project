class Post < ApplicationRecord
	def Post
		params.require(:Category).permit(:title, :body, :category_id, :author_id)
	end	
	# attr_accessible :name , :body, :category_id, :author_id
	belongs_to :category
end
