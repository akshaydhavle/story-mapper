require 'spec_helper'

describe UserStory do
  it { should validate_presence_of :text }
  it { should belong_to :task }
end
