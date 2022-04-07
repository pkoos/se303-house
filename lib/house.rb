class House
  def line(argument)
    if argument == 1
      result = "This is the house that Jack built.\n"
    elsif argument == 2
      result = "This is the malt that lay in the house that Jack built.\n"
    elsif argument == 3
      result = "This is the rat that ate the malt that lay in the house that Jack built.\n"
    elsif argument == 4
      result = "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif argument == 5
      result = "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif argument == 6
      result = "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif argument == 7
      result = "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif argument == 8
      result = "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif argument == 9
      result = "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif argument == 10
      result = "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif argument == 11
      result = "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    else
      result = "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    end
    result
  end
  def recite
    (1..12).map { |line_num| line(line_num) }.join("\n")
  end
end
