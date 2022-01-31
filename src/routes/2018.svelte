<script>
	import Revy from "../components/revy.svelte";
	import Background from "../components/background.svelte";

	let image_format = "images/2018/banner.png";
	let videos = [
		{ title: "Akt 1", title_long: "Abakusrevyen 2018: Akt 1", id: "yfLDWofs0-8" },
		{ title: "Akt 2", title_long: "Abakusrevyen 2018: Akt 2", id: "8b91ozp3i6Y" },
		{ title: "Kjøp billett!", title_long: "Kjøp billett til Abakusrevyen 2018 Solidarisk", id: "T9mBjKyJg10"}
	];
</script>

<style>
	div {
		color: white;
	}
</style>

<svelte:head>
	<title>Abakusrevyen 2018</title>
</svelte:head>
<div>
	<Revy {image_format} {videos}>
		<h1>Abakusrevyen 2018: Solidarisk</h1>
		<p>
			Endelig er den her. Den alle har ventet på, nemlig
			<b>Abakusrevyen 2018 -Solidarisk</b>. Vi skal ta deg med på en reise inn i et solidarisk univers. Dette er
			en forestilling du sent vil glemme, og ikke vil gå glipp av!
		</p>
		<i>«Hvor var du da Abakusrevyen 2018 gikk på Byscenen?»</i>
	</Revy>
</div>
<Background color="#000" />
