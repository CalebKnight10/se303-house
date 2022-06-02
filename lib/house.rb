class House

  @@phrases = [
    "the house that Jack built.", "the malt that lay in " 
  ]

  def line(num)
      "This is #{phrase(num)}\n"
  end

  def phrase(num)

    lyric = ""

    case num

    when 12
      "the horse and the hound and the horn that belonged to "
      lyric = "the horse and the hound and the horn that belonged to " + phrase(num - 1)
    when 11
      lyric = "the farmer sowing his corn that kept " + phrase(num - 1)
    when 10
      lyric = "the rooster that crowed in the morn that woke " + phrase(num - 1)
    when 9
      lyric = "the priest all shaven and shorn that married " + phrase(num - 1)
    when 8
      lyric = "the man all tattered and torn that kissed " + phrase(num - 1)
    when 7
      lyric = "the maiden all forlorn that milked " + phrase(num - 1)
    when 6
      lyric = "the cow with the crumpled horn that tossed " + phrase(num - 1)
    when 5
      lyric = "the dog that worried " + phrase(num - 1)
    when 4
      lyric = "the cat that killed " + phrase(num - 1)
    when 3
      lyric = "the rat that ate " + phrase(num - 1)
    when 2
      lyric = @@phrases[1] + phrase(num - 1)
    when 1
      lyric = @@phrases[0]
    end
    return lyric
  end

  def recite
    1.upto(12).map{|num| line(num)}.join("\n")
  end
end