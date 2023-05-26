require "pry"

class Song

   attr_accessor :name,:artist,:genre

   @@count=0
   @@genres=[]
   @@artists=[]
   
    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre

        @@count+=1
        @@genres<<@genre
        @@artists<<@artist
      

    end

    def Song.count
        @@count
    end

    def Song.genres
       @@genres.uniq

    end

    def Song.artists
        @@artists.uniq
    end

    def Song.genre_count

        genre_hash={}
        
        @@genres.uniq.map do |genre|
                genre_hash[genre]=0
                    @@genres.each do|current|
                        if current==genre
                            genre_hash[genre]+=1
                        end
                    end
        end
            genre_hash
    end

    def Song.artist_count

        artist_hash={}
        
        @@artists.uniq.map do |artist|
                artist_hash[:artist]=0
                    @@artists.each do|current|
                        if current==artist
                            artist_hash[artist]+=1
                        end
                    end
        end
            artist_hash
    end


end

binding.pry
