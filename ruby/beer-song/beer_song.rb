class BeerSong
VERSION = 2

    def lyrics
        verses(99,0)
    end

    def verse number
        verses number
    end

    def verses (from, to=from)
        song = ""
        verses = []
        (to..from).each {|i| verses << i}
        verses.reverse!.each do |j|
            if j >= 3
                song << "#{j} bottles of beer on the wall, #{j} bottles of beer.\nTake one down and pass it around, #{j-1} bottles of beer on the wall.\n"
            elsif j == 2
                song << "#{j} bottles of beer on the wall, #{j} bottles of beer.\nTake one down and pass it around, #{j-1} bottle of beer on the wall.\n"
            elsif j == 1
                song << "#{j} bottle of beer on the wall, #{j} bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
            else
                song << "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
            end
            song << "\n" unless j == verses.last
        end
        song
    end
end
