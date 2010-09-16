class Post < ActiveRecord::Base
  attr_accessible :name, :description, :code
end
