<script>
	import Background from '../components/background.svelte';
	import Revy from '../components/revy.svelte';

	let images = ['blue', 'green', 'orange', 'pink'];
	let overlay = '';
	let image_format = 'images/2020/banner-{img}.png';
	let videos = [
		{ title: 'Opptak', title_long: 'Abakusrevyen Opptak 2020', id: 'dB0fC4VJsGI' },
		{ title: 'Promo Video', title_long: 'Abakusrevyen Promo Video 2020', id: 'EvRhDjTkBCA' }
	];
</script>

<svelte:head>
	<title>Abakusrevyen 2020</title>
</svelte:head>

<Revy {images} {image_format} {overlay} {videos} color="black">
	<p>
		Abakusrevyen 2020 var en braksuksess!
		<br />
		Både vi på, rundt og bak scenen storkoste oss gjennom hele prosessen!
	</p>
	<p>Takk for alle som kom å så på. <br /> Gleder oss til å se dere igjen neste år! <br /></p>
</Revy>
<Background color="#ffe3be" />
