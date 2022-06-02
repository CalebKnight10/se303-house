class House

  @@phrases = [
    "the house that Jack built.", "the malt that lay in ", "the rat that ate ",
    "the cat that killed ", "the dog that worried ", "the cow with the crumpled horn that tossed ",
    "the maiden all forlorn that milked ", "the man all tattered and torn that kissed ",
    "the priest all shaven and shorn that married ", "the rooster that crowed in the morn that woke "
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
      lyric = @@phrases[9] + phrase(num - 1)
    when 9
      lyric = @@phrases[8] + phrase(num - 1)
    when 8
      lyric = @@phrases[7] + phrase(num - 1)
    when 7
      lyric = @@phrases[6] + phrase(num - 1)
    when 6
      lyric = @@phrases[5] + phrase(num - 1)
    when 5
      lyric = @@phrases[4] + phrase(num - 1)
    when 4
      lyric = @@phrases[3] + phrase(num - 1)
    when 3
      lyric = @@phrases[2] + phrase(num - 1)
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