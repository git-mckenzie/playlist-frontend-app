<template>
  <div class="logout"></div>
</template>

<script>
import axios from "axios";

export default {
  created: function () {
    delete axios.default.headers.common["Authorization"];
    localStorage.removeItem("jwt");
    localStorage.removeItem("user_id");
  },
};
</script>
