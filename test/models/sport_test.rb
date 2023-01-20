require "test_helper"

class SportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'sport has mandatory fields' do
    sport = Sport.new(description: 'Testdescription', stamina: 2, power: 2, effort: 2, coordination: 2, physical_contact: 2)
    assert_equal false, sport.save
    sport = Sport.new(name: 'Testname', stamina: 2, power: 2, effort: 2, coordination: 2, physical_contact: 2)
    assert_equal false, sport.save
    sport = Sport.new(name: 'Testname', description: 'Testdescription', power: 2, effort: 2, coordination: 2, physical_contact: 2)
    assert_equal false, sport.save
    sport = Sport.new(name: 'Testname', description: 'Testdescription', stamina: 2, effort: 2, coordination: 2, physical_contact: 2)
    assert_equal false, sport.save
    sport = Sport.new(name: 'Testname', description: 'Testdescription', stamina: 2, power: 2, coordination: 2, physical_contact: 2)
    assert_equal false, sport.save
    sport = Sport.new(name: 'Testname', description: 'Testdescription', stamina: 2, power: 2, effort: 2, physical_contact: 2)
    assert_equal false, sport.save
    sport = Sport.new(name: 'Testname', description: 'Testdescription', stamina: 2, power: 2, effort: 2, coordination: 2)
    assert_equal false, sport.save
  end

  test 'attributes have valid values' do
    # invalid stamina
    sport = Sport.new(name: 'Test2', description: 'Testdescription', stamina: 0, power: 2, effort: 2, coordination: 2, physical_contact: 2)
    assert_equal false, sport.save
    sport = Sport.new(name: 'Test2', description: 'Testdescription', stamina: 6, power: 2, effort: 2, coordination: 2, physical_contact: 2)
    assert_equal false, sport.save
    # invalid power
    sport = Sport.new(name: 'Test2', description: 'Testdescription', stamina: 2, power: 6, effort: 2, coordination: 2, physical_contact: 2)
    assert_equal false, sport.save
    sport = Sport.new(name: 'Test2', description: 'Testdescription', stamina: 2, power: 0, effort: 2, coordination: 2, physical_contact: 2)
    assert_equal false, sport.save
    # invalid effort
    sport = Sport.new(name: 'Test2', description: 'Testdescription', stamina: 0, power: 2, effort: 6, coordination: 2, physical_contact: 2)
    assert_equal false, sport.save
    sport = Sport.new(name: 'Test2', description: 'Testdescription', stamina: 6, power: 2, effort: 0, coordination: 2, physical_contact: 2)
    assert_equal false, sport.save
    # invalid coordinati
    sport = Sport.new(name: 'Test2', description: 'Testdescription', stamina: 0, power: 2, effort: 2, coordination: 6, physical_contact: 2)
    assert_equal false, sport.save
    sport = Sport.new(name: 'Test2', description: 'Testdescription', stamina: 6, power: 2, effort: 2, coordination: 0, physical_contact: 2)
    assert_equal false, sport.save
    # invalid physical_c
    sport = Sport.new(name: 'Test2', description: 'Testdescription', stamina: 0, power: 2, effort: 2, coordination: 2, physical_contact: 6)
    assert_equal false, sport.save
    sport = Sport.new(name: 'Test2', description: 'Testdescription', stamina: 6, power: 2, effort: 2, coordination: 2, physical_contact: 0)
    assert_equal false, sport.save
  end

  test 'name is unique' do
    Sport.create(name: 'Test1', description: 'Testdescription', stamina: 2, power: 2, effort: 2, coordination: 2, physical_contact: 2)
    sport = Sport.new(name: 'Test1', description: 'Testdescription', stamina: 0, power: 2, effort: 6, coordination: 2, physical_contact: 2)
    assert_equal false, sport.save
  end

  test 'description is not > 1000 characters' do
    sport = Sport.new(name: 'Test1', description: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Na', stamina: 0, power: 2, effort: 6, coordination: 2, physical_contact: 2)
    assert_equal false, sport.save
  end

end
