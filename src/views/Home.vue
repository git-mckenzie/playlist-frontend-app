<template>
  <div class="home">
    <h1>CampFyre - Universal Playlist app</h1>
    <p>
      CampFyre is a universal streaming playlist creator, originally focused on Bandcamp, but currently works with any
      streaming URL.
      <br />
      CampFyre is designed to help bands and artists make more money, by making it easier for music fans to discover,
      share and buy new music.
      <br />
      We have no affiliation with that dumb festival.
    </p>
    <h2>All CampFyre Playlists</h2>
    <div v-for="playlist in playlists" v-bind:key="playlist.id">
      <router-link :to="`/playlists/${playlist.id}`">
        <h3>{{ playlist.playlist_name }}</h3>
      </router-link>
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
    this.playlistsIndex();
  },
  methods: {
    playlistsIndex: function () {
      axios.get("/playlists").then((response) => {
        console.log(response.data);
        this.playlists = response.data;
      });
    },
  },
};
</script>
