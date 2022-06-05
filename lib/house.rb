class House
	attr_reader :verse, :number
	def initialize(verse = HouseVerse)
		@verse = verse
		@number = number
	end

	def self.for(verse_type, number)
		House.new(verse_type).line(number)
	end

  def line(number)
		verse.new(number).line
  end

  def recite
    (1..12).map { |line_num| line(line_num) }.join("\n")
  end
end

class Verse
	attr_reader :number, :lyrics

	def initialize(number, lyrics=HouseLyrics)
		@number = number
		@lyrics = lyrics
	end

	def line
		result = "#{introduction} "
		lyrics.subject.last(number).zip(lyrics.verb.last(number)).each {
			|subject, verb| result << "the #{subject} that #{verb}"
		}
		result << ".\n"
	end

	def introduction
		raise NoMethodError("Implement method in subclasses")
	end

end

class HouseVerse < Verse
	def introduction
		"This is"
	end
end

class PirateVerse < Verse
	def introduction
		"Thar be"
	end
end

class RandomHouseVerse < HouseVerse
	def initialize(number, lyrics=RandomLyrics)
		super
		@lyrics = RandomLyrics
	end
end

class RandomPirateVerse < PirateVerse
	def initialize(number, lyrics=RandomLyrics)
		super
		@lyrics = RandomLyrics
	end
end

class HouseLyrics
	def self.subject
		[
			"horse and the hound and the horn",
			"farmer sowing his corn",
			"rooster that crowed in the morn",
			"priest all shaven and shorn",
			"man all tattered and torn",
			"maiden all forlorn",
			"cow with the crumpled horn",
			"dog",
			"cat",
			"rat",
			"malt",
			"house"
		]
	end

	def self.verb
		[
			"belonged to ",
			"kept ",
			"woke ",
			"married ",
			"kissed ",
			"milked ",
			"tossed ",
			"worried ",
			"killed ",
			"ate ",
			"lay in ",
			"Jack built"
		]
	end
end

class RandomLyrics
	def self.subject
		[
			"horse and the hound and the horn",
			"farmer sowing his corn",
			"rooster that crowed in the morn",
			"priest all shaven and shorn",
			"man all tattered and torn",
			"maiden all forlorn",
			"cow with the crumpled horn",
			"dog",
			"cat",
			"rat",
			"malt",
			"house"
		].shuffle(random: Random.new(529821882))
	end

	def self.verb
		[
			"belonged to ",
			"kept ",
			"woke ",
			"married ",
			"kissed ",
			"milked ",
			"tossed ",
			"worried ",
			"killed ",
			"ate ",
			"lay in ",
			"Jack built"
		].shuffle(random: Random.new(529821882))
	end
end
