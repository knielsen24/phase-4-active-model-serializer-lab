class PostSerializer < ActiveModel::Serializer
	attributes :title, :short_content

	belongs_to :author
	has_many :post_tags

	def short_content
		self.object.content[0...40] + "..."
	end

end
