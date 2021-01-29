<script>
	import Revy from '../components/revy.svelte';
	import Background from '../components/background.svelte';

	let videos = [
		{ title: 'Promo Video', title_long: '2021 Promo Video', id: 'vCuE7RTfTdQ' },
		{ title: 'Opptak Promo Video', title_long: 'Opptak 2021 Promo Video', id: 'yAu0zSS8YDY' }
	];
</script>

<style>
	div {
		text-align: center;
	}
</style>

<svelte:head>
	<title>Opptak til Abakusrevyen 2021!</title>
</svelte:head>

<div>
	<Revy image_format="images/2021/logo.png" {videos}>
		<h2><i>4. og 5. mars braker det løs live fra Byscenen!</i></h2>
	</Revy>
	<p>Sjekk også ut våre tideligere revyer i arkivet vår <a href="/arkiv">her</a>.</p>
</div>
