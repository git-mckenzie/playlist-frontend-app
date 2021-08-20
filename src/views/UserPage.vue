<template>
  <div class="home">
    <h1>CampFyre - Bandcamp Playlist app</h1>
    <h2>All User Playlists</h2>
    <div v-for="playlist in playlists" v-bind:key="playlist.id">
      <router-link :to="`/playlists/${playlist.id}`">
        <!-- <a :href="`/playlists/` + playlist.id" onclick="savePlaylistId();">{{ playlist.playlist_name }}</a> -->
        <button v-on:click="savePlaylistId(playlist)">{{ playlist.playlist_name }}</button>
      </router-link>
      <!-- <router-link :to="`/users/${playlist.user_id}`">
        <h3>{{ playlist.user.user_name }}</h3>
      </router-link> -->
    </div>
    <br />
    <div><router-link to="/playlists/new">Create a New Playlist</router-link></div>
    <router-view />
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
