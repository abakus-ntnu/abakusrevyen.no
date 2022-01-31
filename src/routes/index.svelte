<script>
	import Revy from '../components/revy.svelte';
	import Background from '../components/background.svelte';

	let videos = [
		{ title: 'Promo Video', title_long: '2022 Promo Video', id: 'L9dHCyfT5OA' },
	];
</script>

<style>
	div {
		text-align: center;
	}
</style>

<svelte:head>
	<title>Abakusrevyen 2022: Svin På Skogen!</title>
</svelte:head>

<div>
	<Revy image_format="images/2022/logo.png" {videos}>
		<h2><i>3. og 4. mars braker det løs live fra Byscenen!</i></h2>
		<h3>Nytt av i år blir det både fysisk publikum og digital stream slik at alle kan få med seg sesongens beste revy!</h3>
		<h2><i>Billetter slippes snart så følg med!</i></h2>
	</Revy>
</div>
<Background color="#78031e" />
