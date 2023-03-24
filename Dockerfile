FROM bellsoft/liberica-openjre-debian:17
RUN apt-get update && apt-get -y install \
  apt-transport-https locales-all libpng16-16 libxinerama1 libgl1-mesa-glx libfontconfig1 libfreetype6 libxrender1 \
  libxcb-shm0 libxcb-render0 adduser cpio findutils gosu \
  # procps needed for us finding the libreoffice process, see https://github.com/sbraconnier/jodconverter/issues/127#issuecomment-463668183
  procps \
  && apt-get -y install libreoffice libreoffice-java-common --no-install-recommends \
  && useradd -m jodconverter \
  && rm -rf /var/lib/apt/lists/*
