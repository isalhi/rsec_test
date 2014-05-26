class Comment < ActiveRecord::Base
	validates :message, :presence => true
end
