<template>
  <div class="playlistSongs-index">
    <h1>Songs</h1>
    <h2>{{ songs }}</h2>
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
      songs: [],
      playlist_id: localStorage.getItem("playlist_id"),
    };
  },
  created: function () {
    this.indexPlaylistSongs();
  },
  methods: {
    indexPlaylistSongs: function () {
      var params = { playlist_id: this.playlist_id };
      console.log(this.playlist_id);
      axios.get("/playlistsongs", { params }).then((response) => {
        console.log("index of playlist songs", response);
        this.songs = response.data;
      });
    },
  },
};
</script>
