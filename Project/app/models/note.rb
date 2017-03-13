class Note < ActiveRecord::Base
	mount_uploader :file, CovernoteUploader
	belongs_to :category
end
