FROM r-base:4.2.0

RUN apt-get update \ 
  && apt-get install -y \
    git \
    pandoc \
    pandoc-citeproc \
    texlive \
    texlive-latex-extra \
    texinfo \
    imagemagick \
  && rm -rf /var/lib/apt/lists/*

RUN R -e 'install.packages("bookdown")'
