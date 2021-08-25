class Song

    
    def set_title(title)
        @song_title = title
    end

    def title
        return @song_title
    end

    def set_artist(artist)
        @song_artist = artist
    end

    def artist
        return @song_artist
    end

    def set_lyrics(lyrics)
        @song_lyrics = lyrics
    end

    def lyrics 
        return @song_lyrics
    end

    def info
        return "The song requested is " + title + "by ," + "and the lyrics are " + lyrics + "."
    end
    
end

song = Song.new
song.set_title("Assimilate")
song.set_artist("Skinny Puppy")
song.set_lyrics"Oil remove shred and tear
Radiation vapor air
It's the fear so unclear
Man in motion going nowhere
In our homes stuck in the face
Spread the word to the populace
Yellow journal, yellow journal
Set the pace, feel the rage
Manifestations of a sort
So insidious off the point
Simple solution, never confusion"

# puts song.title
# puts song.artist
# puts song.lyrics
puts song.info