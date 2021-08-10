import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import Signup from "../views/Signup.vue";
// import Login from "../views/Login.vue";
// import Logout from "../views/Logout.vue";
// import UserPage from "../views/UserPage.vue";
// import PlaylistsIndex from "../views/PlaylistsIndex.vue";
// import PlaylistsNew from "../views/PlaylistsNew.vue";
// import PlaylistsShow from "../views/PlaylistsShow.vue";
// import PlaylistsEdit from "../views/PlaylistsEdit.vue";

Vue.use(VueRouter);

const routes = [
  { path: "/", name: "Home", component: Home },
  { path: "/signup", name: "signup", component: Signup },
  // { path: "/login", name: "login", component: Login },
  // { path: "/logout", name: "logout", component: Logout },
  // { path: "/userpage", name: "user-page", component: UserPage },
  // { path: "/playlists", name: "playlists-index", component: PlaylistsIndex },
  // { path: "/playlists/new", name: "playlists-new", component: PlaylistsNew },
  // { path: "/playlists/:id", name: "playlists-show", component: PlaylistsShow },
  // { path: "/playlists", name: "playlists-edit", component: PlaylistsEdit },
  { path: "/about", name: "About", component: () => import(/* webpackChunkName: "about" */ "../views/About.vue") },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

export default router;
