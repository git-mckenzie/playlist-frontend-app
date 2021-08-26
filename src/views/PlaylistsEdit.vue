<template>
  <div class="playlists-edit" style="margin-left: 254px">
    <form v-on:submit.prevent="updatePlaylist()">
      <br />
      <h1>Edit Playlist</h1>
      <ul>
        <li v-for="error in errors" v-bind:key="error">{{ error }}</li>
      </ul>
      <div>
        <h2>{{ currentPlaylistParams.playlist_name }}</h2>
      </div>
      <label>Playlist Name:</label>
      <input type="text" v-model="currentPlaylistParams.playlist_name" />
      <!-- <label>Song Name:</label>
      <input type="text" v-model="currentPlaylistParams.id.song" /> -->
      <input type="submit" value="Save Changes" />
      <br />
      <br />

      <button v-on:click="destroyPlaylist()">Delete Playlist</button>
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
      playlist: {},
      // current_user: localStorage.getItem("user_id"),
    };
  },
  created: function () {
    axios.get(`/playlists/${this.$route.params.id}`).then((response) => {
      console.log("playlist info", response.data);
      this.currentPlaylistParams = response.data;
    });
  },
  methods: {
    updatePlaylist: function () {
      axios.patch(`/playlists/${this.$route.params.id}`, this.currentPlaylistParams).then((response) => {
        console.log(response.data);
        this.$router.push(`/playlists/${this.$route.params.id}`);
      });
    },
    destroyPlaylist: function () {
      axios.delete(`/playlists/${this.$route.params.id}`).then((response) => {
        console.log("playlist destroyed", response.data);
        this.$router.push("/userpage");
      });
    },
  },
};
</script>
