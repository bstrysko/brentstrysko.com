class Tutorial < ActiveRecord::Base
	attr_accessor :title, :content, :posted

	has_many :posts
end
