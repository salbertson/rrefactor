class Refactoring < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  attr_accessible :description, :code, :user_id, :post_id

  validates_presence_of :user, :post, :description, :code
  validates_length_of :description, :maximum => 1000
  validates_length_of :code, :maximum => 10_000
end
