class Post < ActiveRecord::Base
  belongs_to :user
  has_many :refactorings
  attr_accessible :name, :description, :code
end
