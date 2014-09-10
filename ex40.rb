 class Song
 
   def initialize(lyrics)
     @lyricsvar = lyrics
   end
   
   def sing_me_a_song()
     @lyricsvar.each {|line| puts line.split(' ')}
     
     end
   end
 
 happy_bday = Song.new(["Happy birthday to you", 
            "I don't want to get sued",
            "So I'll stop right there"])
            
 bulls_on_parade = Song.new(["They rally around the family",
             "With pockets full of shells"])
             
             
 another_song = Song.new(["I would walk 500 miles",
              "and I would walk 500 more"])
              
 moar_songs = Song.new(["stop now", "HAMMERTIME"])
             
 #happy_bday.sing_me_a_song()
 
# bulls_on_parade.sing_me_a_song()
 
 puts '*' * 20
 
 another_song.sing_me_a_song()
 
 moar_songs.sing_me_a_song()
