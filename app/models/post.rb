class Post < ActiveRecord::Base
  belongs_to :subject
  mount_uploader :image, PostImageUploader
end
