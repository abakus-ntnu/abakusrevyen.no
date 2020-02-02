# abakusrevyen.no

Website for abakusrevyen.no

The website is written in [sapper](https://sapper.svelte.dev) and [svelte](https://svelte.dev). To read more about sapper and svelte, see README-sapper.md.

## Getting started

### Development mode

To run project in development mode, run:

```shell
npm run dev
```

The site will then be avilable at http://localhost:3000 with debugging and hot-reload enabled, meaning you can change files and as soon as you save them, the changes will be applied in your browser.

### Production Mode

To build a static production version of this site, run:

```shell
npx sapper export
```

This will generate static html, css and javascript files for this website into the `__sapper__/export/` folder. You can then statically serve these files to host your site.

### Docker

There is also a docker image that will build a static version of this site, then host the files through nginx.

To build the docker image, run:

```shell
docker build -t abakusrevyen.no .
```

The image is self sufficient and runs a static export of the site using nginx, exposing port 80.
