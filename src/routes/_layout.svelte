<script>
	export let segment;
	import { onMount } from "svelte";
	onMount(() => {
		const handleResize = () => {
			document.documentElement.style.setProperty(
				"--scrollbar",
				window.innerWidth - document.body.clientWidth + "px"
			);
		};
		window.addEventListener("resize", handleResize);
		handleResize();
	});
</script>

<style>
	footer {
		color: #999;
		font-size: 0.6em;
		text-align: center;
	}
</style>

<slot />

<footer>
	<p>Laget med <span style="color: #e25555;">&#9829;</span> av Teknikk</p>
</footer>
