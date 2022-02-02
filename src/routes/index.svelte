<script>
	import Revy from '../components/revy.svelte';
	import Background from '../components/background.svelte';

	let videos = [
		{ title: 'Promovideo', title_long: '2022 Promovideo', id: 'L9dHCyfT5OA' },
	];
</script>

<style>
	div {
		text-align: center;
	}
	h1, h2, h3{
		font-family: "DBB";
	}
</style>

<svelte:head>
	<title>Abakusrevyen 2022: Svin På Skogen!</title>
</svelte:head>

<div>
	<h1>Abakusrevyen 2022 presenterer...</h1>
	<Revy image_format="images/2022/logo.png" banner_link="https://youtu.be/L9dHCyfT5OA" {videos}>
		<h2><i>3. og 4. mars braker det løs live fra Byscenen!</i></h2>
		<h3>Nytt av i år blir det både fysisk publikum og digital stream slik at alle kan få med seg sesongens beste revy!</h3>
		<h2><i>Billetter slippes snart så følg med!</i></h2>
	</Revy>
	<p>
		Spørsmål om alt og ingenting kan rettes til
		<a href="mailto:revy@abakus.no">revy@abakus.no</a>
		<br />
	</p>
</div>
<Background color="#78031e" background_image="/images/2022/background-color.png"/>
