require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/house'

class RandomHouseTest < Minitest::Test
	def test_line_1
		expected = "This is the house that Jack built.\n"
    assert_equal expected, House.for(RandomHouseVerse, 1)
	end

	def test_line_2
		expected = "This is the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomHouseVerse, 2)
	end
	def test_line_3
		expected = "This is the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomHouseVerse, 3)
	end
	def test_line_4
		expected = "This is the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomHouseVerse, 4)
	end
	def test_line_5
		expected = "This is the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomHouseVerse, 5)
	end
	def test_line_6
		expected = "This is the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomHouseVerse, 6)
	end
	def test_line_7
		expected = "This is the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomHouseVerse, 7)
	end
	def test_line_8
		expected = "This is the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomHouseVerse, 8)
	end
	def test_line_9
		expected = "This is the dog that worried the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomHouseVerse, 9)
	end
	def test_line_10
		expected = "This is the cow with the crumpled horn that tossed the dog that worried the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomHouseVerse, 10)
	end
	def test_line_11
		expected = "This is the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomHouseVerse, 11)
	end
	def test_line_12
		expected = "This is the man all tattered and torn that kissed the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.\n"
    assert_equal expected, House.for(RandomHouseVerse, 12)
	end

	def test_all_the_lines
		expected = <<-TEXT
This is the house that Jack built.

This is the priest all shaven and shorn that married the house that Jack built.

This is the cat that killed the priest all shaven and shorn that married the house that Jack built.

This is the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.

This is the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.

This is the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.

This is the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.

This is the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.

This is the dog that worried the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.

This is the cow with the crumpled horn that tossed the dog that worried the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.

This is the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.

This is the man all tattered and torn that kissed the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the horse and the hound and the horn that belonged to the rat that ate the maiden all forlorn that milked the malt that lay in the rooster that crowed in the morn that woke the cat that killed the priest all shaven and shorn that married the house that Jack built.
		TEXT
		assert_equal expected, House.new(RandomHouseVerse).recite
	end

end