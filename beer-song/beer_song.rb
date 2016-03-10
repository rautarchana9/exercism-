class BeerSong
VERSION = 2
  def verse(count)
    if count == 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n" 
    elsif count == 1 
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif count == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
    "%d bottles of beer on the wall, %d bottles of beer.\n" \
      "Take one down and pass it around, %d bottles of beer on the wall.\n"  %[count, count, count - 1] 
    end
  end

  def verses(num2, num1)
    num2.downto(num1).map { |num| verse(num) }.join("\n")
  end
  def lyrics
    verses(99,0)
  end
end
