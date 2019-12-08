<template>
<div>
		<Nav/>
		<div class="main">
				<h1 id="about">~PrintNoser~</h1>
				<h2>Easy 3D printing analysis</h2>
				<p class="aboutText">This is a printer analysis tool! It's called PrintNoser (Noser as in diagnoser)</p>

				<!-- <h1 id="projects">Features</h1> -->

				<Content/>				
				<h1 id="blog">Documentation and More</h1>
				<Blog/>
				<Footer/>
		</div>
</div>
</template>

<script>
import Vue from 'vue'
// internal components
import Nav from "@theme/components/Nav";
import Footer from "@theme/components/Footer";
import ProjectList from "@theme/components/ProjectList";
import Blog from "@theme/components/Blog";

// moment js for transforming, creating, and parsing dates
import moment from "moment"

export default {
		components: {
				Nav,
				Footer,
				ProjectList,
				Blog
		},
		name: "Layout",
		methods: {
				formatDate(date) {
						return moment(date).format("MMM Do YYYY");
				}
		},
};
</script>

<style>
@import url('https://fonts.googleapis.com/css?family=Goudy+Bookletter+1911|Lato&display=swap');
@import '../styles/theme.css';
</style>

