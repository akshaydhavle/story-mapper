class UserStory < ActiveRecord::Base
  belongs_to :task
  
  validates_presence_of :text
end
