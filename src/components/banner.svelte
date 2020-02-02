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
</style>

<img
	id="banner"
	src="images/banner-{rand_choise(colors)}.png"
	alt="Banner image" />
