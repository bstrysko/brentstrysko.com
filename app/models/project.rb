class Project < ActiveRecord::Base
	attr_accessor :name, :url, :content

	has_many :posts
end
