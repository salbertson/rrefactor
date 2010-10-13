class Post < ActiveRecord::Base
  belongs_to :user
  has_many :refactorings

  validates_presence_of :user, :description, :code
  validates_length_of :description, :maximum => 1000
  validates_length_of :code, :maximum => 10_000

  attr_accessible :description, :code
end
