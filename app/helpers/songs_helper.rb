module SongsHelper
    def add_new_song_link
        if @artist
            link_to("Add New Song", new_artist_song_path(@artist))
        else
            link_to("Add New Song", new_song_path)
        end
    end
end
