<script>
	import Revy from '../components/revy.svelte';
	import Background from '../components/background.svelte';

	let videos = [{ title: 'Promovideo', title_long: '2023 Promovideo', id: 'yAu0zSS8YDY' }];
</script>

<svelte:head>
	<title>Abakusrevyen 2023 har opptak!</title>
</svelte:head>

<div>
	<h1>Abakusrevyen 2023 har opptak</h1>
	<!-- TODO Endre bannerlink til opptakside -->
	<Revy image_format="images/2022/logo.png" banner_link="https://fb.me/e/31SXZ5zni" {videos}>
		<div style="margin-bottom: 50px;">
			<h2><i>Vi har opptak fra 12. til 18. september. Søk nå!</i></h2>
		</div>
		<div>
			<h2>
				Du kan nyte vår flotte promovideo så lenge!
				<h2 />
			</h2>
		</div>
	</Revy>
</div>
<p>
	Spørsmål om alt og ingenting kan rettes til
	<a href="mailto:revy@abakus.no">revy@abakus.no</a>
	<br />
</p>
<Background color="#343434" background_image="/images/2023/DEADBEEF" />

<style>
	div {
		text-align: center;
		font-family: 'DBB';
	}
</style>
