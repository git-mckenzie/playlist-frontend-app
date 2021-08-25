class Song

    def initialize(title,artist,lyrics)
        @title = title
        @artist = artist
        @lyrics = lyrics
    end
    
    def title=(title)
        @title = title
    end

    def title
        return @title
    end

    def artist=(artist)
        @artist = artist
    end

    def artist
        return @artist
    end

    def lyrics=(lyrics)
        @lyrics = lyrics
    end

    def lyrics 
        return @lyrics
    end

    def info
        return "The song requested is " + title + " by " + artist + ", and the lyrics start: 
        " + lyrics + "...
        "
    end
    
end

song = Song.new("Assimilate","Skinny Puppy","
Oil remove shred and tear
Radiation vapor air
It's the fear so unclear
Man in motion going nowhere
In our homes stuck in the face
Spread the word to the populace
Yellow journal, yellow journal
Set the pace, feel the rage
Manifestations of a sort
So insidious off the point
Simple solution, never confusion")
# song.title=("Assimilate")
# song.artist=("Skinny Puppy")
# song.lyrics="Oil remove shred and tear
# Radiation vapor air
# It's the fear so unclear
# Man in motion going nowhere
# In our homes stuck in the face
# Spread the word to the populace
# Yellow journal, yellow journal
# Set the pace, feel the rage
# Manifestations of a sort
# So insidious off the point
# Simple solution, never confusion"

# puts song.title
# puts song.artist
# puts song.lyrics
puts song.info