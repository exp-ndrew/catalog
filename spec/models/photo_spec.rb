require 'spec_helper'

describe Photo do
  it { should validate_presence_of :item_id }
  it { should belong_to :item }
end
