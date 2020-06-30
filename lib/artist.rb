class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    # This instance method receives an instance of a `Song` and associates it belongs to
    # _this_ `Artist` instance.
    def add_song(song)
        song.artist= self
 end
 def songs
    Song.all.select {|song| song.artist == self}
 end
end
