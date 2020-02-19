FROM ubuntu:precise-20150320
WORKDIR /workspace
COPY contrib/multiMLton-compiled.tar.gz /workspace
RUN apt-get update
RUN apt-get install -y libgmp10 libgmp-dev gcc make git
# RUN dpkg -i libgmp10/libgmp10_5.0.2+dfsg-2ubuntu1_amd64.deb
RUN tar xzf multiMLton-compiled.tar.gz
RUN cd multiMLton/trunk && make install
RUN rm multiMLton-compiled.tar.gz
ENV PATH="/workspace/multiMLton/trunk/build/bin:${PATH}"



