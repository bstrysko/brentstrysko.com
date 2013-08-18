class Post < ActiveRecord::Base
	attr_accessor :title, :content, :posted

	validates :title, presence: true
	validates :content, presence: true
	validates :posted, presence: true

	belongs_to :project
	belongs_to :tutorial
end
