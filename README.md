# CSAMA Course Website

This repository contains material for the CSAMA course. View example at https://csama2022.bioconductor.eu/ and the corresponding [GitHub repo](https://github.com/Bioconductor/BioC2020)

This was originally forked from the [Bioconductor Conference Template](https://github.com/mdozmorov/conference_template.git).

## Testing

I like to use Docker to run the local Hugo server and test things locally.

1. Clone the repository and enter the directory

```shell
git clone https://github.com/Huber-group-EMBL/CSAMA_website.git
cd CSAMA_website/
```

2. Run the Hugo docker image from https://hub.docker.com/r/klakegg/hugo/

```shell
docker run --rm -it --name hugo_server \
  -v $(pwd):/src \
  -p 1313:1313 \
  klakegg/hugo:0.92.1 \
  server
```

and view the results at http://localhost:1313/

## Hosting

The site is hosted by [Netlify](https://www.netlify.com/).  Any push to the `main` branch of this repository will trigger a rebuild of the website.  If you have a Netlify account let me (Mike) know and I'll add you to the CSAMA team on Netlify so you can view the details of any build/errors etc.



