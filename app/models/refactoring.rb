class Refactoring < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  attr_accessible :description, :code, :user_id, :post_id

  validates_presence_of :user, :post, :code
end
