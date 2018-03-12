class Category < ApplicationRecord
	def Category
		params.require(:Category).permit(:name)
	end
	# attr_accessible :name
	has_many :post
end
