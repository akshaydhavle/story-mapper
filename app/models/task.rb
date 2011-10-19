class Task < ActiveRecord::Base
  belongs_to :category
  has_many :user_stories
  
  validates_presence_of :description
end
