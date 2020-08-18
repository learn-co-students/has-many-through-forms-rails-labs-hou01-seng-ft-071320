class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user
  
  def user_attributes=(user_attribute)
    self.user=User.find_or_create_by(user_attribute) 
    end
  end