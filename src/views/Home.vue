<template>
  <div class="home" style="margin-left: 254px">
    <br />
    <h1>CampFyre - Universal Playlist app</h1>
    <div>
      <p>
        CampFyre is a universal streaming playlist creator,
        <br />
        originally focused on Bandcamp,
        <br />
        but currently works with any streaming URL.
        <br />
        <br />
        CampFyre is designed to help bands and artists make more money,
        <br />
        by making it easier for music fans to discover,
        <br />
        share and buy new music.
        <br />
      </p>
    </div>
    <br />
    <h2>Explore the Playlists Below</h2>
    <br />

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
                      <th class="text-center">Playlist Name</th>
                    </tr>
                  </thead>
                  <tbody>
                    <div v-for="playlist in playlists" v-bind:key="playlist.id">
                      <router-link :to="`/playlists/${playlist.id}`">
                        <tr>
                          <td>
                            <p>{{ playlist.playlist_name }}</p>
                          </td>
                          <!-- <td class="text-center">$36,738</td> -->
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
