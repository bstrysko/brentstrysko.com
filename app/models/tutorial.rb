class Tutorial
	include Mongoid::Document

	auto_increment :_id
	auto_increment :id
	field :title, type: String
	field :blurb, type: String
	field :content, type: String
	field :posted, type: DateTime, default: ->{DateTime.now}

	validates :title, presence: true
	validates :blurb, presence: true
	validates :content, presence: true
	validates :posted, presence: true

	has_many :posts
end
