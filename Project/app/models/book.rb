class Book < ActiveRecord::Base
	mount_uploader :cover, CoverUploader

	has_many :comments

	belongs_to :category
	belongs_to :subject
	belongs_to :user

  def category_branch
  	category.try(:branch)
  end	

  def category_branch=(branch)
  	self.category = Category.find_or_create_by_branch(branch) if branch.present?
  end
end
