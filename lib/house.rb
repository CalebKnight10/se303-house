class House

  def line(num)
    case num
    when 1
      "This is the house that Jack built.\n"
    when 2
      "This is the malt that lay in the house that Jack built.\n"
    when 3
      "This is the rat that ate the malt that lay in the house that Jack built.\n"
    when 4
      "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    when 5
      "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    when 6
      "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    when 7
      "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    else
      "This is #{phrase(num)}the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    end
  end

  def phrase(num)
    lyric = ""
    if num == 12
      "the horse and the hound and the horn that belonged to "
      lyric = "the horse and the hound and the horn that belonged to " + phrase(num - 1)
    elsif num == 11
      lyric = "the farmer sowing his corn that kept " + phrase(num - 1)
    elsif num == 10
      lyric = "the rooster that crowed in the morn that woke " + phrase(num - 1)
    elsif num == 9
      lyric = "the priest all shaven and shorn that married " + phrase(num - 1)
    elsif num == 8
      lyric = "the man all tattered and torn that kissed " + phrase(num - 1)
    end
    return lyric
  end

  def recite
    1.upto(12).map{|numb| line(numb)}.join("\n")
  end
end