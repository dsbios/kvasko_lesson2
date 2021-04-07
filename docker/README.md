# ALPINE GIT CLONNER
docker run -ti --rm -v $(pwd):/repo alpine-git:1.0 clone https://repo_url.git

# NGINX ENV
docker run -e MY_NAME=*your_env* -p 8000:8000 *your:image*
