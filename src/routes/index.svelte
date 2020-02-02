<script>
	import { onMount } from "svelte";

	export const rand_choise = list => {
		return list[Math.floor(Math.random() * list.length)];
	};
	export const colors = ["blue", "green", "orange", "pink"];

	let timeout_error_task = 0;

	const show_iframe_error = show_error => {
		clearTimeout(timeout_error_task);

		const list = document.getElementById("iframe-holder").classList;
		if (show_error) {
			list.remove("no-error");
		} else {
			list.add("no-error");
		}
	};

	onMount(() => {
		timeout_error_task = setTimeout(() => show_iframe_error(true), 5000);
	});
</script>

<style>
	.content {
		width: 100%;
		text-align: center;
		display: flex;
		flex-direction: column;
		align-content: center;
		align-items: center;
	}

	.button {
		border-radius: 5px;
		padding: 0.5em;
		margin: 0.5em;
		font-size: 1.5em;
		color: white;
		border-width: 0.2em;
		border-style: solid;
		transition: 0.2s cubic-bezier(0.66, 0.05, 0.5, 1.57);
	}

	.button:hover {
		border-width: 0;
		padding: 0.8em;
		transition: 0.2s cubic-bezier(0.66, 0.05, 0.5, 1.57);
	}

	.blue {
		border-color: #72a0ae;
		background-color: #6b97ab;
	}

	.green {
		border-color: #6e9576;
		background-color: #5d8c67;
	}

	.orange {
		border-color: #e76e4a;
		background-color: #ea7b53;
	}

	.pink {
		border-color: #e75770;
		background-color: #de4c61;
	}

	.youtube-red {
		border-color: #e74a4a;
		background-color: #ea5353;
	}

	.fixed-margin {
		height: 6em;
		position: relative;
		z-index: 1;
	}

	:global(main) {
		width: 100%;
	}

	#iframe-holder {
		width: calc(100vw - 2.356267672vw);
		height: calc(50vw - 1.178133836vw);
	}

	#iframe-holder iframe {
		width: 100%;
		height: 100%;
		display: none;
	}

	#iframe-holder #iframe-error {
		width: 100%;
		height: 100%;
		margin-bottom: calc(-50vw + 1 * 1.178133836vw);
		display: grid;
		align-content: center;
		align-items: center;
		background-color: rgba(255, 255, 255, 0.3);
	}

	#iframe-holder.no-error #iframe-error {
		display: none;
	}

	#iframe-holder.no-error iframe {
		display: initial;
	}

	.small {
		font-size: 0.8em;
	}

	.block {
		margin: 0.7em;
	}
</style>

<svelte:head>
	<title>Abakusrevyen.no</title>
</svelte:head>

<div class="content">
	<div id="iframe-holder" class="no-error">

		<!-- Error to display if the iframe fail to load -->
		<div id="iframe-error">
			<i>
				Det ser ut som om promovideoen ikke ville laste inn. Kanskje du
				har en innholdsblokker som forstyrrer? Eventuelt se promovideoen
				her på youtube.
			</i>
			<div class="block">
				<a
					class="button youtube-red small"
					href="https://www.youtube.com/watch?v=EvRhDjTkBCA">
					Promo Video
				</a>
			</div>
		</div>

		<!-- Promo video -->
		<iframe
			title="Abakusrevyen 2020 promo video"
			width="560"
			height="315"
			src="https://www.youtube.com/embed/EvRhDjTkBCA"
			frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope;
			picture-in-picture"
			allowfullscreen
			on:load={() => show_iframe_error(false)}>
			/>
		</iframe>
	</div>

	<!-- Ticket button -->
	<div class="fixed-margin">
		<a
			class="button {rand_choise(colors)}"
			href="https://abakusrevy.hoopla.no/sales">
			Kjøp Billetter her!
		</a>
	</div>

	<!-- Description -->
	<p>
		Årene har gått. Studenttida er for lengst glemt i en eske oppe på
		loftet, og du spør deg selv – hvordan havnet jeg her? Hvem var jeg?
		Hvilke valg tok jeg? Og hva var det egentlig som satte spor?
	</p>
	<p>
		Gira på å se hva noen av Abakus' mest kreative sjeler har jobbet med det
		siste halvåret? Kom deg på Abakusrevyen 2020 – Satte Spor, billetter er
		ute nå!
	</p>
</div>
