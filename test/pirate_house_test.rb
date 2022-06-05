require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/house'

class PirateHouseTest < Minitest::Test
	def test_line_1
		expected = "Thar be the house that Jack built.\n"
    assert_equal expected, House.for(PirateVerse, 1)
	end

	def test_line_2
		expected = "Thar be the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.for(PirateVerse, 2)
	end
	def test_line_3
		expected = "Thar be the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.for(PirateVerse, 3)
	end
	def test_line_4
		expected = "Thar be the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.for(PirateVerse, 4)
	end
	def test_line_5
		expected = "Thar be the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.for(PirateVerse, 5)
	end
	def test_line_6
		expected = "Thar be the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.for(PirateVerse, 6)
	end
	def test_line_7
		expected = "Thar be the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.for(PirateVerse, 7)
	end
	def test_line_8
		expected = "Thar be the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.for(PirateVerse, 8)
	end
	def test_line_9
		expected = "Thar be the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.for(PirateVerse, 9)
	end
	def test_line_10
		expected = "Thar be the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.for(PirateVerse, 10)
	end
	def test_line_11
		expected = "Thar be the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.for(PirateVerse, 11)
	end
	def test_line_12
		expected = "Thar be the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.for(PirateVerse, 12)
	end
	def test_all_the_lines
		expected = <<-TEXT
Thar be the house that Jack built.

Thar be the malt that lay in the house that Jack built.

Thar be the rat that ate the malt that lay in the house that Jack built.

Thar be the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
				TEXT
				assert_equal expected, House.new(PirateVerse).recite
	end
end