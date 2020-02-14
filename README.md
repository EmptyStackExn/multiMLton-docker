Dockerized MultiMLton
===================
This docker contains a pre-built version of [MultiMLton](http://multimlton.cs.purdue.edu) as of commit [`1971b0f`](https://github.com/kayceesrk/multiMLton).

Getting started
-------------------
1. Clone this repository.
2. Build the docker:
````
docker build -t multimlton-docker .
````
3. You can run the docker:
````
docker run -it multimlton-docker
````
4. ... or directly MultiMLton:
````
docker run multimlton-docker mlton
````
