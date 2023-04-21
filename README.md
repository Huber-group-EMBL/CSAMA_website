# CSAMA Course Website

This repository contains material for creating the CSAMA website. This can current be found at https://csama2023.bioconductor.eu/

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
  klakegg/hugo:0.101.0 \
  server
```

and view the results at http://localhost:1313/

## Hosting

Any push to the `2023` branch of this repository will trigger a rebuild of the website. The site is hosted and deployed by [Netlify](https://www.netlify.com/) using the Bioconductor Open Source Software team.  If you have a Netlify account contact one of the administrators of that team (currently Mikhail Dozmorov, Mike Smith, Charlotte Soneson, Martin Morgan) know and they'll add you to the Bioconductor team on Netlify so you can view the details of any build/errors etc.



