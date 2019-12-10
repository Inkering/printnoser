<template>
<div>
		<Nav/>
		<div class="main">
				<img src="nose.png" style="width: 10%;"alt="">
				<h1 id="about">~PrintNoser~</h1>
				<Content/>				
				<Footer/>
		</div>
</div>
</template>

<script>
import Vue from 'vue'
import $ from 'jquery'
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
		mounted() {
			// Add smooth scrolling to all links
            $("a").on('click', function (event) {

                // Make sure this.hash has a value before overriding default behavior
                if (this.hash !== "") {
                    // Prevent default anchor click behavior
                    event.preventDefault();

                    // Store hash
                    var hash = this.hash;

                    // Using jQuery's animate() method to add smooth page scroll
                    // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top
                    }, 250, function () {

                        // Add hash (#) to URL when done scrolling (default click behavior)
                        window.location.hash = hash;
                    });
                } // End if
            });
		}
};

</script>

<style>
@import url('https://fonts.googleapis.com/css?family=Gelasio:400,700|Poppins:700&display=swap');
@import '../styles/theme.css';
</style>

<style src="prismjs/themes/prism-tomorrow.css"></style>
