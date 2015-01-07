require 'rails_helper'

RSpec.describe EmailAddress, :type => :model do
  let(:email_address) do
    EmailAddress.new(address: 'Alice@gmail.com', person_id: 1 ) #this is available to all of our examples
  end

  it 'is valid' do
    expect(email_address).to be_valid
  end

  it 'is invalid' do
  email_address.address = nil
  expect(email_address).to_not be_valid
  end

  it 'must have a reference to a person' do
    email_address.person_id = nil
    expect(email_address).not_to be_valid
  end

end
