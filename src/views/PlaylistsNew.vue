<template>
  <div class="playlists-new">
    <form
      v-on:submit.prevent="
        createPlaylist();
        addSongtoPlaylist();
      "
    >
      <h1>Create a New Playlist</h1>
      <ul>
        <li v-for="error in errors" v-bind:key="error">{{ error }}</li>
      </ul>
      <div>
        <label>Playlist Name:</label>
        <input type="text" v-model="newPlaylistParams.playlist_name" />
      </div>
      <div>
        <label>Song Name:</label>
        <input type="text" v-model="newSongParams.song_name" />
        <label>Artist Name:</label>
        <input type="text" v-model="newSongParams.artist_name" />
        <label>Song URL:</label>
        <input type="text" v-model="newSongParams.song_url" />
      </div>
      <input type="submit" value="Create" />
    </form>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      newPlaylistParams: {},
      newSongParams: {},
      errors: [],
    };
  },
  created: function () {},
  methods: {
    createPlaylist: function () {
      axios
        .post("/playlists", this.newPlaylistParams)
        .then((response) => {
          console.log("create playlist", response);
          this.$router.push("/playlists");
        })
        .catch((error) => {
          console.log("create playlists error", error.response);
          this.errors = error.response.data.errors;
        });
    },
    addSongtoPlaylist: function () {
      axios
        .post("/songs", this.newSongParams)
        .then((response) => {
          console.log("add song", response);
          this.$router.push("/songs");
        })
        .catch((error) => {
          console.log("add song error", error.response);
          this.errors = error.response.data.errors;
        });
    },
  },
};
</script>
