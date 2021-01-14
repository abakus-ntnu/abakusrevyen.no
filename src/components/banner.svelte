<script>
	export const rand_choise = (list) => {
		return list[Math.floor(Math.random() * list.length)];
	};
	export let image_format = "images/2021/banner-søk-revy.png";
	export let images = ["blue", "green", "orange", "pink"];
	export let overlay = "";
</script>

<style>
	#banner {
		width: 100%;
		height: 37.01696513vw;
	}

	h1.stamper {
		font-size: 15vw;
		transform: rotateZ(-20deg);
		margin: 0;
	}
	div.stamper {
		position: absolute;
		top: 0;
		width: 100%;
		height: 37.01696513vw;
		text-align: center;
		display: grid;
		align-items: center;
		overflow: hidden;
	}
</style>

<a href="/">
	<img id="banner" src={image_format.replace('{img}', rand_choise(images))} alt="Banner" />

	{#if overlay}
		<div class="stamper">
			<h1 class="stamper">[{overlay}]</h1>
		</div>
	{/if}
</a>
