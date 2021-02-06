module SongsHelper
    def add_new_song_link
        if @artist
            link_to("Add New Song", new_artist_song_path(@artist))
        else
            link_to("Add New Song", new_song_path)
        end
    end

    def artist_select(song)
        if params[:artist_id] && song.artist
            song.artist_name
            hidden_field_tag("song[artist_id]", song.artist_id)
        else
            select_tag("song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)) 
        end
    end
end
