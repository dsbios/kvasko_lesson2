# ALPINE GIT CLONNER
docker run -ti --rm -v $(pwd):/repo *your:imagename* clone https://*repo_url*

# NGINX ENV
docker run -e MY_NAME=*your_env* -p 8000:8000 *your:image*
