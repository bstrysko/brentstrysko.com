class Image
  include Mongoid::Document
  auto_increment :_id
	auto_increment :id

  mount_uploader :image, ImageUploader

  validates :image, presence: true
end
