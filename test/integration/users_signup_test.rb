require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup infomation" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: "",
                                         password: "foo",
                                         password_confirmation: "bar" } }
    end
    assert_template 'users/new'
  end
  # test "the truth" do
  #   assert true
  # end
end
