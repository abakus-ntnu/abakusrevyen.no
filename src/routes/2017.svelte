<script>
	import Revy from '../components/revy.svelte';
	import Background from '../components/background.svelte';

	let image_format = 'images/2017/banner.png';
	let videos = [
		{ title: 'Akt 1', title_long: 'Abakusrevyen 2017: Akt 1', id: '8lyOg-lV1pg' },
		{ title: 'Akt 2', title_long: 'Abakusrevyen 2017: Akt 2', id: 'gYTWXmaQfZk' }
	];
</script>

<svelte:head>
	<title>Abakusrevyen 2017</title>
</svelte:head>

<Revy {image_format} {videos}>
	<h1>Abakusrevyen 2017: Push Pop Baluba</h1>
	<i> Push Pop Baluba hadde visning 16. og 17. mars 2017 og ble satt opp i anledningen 40 års jubileumet til Abakus. </i>

	<p>
		Førti fine år, førti flotte år. Førti år med fest, førti år med fanteri. Abakus fyller førti, men det er på ingen måte noen krise. I en alder der mange sliter med å akseptere
		virkeligheten, velger vi å feire den. Vi kjøper ikke ny hytte, ny bil eller reiser til Magaluf – vi lager revy. En revy er som et kontrollert sirkus, men med mennesker i
		hovedrollene. Medmennesker. Våre roller bekles av akrobatiske abakuler som ønsker å glede og underholde publikum med brask og bram. Vi vil bytte ut programmeringsspråk og
		kalkulator med lettbent humor og morsomme rekvisitter – så finn frem entusiasmen og gjør dere klare for en ellevill aften.
	</p>

	<p>
		Denne kvelden vil det pushes grenser og poppes pils. Det er meldt at stemningen blir helt baluba. Det blir med andre ord den mest sagnomsuste Abakus-revyen som noen gang har
		blitt vist!
	</p>
</Revy>
<Background color="#272227" />
