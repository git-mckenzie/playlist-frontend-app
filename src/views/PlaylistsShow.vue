<template>
  <div class="playlists-show">
    <h2>{{ playlist.playlist_name }}</h2>
    <h3 v-for="song in songs" v-bind:key="song.id">
      {{ song.song_name }} | {{ song.artist_name }} | {{ song.album_name }} | {{ song.song_url }}
    </h3>
  </div>
</template>

<style>
.selected {
  color: white;
  background-color: aqua;
  transition: background-color 1s ease;
}
body {
  text-align: center;
}
</style>

<script>
import axios from "axios";
export default {
  data: function () {
    return {
      // errors: [],
      playlist: {},
      songs: [],
      playlist_id: localStorage.getItem("playlist_id"),
    };
  },
  created: function () {
    this.indexPlaylistSongs();
    this.getPlaylistName();
  },
  methods: {
    indexPlaylistSongs: function () {
      var params = { playlist_id: this.playlist_id };
      console.log(this.playlist_id);
      axios.get("/playlistsongs", { params }).then((response) => {
        console.log("index of playlist songs", response);
        this.songs = response.data.map((item) => item.song);
        console.log(this.songs);
      });
    },
    getPlaylistName: function () {
      axios.get("/playlists/" + this.playlist_id).then((response) => {
        console.log("playlist name", response);
        this.playlist = response.data;
      });
    },
  },
};
</script>
