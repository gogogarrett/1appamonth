require 'spec_helper'

describe User do
  it do
    user = User.new(first_name: "Garrett", last_name: "Heinlen")
    expect(user.to_s).to eq "Garrett Heinlen"
  end
end
