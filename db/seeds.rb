sports = [
  { name: 'Schach',
    description: 'Schach ist eines der bekanntesten Brettspiele der Welt und die Meisten haben es schon einmal irgendwann kennengelernt und ausprobiert. Sowohl längerfristige Strategie, als auch kurzfristige taktische Manöver gilt es zu finden und richtig umzusetzen, um den gegnerischen König Schachmatt zu setzen.     Ob Sport, Spiel, Wissenschaft oder Kunst, das ?Spiel der Könige? trainiert sehr viele mentale Fähigkeiten: Gedächtnis, Konzentrationsfähigkeit, Vorausdenken, Denkgeschwindigkeit etc. Dennoch ist es uns wichtig, dass der Spaß- und Spielaspekt nicht verloren geht. So wird jedes Training viel gespielt und man lernt schnell tolle Leute kennen.
                  Selbst nach einem langen Uni-Tag bietet Schach eine gute Möglichkeit sein Gehirn auf andere Art und Weise zu benutzen und damit den Kopf frei zu kriegen.
                  In unserem Kurs sind alle Spielstärken, vom Neuling bis zum Vereins-Spieler herzlich willkommen und können individuell trainiert werden.
                  Wenn du Interesse an einer Teilnahme an den deutschen Hochschulmeisterschaften hast, sprich uns gerne direkt an.',
    stamina: 2,
    power: 2,
    effort: 2,
    coordination: 2,
    physical_contact: 2 },
  { name: 'Quidditch',
    description: 'Quidditch ist eine gemischtgeschlechtliche Vollkontaktsportart, bei der maximal 3 Personen eines Genders gleichzeitig auf dem Feld stehen, und die ihren Ursprung in den Harry Potter Büchern hat. Auch wenn der Sport heute fast nichts mehr mit der Vorlage zu tun hat, so sind die Regeln noch sehr ähnlich: Die Chaser versuchen den Quaffel durch die gegnerischen Ringe zu werfen, um zu punkten. Die Beater versuchen sie mit den Bludgern abzuwerfen und nach 20 Minuten kommen die Seeker auf das Feld, um den Schnatz zu fangen und das Spiel somit zu beenden. Dabei müssen alle Spieler eine PVC-Stange zwischen ihren Beinen halten.
                  Quidditch ist eine der jüngsten und am schnellsten wachsenden Sportarten Deutschlands. Die Münster Marauders spielen regelmäßig in der NRW-Liga und nehmen an deutschlandweiten Turnieren teil. Der Deutsche Quidditch Pokal 2022, bei dem deutschlandweit alle Teams antreten können, wurde sehr erfolgreich mit Platz 4 (bei 28 Teams) beendet. Bei der Deutschen Quidditch Meisterschaft 2022, dem Turnier der 20 besten Teams deutschlands, konnte mit dem 9. Platz sogar die Teilnahme am European Quidditch Cup Divison 2 erreicht werden, wodurch die Marauders 2023 erstmals auch auf europäischer Ebene spielen werden.
                  Für einen ersten Eindruck wie Quidditch gespielt wird ein Regel-Video:
                  https://www.youtube.com/watch?v=PhojXgTEs1s',
    stamina: 2,
    power: 2,
    effort: 2,
    coordination: 2,
    physical_contact: 2 },
  { name: 'Rhönrad',
    description: 'Eine außergewöhnliche Sportart.
                  Egal ob du schon Erfahrungen mit Rhönradturnen hast oder es einfach mal ausprobieren möchtest: Bei uns sind Sportbegeisterte immer gerne willkommen!
                  Blutige Anfänger können meist sehr schnell alleine im Rad herumrollen und lernen dann erste Übungsabfolgen.
                  Wer schon länger dabei ist oder früher schon mal Rhönrad geturnt hat, kann an sein Können anknüpfen.
                  Es teilen sich häufig mehrere Teilnehmer ein Rad, sodass ihr meistens nur einen Teil der Trainingszeit im Rad stehen könnt. Zwischendurch ist also genug Zeit für ein Päuschen am Rand, eigenständiges Krafttraining oder auch Vorübungen an anderen Geräten.
                  Wenn du mitmachen möchtest, solltest du Spaß an neuen Bewegungserfahrungen, Mut haben und regelmäßig teilnehmen können.
                  Komm vorbei und du stehst garantiert Kopf!',
    stamina: 2,
    power: 2,
    effort: 2,
    coordination: 2,
    physical_contact: 2 }
]

courses = [
  { name: 'Beginner 101',
    description: 'Great for people that never had contact with this sport',
    start_date: Date.today + 10,
    end_date: Date.today + 55,
    level: 'beginner',
    sport: Sport.last },
  {  name: 'Wow...Intermediate',
    description: "Ok...you already have experience, but didn't master it",
    start_date: Date.today + 12,
    end_date: Date.today + 49,
    level: 'intermediate',
    sport: Sport.last},
  {  name: 'Godmode-level',
    description: 'No noobs!',
    start_date: Date.today + 8,
    end_date: Date.today + 35,
    level: 'advanced',
    sport: Sport.last}
]



puts "Destroying db-content"
Sport.destroy_all
Course.destroy_all
puts "Done"

puts "Creating sports and courses"

sports.each do |sport|
  Sport.create(sport)
  courses.each do |course|
    Course.create(course)
  end
end

puts "Done"
