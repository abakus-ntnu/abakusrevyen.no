<script>
	import Banner from "../components/banner.svelte";
	export let segment;
</script>

<style>
	main {
		position: relative;
		max-width: 60em;
		padding: 2em;
		margin: 0 auto;
		box-sizing: border-box;
	}
</style>

{#if segment === '2020'}
	<Banner />
{:else}
	<Banner colors={['søk-revy']} text="" />
{/if}

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
