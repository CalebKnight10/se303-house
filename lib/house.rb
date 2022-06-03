class House

  def line(num)
    lyrics = Lyrics.new(num)
    "#{lyrics.house_intro} #{lyrics.phrase}\n"
  end

  def recite
    1.upto(12).map{|num| line(num)}.join("\n")
  end
end

class Lyrics

  attr_accessor :num

  @@phrases = [
    "the house that Jack built.", "the malt that lay in ", "the rat that ate ",
    "the cat that killed ", "the dog that worried ", "the cow with the crumpled horn that tossed ",
    "the maiden all forlorn that milked ", "the man all tattered and torn that kissed ",
    "the priest all shaven and shorn that married ", "the rooster that crowed in the morn that woke ",
    "the farmer sowing his corn that kept ", "the horse and the hound and the horn that belonged to "
  ]

  def initialize(num)
    @num = num
  end

  def phrase
    lyric = ""
    for i in num.downto(1) 
      lyric += @@phrases[i-1]
    end
    return lyric
  end

  def house_intro
    "This is"
  end

  def pirate_intro
    "Thar be"
  end
end

class PirateVerse < House

  def line(num)
    lyrics = Lyrics.new(num)
    "#{lyrics.pirate_intro} #{lyrics.phrase}\n"
  end

end

class RandomVerse < House 
  
end












