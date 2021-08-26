<template>
  <div class="playlists-new" style="margin-left: 254px">
    <form
      v-on:submit.prevent="
        createPlaylist();
        newSong();
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
      <div>
        <label>Song Name:</label>
        <input type="text" v-model="newSongParams.song_name" />
        <label>Artist Name:</label>
        <input type="text" v-model="newSongParams.artist_name" />
        <label>Song URL:</label>
        <input type="text" v-model="newSongParams.song_url" />
      </div>
      <div>
        <label>Song Name:</label>
        <input type="text" v-model="newSongParams.song_name" />
        <label>Artist Name:</label>
        <input type="text" v-model="newSongParams.artist_name" />
        <label>Song URL:</label>
        <input type="text" v-model="newSongParams.song_url" />
      </div>
      <input type="submit" value="Save Playlist and Songs" />
    </form>
    <button v-on:click="addSongToPlaylist()">Create Playlist</button>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      newPlaylistParams: {},
      newSongParams: {},
      newPlaylistSongParams: {},
      playlist_id: 0,
      song_id: 0,
      playlist: {},
      song: {},
      errors: [],
    };
  },
  created: function () {},
  methods: {
    createPlaylist: function () {
      axios
        .post("/playlists", this.newPlaylistParams)
        .then(() => {
          // this.$router.push("/userpage");
        })
        .catch((error) => {
          console.log("create playlist error", error.response);
          this.errors = error.response.data.errors;
        });
      this.getLastPlaylist();
    },
    newSong: function () {
      axios
        .post("/songs", this.newSongParams)
        .then(() => {
          // this.$router.push("/songs");
        })
        .catch((error) => {
          console.log("new song error", error.response);
          this.errors = error.response.data.errors;
        });
      this.getLastSong();
    },
    getLastPlaylist: function () {
      console.log("getting last playlist");
      axios
        .get("/lastplaylist")
        .then((response) => {
          this.playlist_id = response.data.id;
          console.log("playlist to join", this.playlist_id);
        })
        .catch((error) => {
          console.log("get last playlist error", error.response);
          this.errors = error.response.data.errors;
        });
    },
    getLastSong: function () {
      console.log("getting last song");
      axios
        .get("/lastsong")
        .then((response) => {
          this.song_id = response.data.id;
          console.log("song to join", this.song_id);
        })
        .catch((error) => {
          console.log("get last song error", error.response);
          this.errors = error.response.data.errors;
        });
    },
    addSongToPlaylist: function () {
      var params = { playlist_id: this.playlist_id, song_id: this.song_id };
      axios
        .post("/playlistsongs", params)
        .then(() => {
          console.log(params);
          // this.$router.push("/playlistsongs");
          this.$router.push("/userpage");
        })
        .catch((error) => {
          console.log("add song to playlist error", error.response);
          this.errors = error.response.data.errors;
        });
    },
  },
};
</script>
