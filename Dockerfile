FROM ubuntu:20.04

ENV release=0.20.7

RUN apt-get update -y 
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install debhelper-compat rustc libdbus-1-dev libpulse-dev wget libssl-dev git dpkg-dev
RUN mkdir packaging
ADD files files
WORKDIR /files


#RUN git clone --single-branch --branch debian_source https://github.com/cfsmp3/regolith-i3status-rust.git
#WORKDIR regolith-i3status-rust
#RUN cargo vendor

# We don't have debherper 13 in this Ubuntu and we don't care
#RUN sed -i 's/(= 13)/(= 12)/g' debian/control
#RUN dpkg-buildpackage -us -uc

RUN ["chmod", "+x", "./entrypoint.sh"]
ENTRYPOINT [ "./entrypoint.sh" ]
#CMD [ $release ]
