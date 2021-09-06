<script>
	import Revy from '../components/revy.svelte';
	import Background from '../components/background.svelte';

	let videos = [
		{ title: 'Opptak', title_long: 'Abakusrevyen Opptak 2021', id: 'TvA-oNItlwA' },
		{ title: 'Promo Video', title_long: '2021 Promo Video', id: 'vCuE7RTfTdQ' },
		{ title: 'Søk Revy', title_long: 'Opptak 2021 Promo Video', id: 'yAu0zSS8YDY' }
	];
</script>

<style>
	div {
		text-align: center;
	}
</style>

<svelte:head>
	<title>Abakusrevyen 2021: Marionett!</title>
</svelte:head>

<div>
	<Revy image_format="images/2021/logo.png" {videos}>
		<h2><i>4. og 5. mars braket det løs live fra Byscenen!</i></h2>
	</Revy>
	<p>Sjekk også ut våre andre revyer i arkivet vårt <a href="/arkiv">her</a>.</p>
</div>
<Background color="#1c315f" />
