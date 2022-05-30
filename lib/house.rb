class House
  def line(argument)

		lyrics = ["the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"]

    case argument
    when 1
      result = "This is the house that Jack built.\n"
    when 2
      result = "This is the malt that lay in the house that Jack built.\n"
    when 3
      result = "This is the rat that ate the malt that lay in the house that Jack built.\n"
    when 4
      result = "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    when 5
      result = "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    when 6
      result = "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    when 7
      result = "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    when 8
      result = "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    when 9
      result = "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    when 10
      result = "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    when 11
      result = "This is #{lyrics.last}"
    else
      result = "This is the horse and the hound and the horn that belonged to #{lyrics.last}"
    end
    result
  end

  def recite
    (1..12).map { |line_num| line(line_num) }.join("\n")
  end
end
