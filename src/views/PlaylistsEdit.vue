<template>
  <div class="playlist-edit">
    <form v-on:submit.prevent="updatePlaylist()">
      <h1>Edit Playlist</h1>
      <ul>
        <li v-for="error in errors" v-bind:key="error">{{ error }}</li>
      </ul>
      <div>
        <h2>{{ currentPlaylistParams.name }}</h2>
      </div>
      <input type="submit" value="Save Changes" />
    </form>
    <!-- <router-link to="/playlist">Back to your playlists</router-link> -->
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      currentPlaylistParams: {},
      errors: [],
      current_user: localStorage.getItem("user_id"),
    };
  },
  created: function () {},
  methods: {
    updatePlayList: function () {
      axios
        .patch(`/playlists/${this.currentPlaylistParams.id}`)
        .then((response) => {
          console.log("update playlist", response);
          this.$router.push(`"/playlists/${this.currentPlaylistParams.id}`);
        })
        .catch((error) => {
          console.log("update playlist error", error.reponse);
          this.errors = error.response.data.errors;
        });
    },
  },
};
</script>
