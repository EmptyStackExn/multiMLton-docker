FROM ubuntu:precise-20150320
WORKDIR /
COPY contrib/multiMLton-compiled.tar.gz /
RUN apt-get update
RUN apt-get install -y libgmp10 libgmp-dev gcc make git
RUN tar xzf multiMLton-compiled.tar.gz
RUN cd multiMLton/trunk && make install
RUN rm multiMLton-compiled.tar.gz
RUN ln -s /multiMLton/trunk/build/bin/mlton /multiMLton/trunk/build/bin/multimlton
ENV PATH="/multiMLton/trunk/build/bin:${PATH}"




