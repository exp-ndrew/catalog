require 'spec_helper'

describe Item do
  it { should validate_presence_of :name }
  it { should have_many :photos }
end
