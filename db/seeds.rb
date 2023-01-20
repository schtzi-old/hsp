names = ["Ski und Snowboard", "Fußball", 'Triathlon', "Rennrad"]
sports = {
  'Ski und Snowboard' => "Bester Sport der Welt und dementsprechend sollte jeder diese Sportart buchen - achja, ich spreche von Ski",
  'Fußball' => 'Deutschlands populärster Sport'
}


puts "Destroying db-content"
Sport.destroy_all
puts "Done"

puts "Creating sports"
  names.each do |sport|
    Sport.create(name: sport)
  end
puts "Done"
