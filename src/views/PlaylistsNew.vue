<template>
  <div class="playlists-new">
    <form v-on:submit.prevent="createPlaylist()">
      <h1>Create a New Playlist</h1>
      <ul>
        <li v-for="error in errors" v-bind:key="error">{{ error }}</li>
      </ul>
      <div>
        <label>Playlist Name:</label>
        <input type="text" v-model="newPlaylistParams.playlist_name" />
      </div>
    </form>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      newPlaylistParams: {},
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
  },
};
</script>
