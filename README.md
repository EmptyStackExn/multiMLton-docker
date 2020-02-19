Dockerized MultiMLton
===================
This docker contains a pre-built version of [MultiMLton](http://multimlton.cs.purdue.edu) as of commit [`1971b0f`](https://github.com/kayceesrk/multiMLton).

Getting started
-------------------
Just type this and you're good to go:
````
docker run -v "$PWD":"$PWD" -w "$PWD" emptystackexn/multimlton mlton
````


For nerds
-------------------
### Build the docker from scratch
````
docker build -t emptystackexn/multimlton .
````

### ...or load the presaved docker image (as of commit #e794b6e84245)
````
docker load -i build/multiMLton-docker.tar.gz
````
