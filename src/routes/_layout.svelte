<script>
	import Banner from "../components/banner.svelte";
</script>

<style>
	main {
		position: relative;
		max-width: 56em;
		padding: 2em;
		margin: 0 auto;
		box-sizing: border-box;
	}
</style>

<Banner />

<main>
	<slot />
</main>

<footer>
	<p>
		Laget med
		<span style="color: #e25555;">&#9829;</span>
		av Teknikk
	</p>
</footer>
