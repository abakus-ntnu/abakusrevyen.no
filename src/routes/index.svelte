<script>
	import Revy from '../components/revy.svelte';
	import Background from '../components/background.svelte';

	let videos = [
		{ title: 'Revyforestilling', title_long: 'Opptak av Abakusrevyen 2022: Svin på Skogen', id: 'EiuAtR7zPI4' },
		{ title: 'Promovideo', title_long: '2022 Promovideo', id: 'L9dHCyfT5OA' }
	];
</script>

<svelte:head>
	<title>Abakusrevyen 2022: Svin På Skogen!</title>
</svelte:head>

<div>
	<h1>Abakusrevyen 2022 presenterer...</h1>
	<Revy image_format="images/2022/logo.png" banner_link="https://fb.me/e/31SXZ5zni" {videos}>
		<div style="margin-bottom: 50px">
			<h2><i>3. og 4. mars braket det løs live fra Byscenen!</i></h2>
			<h3>Tusen takk for nå! Nedenfor finner du revyopptak og promovideo.</h3>
		</div>
	</Revy>
</div>
<p>
	Spørsmål om alt og ingenting kan rettes til
	<a href="mailto:revy@abakus.no">revy@abakus.no</a>
	<br />
</p>
<Background color="#78031e" background_image="/images/2022/background-color.png" />

<style>
	div {
		text-align: center;
		font-family: 'DBB';
	}
</style>
