<script>
	import Revy from '../components/revy.svelte';
	import Background from '../components/background.svelte';

	let videos = [{ title: 'Promovideo', title_long: '2022 Promovideo', id: 'L9dHCyfT5OA' }];
</script>

<svelte:head>
	<title>Abakusrevyen 2022: Svin På Skogen!</title>
</svelte:head>

<div>
	<h1>Abakusrevyen 2022 presenterer...</h1>
	<Revy image_format="images/2022/logo.png" banner_link="https://fb.me/e/31SXZ5zni" {videos}>
		<div style="margin-bottom: 50px">
			<h2><i>3. og 4. mars braker det løs live fra Byscenen!</i></h2>
			<h3>Nytt av i år blir det både fysisk publikum og digital stream slik at alle kan få med seg sesongens beste revy!</h3>
		</div>

		<div>
			<h2><i>Billettsalg:</i></h2>
			<h2>Torsdag 3. mars</h2>
			<div class="block">
				<a class="button blue font-normal" href="https://byscn.no/abakus_22-1">19:00</a>
			</div>
			<div style="margin-top: 40px">
				<div class="block">
					<a class="button green font-normal" href="https://vier.live/act/abakusrevyen-2022-svin-paa-skogen-3-mars-1900">Digitalt: 19:00</a>
				</div>
			</div>
			<h2>Fredag 4. mars</h2>
			<div class="block">
				<a class="button blue font-normal" href="https://byscn.no/abakus_22-2">17:00</a>
				<a class="button blue font-normal" href="https://byscn.no/abakus_22-3">20:30</a>
			</div>
			<div style="margin-top: 40px">
				<div class="block">
					<a class="button green font-normal" href="https://vier.live/act/abakusrevyen-2022-svin-paa-skogen-4-mars-1700">Digitalt: 17:00</a>
					<a class="button green font-normal" href="https://vier.live/act/abakusrevyen-2022-svin-paa-skogen-4-mars-2030">Digitalt: 20:30</a>
				</div>
			</div>
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
