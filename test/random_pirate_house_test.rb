require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/house'

class PirateRandomHouseTest < Minitest::Test
	def test_line_1
		expected = "Thar be the house that Jack built.\n"
    assert_equal expected, House.for(RandomPirateVerse, 1)
	end

	def test_line_2
		expected = "Thar be the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomPirateVerse, 2)
	end
	def test_line_3
		expected = "Thar be the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomPirateVerse, 3)
	end
	def test_line_4
		expected = "Thar be the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomPirateVerse, 4)
	end
	def test_line_5
		expected = "Thar be the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomPirateVerse, 5)
	end
	def test_line_6
		expected = "Thar be the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomPirateVerse, 6)
	end
	def test_line_7
		expected = "Thar be the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomPirateVerse, 7)
	end
	def test_line_8
		expected = "Thar be the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomPirateVerse, 8)
	end
	def test_line_9
		expected = "Thar be the dog that worried the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomPirateVerse, 9)
	end
	def test_line_10
		expected = "Thar be the cow with the crumpled horn that tossed the dog that worried the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomPirateVerse, 10)
	end
	def test_line_11
		expected = "Thar be the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomPirateVerse, 11)
	end
	def test_line_12
		expected = "Thar be the man all tattered and torn that kissed the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomPirateVerse, 12)
	end

	def test_all_the_lines
		expected = <<-TEXT
Thar be the house that Jack built.

Thar be the priest all shaven and shorn that married the house that Jack built.

Thar be the cat that killed the priest all shaven and shorn that married the house that Jack built.

Thar be the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.

Thar be the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.

Thar be the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.

Thar be the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.

Thar be the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.

Thar be the dog that worried the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.

Thar be the cow with the crumpled horn that tossed the dog that worried the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.

Thar be the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.

Thar be the man all tattered and torn that kissed the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.
		TEXT
		assert_equal expected, House.new(RandomPirateVerse).recite
	end
end