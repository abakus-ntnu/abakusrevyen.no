<script>
	import Revy from '../components/revy.svelte';
	import Background from '../components/background.svelte';

	let image_format = 'images/2019/banner.png';
	let videos = [
		{ title: 'Akt 1 & 2', title_long: 'Opptak av Abakusrevyen 2019: KUTL!', id: '3XtropmKsrg' },
		{ title: 'Promo Video', title_long: 'Abakusrevyen Promo Video 2019', id: '8W5PUSJ3slU' }
	];
</script>

<svelte:head>
	<title>Abakusrevyen 2019</title>
</svelte:head>

<Revy {image_format} {videos} color="black">
	<h1>Abakusrevyen 2019: KULT!</h1>
	<p><b>Abakusrevyen</b> presenterer en heidundranes aften med forestillingen <b>KULT!</b></p>
	<p>Revyen har stått på for å gi et fullspekket sceneshow du bare kan drømme om. Hysteriske sketsjer, flotte sanger og snertne kommentarer – du kommer til å gråte av latter!</p>
	<p>Det er bare å glede seg for dette blir <b>KULT!</b></p>
</Revy>
<Background color="#E0D7B1" />
