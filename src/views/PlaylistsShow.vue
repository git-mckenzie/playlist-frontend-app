<template>
  <div class="playlists-show">
    <h2>{{ playlist }}</h2>
    <h3 v-for="song in songs" v-bind:key="song.id">
      <!-- <a :href="`{${song.song_url}}`"> -->
      <a :href="song.song.song_url">
        {{ song.song.song_name }}
      </a>
      | {{ song.song.artist_name }} | {{ song.song.album_name }}
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
      playlist: "",
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
      // var params = { playlist_id: this.playlist_id };
      // console.log(this.playlist_id);
      axios.get(`/playlistsongs/${this.$route.params.id}`).then((response) => {
        // console.log("index of playlist songs", response.data);
        this.songs = response.data;
        console.log("actual songs", this.songs);
      });
    },
    getPlaylistName: function () {
      axios.get("/playlists/" + this.$route.params.id).then((response) => {
        // console.log("playlist name", response);
        this.playlist = response.data.playlist_name;
        console.log(this.playlist);
      });
    },
  },
};
</script>
