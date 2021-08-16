<template>
  <div class="home">
    <h1>All Campfire Playlists</h1>
    <div v-for="playlist in playlists" :key="playlist.id">
      <router-link :to="`/playlists/${playlist.id}`">
        <h2>{{ playlist.playlist_name }}</h2>
      </router-link>
      <!-- <router-link :to="`/users/${playlist.user_id}`">
        <h3>{{ playlist.user.user_name }}</h3>
      </router-link> -->
    </div>
  </div>
</template>

<style></style>

<script>
import axios from "axios";
export default {
  name: "App",
  components: {},
  data: function () {
    return {
      message: "Welcome to Vue.js!",
    };
  },
  created: function () {
    this.playlistsIndex();
  },
  methods: {
    playlistsIndex: function () {
      axios.get("/playlists").then((response) => {
        console.log(response.data);
        this.posts = response.data;
      });
    },
  },
};
</script>
