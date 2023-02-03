require "test_helper"

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # course = Course.new(name: "Beginner 1", capacity: 20, start_date: Date.yesterday, end_date: Date.tomorrow, level: 'beginner', sport: Sport.last)

  test "course has mandatory fields" do
    Sport.create!(name: "Test2", description: 'Testdescription', stamina: 2, power: 2, effort: 2, coordination: 2, physical_contact: 2)

    course = Course.new(capacity: 20, start_date: Date.yesterday, end_date: Date.tomorrow, level: 'beginner', sport: Sport.last)
    assert_equal false, course.save
    course = Course.new(name: "Beginner 1", start_date: Date.yesterday, end_date: Date.tomorrow, level: 'beginner', sport: Sport.last)
    assert_equal false, course.save
    course = Course.new(name: "Beginner 1", capacity: 20, end_date: Date.tomorrow, level: 'beginner', sport: Sport.last)
    assert_equal false, course.save
    course = Course.new(name: "Beginner 1", capacity: 20, start_date: Date.yesterday, level: 'beginner', sport: Sport.last)
    assert_equal false, course.save
    course = Course.new(name: "Beginner 1", capacity: 20, start_date: Date.yesterday, end_date: Date.tomorrow, sport: Sport.last)
    assert_equal false, course.save
    course = Course.new(name: "Beginner 1", capacity: 20, start_date: Date.yesterday, end_date: Date.tomorrow, level: 'beginner')
    assert_equal false, course.save
  end

  test "has valid level" do
    Sport.create!(name: "Test2", description: 'Testdescription', stamina: 2, power: 2, effort: 2, coordination: 2, physical_contact: 2)

    course = Course.new(name: "Beginner 1", capacity: 20, start_date: Date.yesterday, end_date: Date.tomorrow, level: 'beginner', sport: Sport.last)
    assert_equal true, course.save
    course = Course.new(name: "Intermediate 1", capacity: 20, start_date: Date.yesterday, end_date: Date.tomorrow, level: 'intermediate', sport: Sport.last)
    assert_equal true, course.save
    course = Course.new(name: "Advanced 1", capacity: 20, start_date: Date.yesterday, end_date: Date.tomorrow, level: 'advanced', sport: Sport.last)
    assert_equal true, course.save

    course = Course.new(name: "Advanced 1", capacity: 20, start_date: Date.yesterday, end_date: Date.tomorrow, level: 'mongo-level', sport: Sport.last)
    assert_equal false, course.save
  end

  test 'start date < end date' do
    Sport.create!(name: "Test2", description: 'Testdescription', stamina: 2, power: 2, effort: 2, coordination: 2, physical_contact: 2)

    course = Course.new(name: "Beginner 1", capacity: 20, start_date: Date.tomorrow, end_date: Date.yesterday, level: 'beginner', sport: Sport.last)
    assert_equal false, course.save
  end

end
