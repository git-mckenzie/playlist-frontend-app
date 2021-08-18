<template>
  <div class="home">
    <h1>CampFyre - Bandcamp Playlist app</h1>
    <h2>All User Playlists</h2>
    <div v-for="playlist in playlists" v-bind:key="playlist.id">
      <router-link :to="`/playlists/${playlist.id}`">
        <button v-on:click="savePlaylistId(playlist)">{{ playlist.playlist_name }}</button>
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
      playlists: [],
    };
  },
  created: function () {
    this.playlistsUserIndex();
  },
  methods: {
    playlistsUserIndex: function () {
      axios.get("/playlists/userplaylists").then((response) => {
        console.log(response.data);
        this.playlists = response.data;
      });
    },
    savePlaylistId: function (playlist) {
      localStorage.setItem("playlist_id", playlist.id);
    },
  },
};
</script>
