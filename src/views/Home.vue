<template>
  <div class="home">
    <br />
    <h1>CampFyre - Universal Playlist app</h1>
    <br />
    <p>
      CampFyre is a universal streaming playlist creator, originally focused on Bandcamp, but currently works with any
      streaming URL.
      <br />
      CampFyre is designed to help bands and artists make more money, by making it easier for music fans to discover,
      share and buy new music.
      <br />
      We have no affiliation with that dumb festival.
    </p>
    <br />
    <h2>Explore the Playlists Below</h2>
    <br />
    <div v-for="playlist in playlists" v-bind:key="playlist.id">
      <router-link :to="`/playlists/${playlist.id}`">
        <!-- <h3>{{ playlist.playlist_name }}</h3> -->
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
                          <!-- <th class="text-center">Playlist Name</th> -->
                          <!-- <th>Country</th>
                          <th>City</th>
                          <th class="text-center">Salary</th> -->
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>
                            <h4>{{ playlist.playlist_name }}</h4>
                          </td>
                          <!-- <td class="text-center">$36,738</td> -->
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- End Playlist Table -->
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
