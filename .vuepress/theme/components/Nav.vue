<template>
<header>
		<div class="nav">
				<div class="elements">
						<!-- <a href="https://dieterbrehm.com" class="h-card"><h1 v-on:click="home">Dieter Brehm</h1></a> -->
						<router-link to="/"><h1 v-on:click="home">PrintNoser</h1></router-link>
						<h1>//</h1>
						<!-- <h1 v-on:click="about">About</h1> -->
						<a href="/#purpose"><h1>About</h1></a>
						<h1>//</h1>
						<a href="/#how-it-works"><h1>How</h1></a>
						<h1>//</h1>
						<a href="/#outputs"><h1>Results</h1></a>
						<h1>//</h1>
						<a href="/#made-by"><h1>Us</h1></a>
						<h1>//</h1>
						<a href="/#what-s-next"><h1>Next</h1></a>
				</div>
		</div>
  </header>
</template>

<script>
import Vue from 'vue'

// font awesome for social media icons
import { library } from '@fortawesome/fontawesome-svg-core'
import { faInstagram } from '@fortawesome/free-brands-svg-icons'
import { faGithub } from '@fortawesome/free-brands-svg-icons'
import { faTwitter } from '@fortawesome/free-brands-svg-icons'
import { faLinkedin } from '@fortawesome/free-brands-svg-icons'
import { faPaperPlane} from '@fortawesome/free-solid-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
// font awesome setup
library.add(faInstagram)
library.add(faGithub)
library.add(faTwitter)
library.add(faLinkedin)
library.add(faPaperPlane)
Vue.component('font-awesome-icon', FontAwesomeIcon)


export default {
		name: 'Nav',
		data() {
				return {};
		},
		methods: {
				scrollToNav: function(id, location) {
						var currentLocation = window.location;
						if(currentLocation.pathname == "/") {
								var element = document.getElementById(id);
								element.scrollIntoView({behavior: "smooth", block: location, inline: "nearest"});
						}
				},
				home: function (event) {
						this.scrollToNav("home", "end")
				},
				about: function (event) {
						this.scrollToNav("about", "start")

				},
				projects: function (event) {
						this.scrollToNav("projects", "start")
				},
				blog: function (event) {
						this.scrollToNav("blog", "start")
				}
		}
}
</script>

<style scoped>
.icon {
		margin-left: 0.6rem;
}
</style>
