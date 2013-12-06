class Titles < ActiveRecord::Base
	validates :isbn, presence: true
end
