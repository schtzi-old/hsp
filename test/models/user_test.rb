require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  test "fields are mandatory" do
    i = 0
    user = User.new(email: "#{i += 1}@mail.com", password: 'Pass1234', last_name: 'Mustermann', birthdate: Date.yesterday, address: "Straße 1", zip_code: 12345, city: "Münster")
    assert_equal false, user.save
    user = User.new(email: "#{i += 1}@mail.com", password: 'Pass1234', first_name: "Max", birthdate: Date.yesterday, address: "Straße 1", zip_code: 12345, city: "Münster")
    assert_equal false, user.save
    user = User.new(email: "#{i += 1}@mail.com", password: 'Pass1234', first_name: "Max", last_name: 'Mustermann', address: "Straße 1", zip_code: 12345, city: "Münster")
    assert_equal false, user.save
    user = User.new(email: "#{i += 1}@mail.com", password: 'Pass1234', first_name: "Max", last_name: 'Mustermann', birthdate: Date.yesterday, zip_code: 12345, city: "Münster")
    assert_equal false, user.save
    user = User.new(email: "#{i += 1}@mail.com", password: 'Pass1234', first_name: "Max", last_name: 'Mustermann', birthdate: Date.yesterday, address: "Straße 1", city: "Münster")
    assert_equal false, user.save
    user = User.new(email: "#{i += 1}@mail.com", password: 'Pass1234', first_name: "Max", last_name: 'Mustermann', birthdate: Date.yesterday, address: "Straße 1", zip_code: 12345)
    assert_equal false, user.save
  end

  test "user has valid birthday" do
    i = 0
    user = User.new(email: "#{i += 1}@mail.com", password: 'Pass1234',first_name: "Max", last_name: 'Mustermann', birthdate: Date.tomorrow, address: "Straße 1", zip_code: 12345, city: "Münster")
    assert_equal false, user.save
  end

  test "user has no valid zip-code" do
    i = 0
    user = User.new(email: "#{i += 1}@mail.com", password: 'Pass1234',first_name: "Max", last_name: 'Mustermann', birthdate: Date.yesterday, address: "Straße 1", zip_code: 1234, city: "Münster")
    assert_equal false, user.save
    user = User.new(email: "#{i += 1}@mail.com", password: 'Pass1234',first_name: "Max", last_name: 'Mustermann', birthdate: Date.yesterday, address: "Straße 1", zip_code: 123565, city: "Münster")
    assert_equal false, user.save
    user = User.new(email: "#{i += 1}@mail.com", password: 'Pass1234',first_name: "Max", last_name: 'Mustermann', birthdate: Date.yesterday, address: "Straße 1", zip_code: '1a234', city: "Münster")
    assert_equal false, user.save
  end
end
