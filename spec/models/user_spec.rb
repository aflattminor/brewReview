require 'rails_helper'

describe User do

  it { should have_valid(:email).when("joe@gmail.com" , "another@gmail.com") }
  it { should_not have_valid(:email).when(nil, '', 'urser', 'urseratcom', 'users.com') }

it 'has a matching password confirmation for password' do
  user = User.new
  user.password = "password"
  user.password_confirmation = "diffpassword"

  expect(user).to_not be_valid
  expect(user.errors[:password_confirmation]).to_not be_blank
  end


end

describe "#admin?" do
  it "is not an admin if the role is not admin" do
    user = FactoryGirl.create(:user)
    expect(user.admin?).to eq(false)
  end

  it "is an admin if the role is admin" do
    user = FactoryGirl.create(:user, admin: true)
    expect(user.admin?).to eq(true)
  end
end
