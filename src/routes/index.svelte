<script>
	import Revy from '../components/revy.svelte';

	let videos = [{ title: 'Opptak Promo Video', title_long: 'Opptak 2021 Promo Video', id: 'yAu0zSS8YDY' }];
</script>

<svelte:head>
	<title>Opptak til Abakusrevyen 2021!</title>
</svelte:head>

<Revy image_format="images/2021/banner-søk-revy.png" {videos}>
	<h1>Abakusrevyen 2021!</h1>

	<i>Sulten på mer revy fra Abakus?</i>

	<p>
		<b>Fortvil ikke!</b><br />
		Vi jobber på spreng for å lange en enda bedre, fetere og kulere revy en vi noen sinne har hatt!
	</p>

	<p>For mer info og opptak av tideligere revyer, se vårt <a href="/arkiv">arkiv</a>.</p>
</Revy>
