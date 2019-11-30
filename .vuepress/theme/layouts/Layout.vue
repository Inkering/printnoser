<template>
<div>
		<Nav/>
		<!-- <div class="big"> -->
		<!-- 		<h1 class="title splash">Hi,</h1> -->
		<!-- 		<h1 class="splash">I'm Dieter</h1> -->
		<!-- 		<p class="splash">I'm a designer working in an engineering stream </p> -->
		<!-- </div> -->
		<div class="main">
				<h1 id="about">~PrintNoser~</h1>
				<h2>Easy 3D printing analysis</h2>
				<p class="aboutText">I’m studying at Olin College of Engineering and
working on <strong>computation</strong> and <strong>design</strong> focused
projects. Whenever I’m not working on those topics, you can usually find me
putting ink on paper trying to get some illustrations to be more visually //
emotionally satisfying. I'm in the midst of trying to figure out emotional,
rational, and whimsical ties between my craft and my fields of study at
Olin.</p>

				<h1 id="projects">Features</h1>
				<!-- <ProjectList/> -->
				<ul>
					<li>Automated Fail detection</li>
					<li>Stepper health detection</li>
					<li>Provides on-printer sensor suite</li>
				</ul>
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

