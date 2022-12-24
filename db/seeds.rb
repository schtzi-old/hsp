names = ["Achtsamkeit und Meditation", "Aikido / Aikikai Münster", "Akrobatik",
  "American Football", "Aquafitness", "Ausdauer-Inlineskaten / Speedskating",
  "Auszeit - Die gesunde Viertelstunde","Autogenes Training"]


puts "Destroying db-content"
Sport.destroy_all
puts "Done"

puts "Creating sports"
  names.each do |sport|
    Sport.create(name: sport)
  end
puts "Done"
