<script>
	import { onMount } from 'svelte';

	/* Not a perfect solution, as SSR doesn't know about this color change, so it will flash the
   original bg color when you reload the page or enter the url manually. We add the div in
   addition to combat this. */

	export let color = 'transparent';
	export let background_image = '';

	let background;

	$: {
		background = `${color} url(${background_image}) repeat top left`;
		if (typeof window != 'undefined') {
			document.body.style.background = background;
		}
	}

	onMount(() => {
		document.body.style.background = background;
		return () => {
			document.body.style.background = '';
		};
	});
</script>

<div style="background: {background}" />

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
		max-width: 100%;
		max-height: 100%;
	}
</style>
