<script>
	import Revy from '../components/revy.svelte';
	import Background from '../components/background.svelte';

	let videos = [
		{ title: 'Akt 1 & 2', title_long: 'Opptak av Abakusrevyen 2021: Marionett', id: 'TvA-oNItlwA' },
		{ title: 'Promo Video', title_long: '2021 Promo Video', id: 'vCuE7RTfTdQ' },
		{ title: 'Søk Revy', title_long: 'Opptak 2021 Promo Video', id: 'yAu0zSS8YDY' }
	];
</script>

<svelte:head>
	<title>Abakusrevyen 2021: Marionett!</title>
</svelte:head>

<div>
	<Revy image_format="images/2021/logo.png" {videos}>
		<h1>Abakusrevyen 2021 presenterer Marionett!</h1>
		<p>Velkommen til en forestilling uten like, for en pandemi stopper ikke Abakusrevyen 🥳</p>
		<p>
			4. og 5. mars kunne du tune inn til digital livesending, så du kunne nyte underholdningen rett fra godstolen hjemme i stua. Så følg med, for dette vil du bare ikke gå glipp
			av! 💃
		</p>
	</Revy>
</div>
<Background color="#25335e" />

<style>
	div {
		text-align: center;
	}
</style>
