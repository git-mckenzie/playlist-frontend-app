<template>
  <div id="app">
    <div class="wrapper">
      <div class="sidebar">
        <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red"
    -->
        <div class="sidebar-wrapper">
          <div class="logo">
            <a href="javascript:void(0)" class="simple-text logo-mini"></a>
            <a href="javascript:void(0)" class="simple-text logo-normal">CampFyre</a>
          </div>
          <ul class="nav">
            <li>
              <router-link to="/">
                <!-- <a href="./"> -->
                <i class="tim-icons icon-sound-wave"></i>
                <p>Home</p>
                <!-- </a> -->
              </router-link>
            </li>
            <li>
              <router-link v-if="!isLoggedIn()" to="/login">
                <!-- <a href="./icons.html">
                <i class="tim-icons icon-atom"></i> -->
                <p>Login</p>
                <!-- </a> -->
              </router-link>
            </li>
            <li>
              <router-link v-if="!isLoggedIn()" to="/signup">
                <p>Signup</p>
                <p></p>
              </router-link>
              <!-- <a href="./map.html">
                <i class="tim-icons icon-pin"></i>
                <p>Maps</p>
              </a> -->
            </li>
            <li>
              <router-link v-if="isLoggedIn()" to="/userpage">
                <i class="tim-icons icon-headphones"></i>
                <p>User Page</p>
                <p></p>
              </router-link>
              <!-- <a href="./notifications.html">
                <i class="tim-icons icon-bell-55"></i>
                <p>Notifications</p>
              </a> -->
            </li>
            <!-- <li>
              <a href="./user.html">
                <i class="tim-icons icon-single-02"></i>
                <p>User Profile</p>
              </a>
            </li> -->
            <!-- <li class="active">
              <a href="./tables.html">
                <i class="tim-icons icon-puzzle-10"></i>
                <p>Table List</p>
              </a>
            </li> -->
            <!-- <li>
              <a href="./typography.html">
                <i class="tim-icons icon-align-center"></i>
                <p>Typography</p>
              </a>
            </li> -->
            <!-- <li>
              <a href="./rtl.html">
                <i class="tim-icons icon-world"></i>
                <p>RTL Support</p>
              </a>
            </li> -->
            <li class="active-pro">
              <router-link v-if="isLoggedIn()" to="/logout">
                <!-- <a href="./upgrade.html"> -->
                <i class="tim-icons icon-button-power"></i>
                <p>Logout</p>
                <!-- </a> -->
              </router-link>
            </li>
          </ul>
        </div>
      </div>
      <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-absolute navbar-transparent">
          <div class="container-fluid">
            <div class="navbar-wrapper">
              <div class="navbar-toggle d-inline">
                <button type="button" class="navbar-toggler">
                  <span class="navbar-toggler-bar bar1"></span>
                  <span class="navbar-toggler-bar bar2"></span>
                  <span class="navbar-toggler-bar bar3"></span>
                </button>
              </div>
              <!-- <a class="navbar-brand" href="javascript:void(0)">CampFyre - Universal Playlist Creator</a> -->
            </div>
            <button
              class="navbar-toggler"
              type="button"
              data-toggle="collapse"
              data-target="#navigation"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span class="navbar-toggler-bar navbar-kebab"></span>
              <span class="navbar-toggler-bar navbar-kebab"></span>
              <span class="navbar-toggler-bar navbar-kebab"></span>
            </button>
            <div class="collapse navbar-collapse" id="navigation">
              <ul class="navbar-nav ml-auto">
                <li class="search-bar input-group">
                  <button class="btn btn-link" id="search-button" data-toggle="modal" data-target="#searchModal">
                    <i class="tim-icons icon-zoom-split"></i>
                    <span class="d-lg-none d-md-block">Search</span>
                  </button>
                </li>
                <!-- <li class="dropdown nav-item">
                  <a href="javascript:void(0)" class="dropdown-toggle nav-link" data-toggle="dropdown">
                    <div class="notification d-none d-lg-block d-xl-block"></div>
                    <i class="tim-icons icon-sound-wave"></i>
                    <p class="d-lg-none">Notifications</p>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-right dropdown-navbar">
                    <li class="nav-link">
                      <a href="#" class="nav-item dropdown-item">Mike John responded to your email</a>
                    </li>
                    <li class="nav-link">
                      <a href="javascript:void(0)" class="nav-item dropdown-item">You have 5 more tasks</a>
                    </li>
                    <li class="nav-link">
                      <a href="javascript:void(0)" class="nav-item dropdown-item">Your friend Michael is in town</a>
                    </li>
                    <li class="nav-link">
                      <a href="javascript:void(0)" class="nav-item dropdown-item">Another notification</a>
                    </li>
                    <li class="nav-link">
                      <a href="javascript:void(0)" class="nav-item dropdown-item">Another one</a>
                    </li>
                  </ul>
                </li> -->
                <!-- <li class="dropdown nav-item">
                  <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                    <div class="photo">
                      <img src="/../assets/img/anime3.png" alt="Profile Photo" />
                    </div>
                    <b class="caret d-none d-lg-block d-xl-block"></b>
                    <p class="d-lg-none">Log out</p>
                  </a>
                  <ul class="dropdown-menu dropdown-navbar">
                    <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Profile</a></li>
                    <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Settings</a></li>
                    <li class="dropdown-divider"></li>
                    <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Log out</a></li>
                  </ul>
                </li> -->
                <li class="separator d-lg-none"></li>
              </ul>
            </div>
          </div>
        </nav>
        <div
          class="modal modal-search fade"
          id="searchModal"
          tabindex="-1"
          role="dialog"
          aria-labelledby="searchModal"
          aria-hidden="true"
        >
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="SEARCH" />
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <i class="tim-icons icon-simple-remove"></i>
                </button>
              </div>
            </div>
          </div>
        </div>
        <!-- End Navbar -->

        <!-- ROUTER VIEW -->
        <router-view />

        <!-- FOOTER -->
        <footer class="footer">
          <div class="container-fluid">
            <ul class="nav">
              <li class="nav-item">
                <a href="https://jasonmckenzie.dev" class="nav-link">jasonmckenzie.dev</a>
              </li>
              <!-- <li class="nav-item">
                <a href="javascript:void(0)" class="nav-link">About Us</a>
              </li>
              <li class="nav-item">
                <a href="javascript:void(0)" class="nav-link">Blog</a>
              </li> -->
            </ul>
            <!-- <div class="copyright">
          ©
          <script>
            document.write(new Date().getFullYear());
          </script>
          2018 made with
          <i class="tim-icons icon-heart-2"></i>
          by
          <a href="javascript:void(0)" target="_blank">Creative Tim</a>
          for a better web.
        </div> -->
          </div>
        </footer>
      </div>
    </div>
  </div>
</template>

<style></style>

<script>
export default {
  data: function () {
    return {
      user_id: "",
    };
  },
  methods: {
    getUserID: function () {
      this.user_id = localStorage.getItem("user_id");
      this.$router.push("/users/" + this.user_id);
      this.$router.go();
    },
    isLoggedIn: function () {
      return localStorage.getItem("jwt");
      //   return true;
      // } else {
      //   return false;
    },
  },
};
</script>
