<template>
  <div class="playlists-show" style="margin-left: 254px">
    <!-- <h1>CampFyre - Universal Playlist app</h1> -->
    <br />
    <h2>{{ playlist_name }}</h2>
    <h3 v-for="song in songs" v-bind:key="song.id">
      <!-- <a :href="`{${song.song_url}}`"> -->
      <a :href="song.song.song_url">
        {{ song.song.song_name }}
      </a>
      - {{ song.song.artist_name }} - {{ song.song.album_name }}
    </h3>
    <div>
      <router-link v-bind:to="`/playlists/${playlist_id}/edit`">
        <button>Edit playlist</button>
      </router-link>
    </div>
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
      // errors: [],
      playlist_name: "",
      songs: [],
      playlist_id: 0,
    };
  },
  created: function () {
    this.indexPlaylistSongs();
    this.getPlaylistName();
  },
  methods: {
    indexPlaylistSongs: function () {
      // var params = { playlist_id: this.playlist_id };
      // console.log(this.playlist_id);
      axios.get(`/playlistsongs/${this.$route.params.id}`).then((response) => {
        // console.log("index of playlist songs", response.data);
        this.songs = response.data;
        console.log("actual songs", this.songs);
        console.log("playlist id", this.playlist_id);
      });
    },
    getPlaylistName: function () {
      axios.get("/playlists/" + this.$route.params.id).then((response) => {
        // console.log("playlist name", response);
        this.playlist_name = response.data.playlist_name;
        this.playlist_id = response.data.id;

        console.log(this.playlist_name);
        console.log("responses", response.data);
        console.log(this.playlist_id);
      });
    },
  },
};
</script>
