require 'spec_helper'

describe Task do
  it { should validate_presence_of :description }
  it { should belong_to :category }
  it { should have_many :user_stories }
end
