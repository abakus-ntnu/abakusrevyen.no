<script>
	export const rand_choise = list => {
		return list[Math.floor(Math.random() * list.length)];
	};
	export const colors = ["blue", "green", "orange", "pink"];
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

<img id="banner" src="images/banner-{rand_choise(colors)}.png" alt="Banner image" />

<div class="stamper">
	<h1 class="stamper">[Ferdig]</h1>
</div>
