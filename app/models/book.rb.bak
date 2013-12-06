class Book < ActiveRecord::Base
default_scope -> { order('created_at DESC') }
belongs_to :user
 validates :user_id, presence: true
 validates :isbn, presence: true
 
 # check_length
 
 #def check_length
  #  unless isbn.size == 10 or isbn.size == 13
   #   errors.add(:isbn, "length must be 10 or 13") 
   # end
  #end
end
