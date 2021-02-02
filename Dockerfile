FROM ubuntu:groovy

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt update && \
    apt install -y \
        build-essential \
        libcurl4-gnutls-dev \
        libxml2-dev \
        libssl-dev \
        zlib1g-dev \
        libmariadbd-dev \
        r-base

RUN R -e 'install.packages("BiocManager")'
RUN R -e 'BiocManager::install("OUTRIDER")'
RUN R -e 'BiocManager::install("GenomicAlignments")'
