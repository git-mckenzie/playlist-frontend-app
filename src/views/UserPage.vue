<template>
  <div class="user-page">
    <!-- <h1>CampFyre - Bandcamp Playlist app</h1> -->
    <h2>Your Playlists</h2>
    <!-- Playlist Table -->
    <div class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <!-- <div class="card-header">
                  <h4 class="card-title">CampFyre - Universal Playlist app</h4>
                </div> -->
            <div class="card-body">
              <div class="table-responsive">
                <table class="table tablesorter" id="">
                  <thead class="text-primary">
                    <tr>
                      <th class="text-center">Playlist Name</th>
                    </tr>
                  </thead>
                  <tbody>
                    <div v-for="playlist in playlists" v-bind:key="playlist.id">
                      <router-link :to="`/playlists/${playlist.id}`">
                        <tr>
                          <td>
                            <a href="#" onclick="savePlaylistId(playlist)">{{ playlist.playlist_name }}</a>
                          </td>

                          <td>
                            <tr></tr>
                          </td>
                        </tr>
                      </router-link>
                    </div>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Playlist Table -->
    <br />
    <div>
      <button><router-link to="/playlists/new">Create a New Playlist</router-link></button>
    </div>
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
