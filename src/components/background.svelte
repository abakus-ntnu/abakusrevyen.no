<script>
	import { onMount } from "svelte";

	/* Not a perfect solution, as SSR doesn't know about this color change, so it will flash the
   original bg color when you reload the page or enter the url manually. We add the div in
   addition to combat this. */

	export let color = "transparent";
	export let background_image = "";

	onMount(() => {
		document.body.style.backgroundColor = color;
		return () => {
			document.body.style.backgroundColor = "";
		};
	});
</script>

<style>
	/* Change background color, works with SSR, but some browsers like Safari for macOS allows you
	 to drag past the visible content with the touch bar, revealing the original background color,
	 therefore we also use the onMount hack. */
	div {
		position: fixed;
		width: 100vw;
		height: 100vh;
		top: 0;
		right: 0;
		z-index: -1;
	}
</style>

<div style="background: {color} url({background_image}) repeat-y top left" />
