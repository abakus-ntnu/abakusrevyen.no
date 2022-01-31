<script>
	import { onMount } from "svelte";
	import {page_text_color} from '../utils/stores';
	onMount(() => {
		const handleResize = () => {
			document.documentElement.style.setProperty(
				"--scrollbar",
				window.innerWidth - document.body.clientWidth + "px"
			);
		};
		window.addEventListener("resize", handleResize);
		handleResize();
	});
</script>

<div style='color: {$page_text_color}'>
	<slot />

	<p>Sjekk også ut våre andre revyer i arkivet vårt <a href="/arkiv">her</a>.</p>
</div>

<footer>
	<p>Laget med <span style="color: #e25555;">&#9829;</span> av Teknikk</p>
</footer>


<style>
	footer {
		color: #999;
		font-size: 0.6em;
		text-align: center;
	}
</style>