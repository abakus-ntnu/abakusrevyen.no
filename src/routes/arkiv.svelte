<script>
	import Banner from '../components/banner.svelte';
	import Background from '../components/background.svelte';
	const years = {
		2017: 'Push Pop Baluba',
		2018: 'Solidarisk',
		2019: 'KULT!',
		2020: 'Satte Spor',
		2021: 'Marionett'
	};
</script>

<svelte:head>
	<title>Arkiv</title>
</svelte:head>

<Banner boxed />

<main>
	<h1>Våre Tideligere Revyer:</h1>
	<ul>
		{#each Object.entries(years).sort().reverse() as [year, name]}
			<li><a href="/{year}">{year}: {name}</a></li>
		{/each}
	</ul>
</main>

<style>
	main {
		text-align: left;
	}
</style>
<Background color="#78031e" background_image="/images/2022/background-color.png"/>
