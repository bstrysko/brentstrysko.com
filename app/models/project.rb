class Project
	include Mongoid::Document

	auto_increment :_id
	auto_increment :id
	field :name, type: String
	field :url, type: String
	field :start_date, type: Date
	field :end_date, type: Date
	field :blurb, type: String
	field :content, type: String

	validates :name, presence: true
	validates :blurb, presence: true
	validates :content, presence: true 

	belongs_to :image
	has_many :posts
end
