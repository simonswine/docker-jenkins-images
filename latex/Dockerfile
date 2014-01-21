FROM stackbrew/ubuntu:saucy
MAINTAINER Christian Simon <simon@swine.de>
# Ensure sources.list / upgrade
ADD ./sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y upgrade
# Install default tools
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install vim python-setuptools nano git curl procps psmisc sudo build-essential
# Richte Gruppe/User jenkins ein
RUN addgroup --gid 666 jenkins
RUN adduser --system --group --uid 666 --group --shell /bin/bash --home /jenkins jenkins
# Allow jenkins to sudo
ADD ./sudo-jenkins /etc/sudoers.d/jenkins
RUN chown 0:0 /etc/sudoers.d/jenkins
RUN chmod 440 /etc/sudoers.d/jenkins
# Install Latex Stuff
RUN DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install biblatex groff-base latex-beamer latex-xcolor latexmk libalgorithm-merge-perl liblocale-gettext-perl libnewt0.52 libpango1.0-0:amd64 libptexenc1 libtext-charwidth-perl libtext-iconv-perl libtext-wrapi18n-perl luatex mawk nano preview-latex-style tex-common texlive-base texlive-binaries texlive-fonts-recommended texlive-generic-recommended texlive-lang-german texlive-latex-base texlive-latex-extra texlive-latex-recommended texlive-pictures texlive-pstricks texlive-xetex git
# Start shell
CMD ["/bin/bash"," -l"]
