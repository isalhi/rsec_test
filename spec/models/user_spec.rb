require 'spec_helper'

describe User do
  it 'is not valid without a name' do
  user = User.new
  user.should_not be_valid
  end
end
   
