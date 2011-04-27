class Post < ActiveRecord::Base
  belongs_to :user
  has_many :refactorings

  validates_presence_of :user, :code

  attr_accessible :description, :code
end
