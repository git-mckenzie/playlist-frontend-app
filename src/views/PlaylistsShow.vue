<template>
  <div class="playlistSongs-index">
    <h1>Songs</h1>
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
    };
  },
  created: function () {
    this.indexPlaylistSongs();
  },
  methods: {
    indexPlaylistSongs: function () {
      axios.get("/songs").then((response) => {
        console.log("songs index", response);
        this.posts = response.data;
      });
    },
  },
};
</script>
