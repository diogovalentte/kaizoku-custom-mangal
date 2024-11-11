FROM ghcr.io/oae/kaizoku:latest

WORKDIR /tmp

RUN \
  if [ "$(uname -m)" = "x86_64" ] ; then \
  curl -L "https://github.com/diogovalentte/mangal/releases/download/v4.0.6-fix/mangal_4.0.6-fix_linux_amd64.tar.gz" -o mangal.tar.gz ;\
  elif [ "$(uname -m)" = "armv6l" ] ; then \
  curl -L "https://github.com/diogovalentte/mangal/releases/download/v4.0.6-fix/mangal_4.0.6-fix_linux_armv6.tar.gz" -o mangal.tar.gz ;\
  elif [ "$(uname -m)" = "i386" ] ; then \
  curl -L "https://github.com/diogovalentte/mangal/releases/download/v4.0.6-fix/mangal_4.0.6-fix_linux_386.tar.gz" -o mangal.tar.gz ;\
  elif [ "$(uname -m)" = "aarch64" ] ; then \
  curl -L "https://github.com/diogovalentte/mangal/releases/download/v4.0.6-fix/mangal_4.0.6-fix_linux_arm64.tar.gz" -o mangal.tar.gz ;\
  fi
RUN tar xf mangal.tar.gz
RUN mv mangal /usr/bin/mangal
RUN chmod +x /usr/bin/mangal
