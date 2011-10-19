require 'spec_helper'

describe Project do
  it { should validate_presence_of :name }
  it { should have_many :categories }
end
