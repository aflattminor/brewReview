require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { create(:user, admin: true) }
  it "should have a current_user who is an admin" do
    sign_in user
    expect(subject.current_user).to_not eq(nil)
    expect(subject.current_user.admin?).to eq(true)
  end
  it "should not have a current_user" do
    expect(subject.current_user).to eq(nil)
  end
end
