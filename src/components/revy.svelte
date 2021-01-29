<script>
	import { onMount } from 'svelte';
	import Banner from '../components/banner.svelte';

	export let images;
	export let image_format;
	export let overlay;
	export let videos = [];
	export let color = 'unset';

	let timeout_error_task = 0;

	const show_iframe_error = (show_error) => {
		clearTimeout(timeout_error_task);

		document.querySelectorAll('.iframe-holder').forEach((element) => {
			const list = element.classList;
			if (show_error) {
				list.remove('no-error');
			} else {
				list.add('no-error');
			}
		});
	};

	onMount(() => {
		timeout_error_task = setTimeout(() => show_iframe_error(true), 5000); // TODO: Add loading icon or something...
	});
</script>

<style>
	main {
		text-align: center;
		display: flex;
		flex-direction: column;
		align-content: center;
		align-items: center;
	}

	.iframe-holder {
		width: calc(100vw - 2.356267672vw - var(--scrollbar));
		height: calc(50vw - 1.178133836vw - var(--scrollbar));
	}

	.iframe-holder iframe {
		width: 100%;
		height: 100%;
		display: none;
	}

	.iframe-holder .iframe-error {
		width: 100%;
		height: 100%;
		margin-bottom: calc(-50vw + 1 * 1.178133836vw);
		text-align: center;
		display: flex;
		flex-direction: column;
		align-content: center;
		align-items: center;
		justify-content: center;
		background-color: rgba(255, 255, 255, 0.5);
	}

	.iframe-error div {
		max-width: 70%;
	}

	.iframe-holder.no-error .iframe-error {
		display: none;
	}

	.iframe-holder.no-error iframe {
		display: initial;
	}

	@media (max-width: 450px) {
		.iframe-holder {
			font-size: 12px;
		}
	}
</style>

<Banner {images} {overlay} {image_format} />

<main style="color: {color}">
	<!-- Main text content-->
	<slot />

	{#each videos as video}
		<h1>{video.title}:</h1>
		<div class="iframe-holder no-error">
			<!-- Error to display if the iframe fail to load, e.g. ad-blocker blocking youtube tracking -->
			<div class="iframe-error">
				<div>
					<i
						>Det ser ut som videoen ikke ville laste inn. Kanskje du har en innholdsblokker som forstyrrer?
						Eventuelt se den direkte på youtube i stedet:</i
					>
				</div>
				<div class="block">
					<a class="button youtube-red small" href="https://www.youtube.com/watch?v={video.id}"
						>{video.title_long}</a
					>
				</div>
			</div>

			<!-- Video -->
			<iframe
				title={video.title_long}
				width="560"
				height="315"
				src="https://www.youtube-nocookie.com/embed/{video.id}"
				frameborder="0"
				allowfullscreen
				on:load={() => show_iframe_error(false)}
			/>
		</div>
	{/each}
</main>
