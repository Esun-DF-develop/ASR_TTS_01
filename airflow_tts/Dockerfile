FROM apache/airflow:2.2.5-python3.7
USER root
RUN apt -y update \ 
    &&  DEBIAN_FRONTEND=noninteractive apt install -y \
    bind9-host=1:9.11.5.P4+dfsg-5.1+deb10u8 \
    curl=7.64.0-4+deb10u5 \
    dirmngr=2.2.12-1+deb10u2 \
    distro-info-data=0.41+deb10u6 \
    gnupg=2.2.12-1+deb10u2 \
    gnupg-l10n=2.2.12-1+deb10u2 \
    gnupg-utils=2.2.12-1+deb10u2 \
    gnupg2=2.2.12-1+deb10u2 \
    gpg=2.2.12-1+deb10u2 \
    gpg-agent=2.2.12-1+deb10u2 \
    gpg-wks-client=2.2.12-1+deb10u2 \
    gpg-wks-server=2.2.12-1+deb10u2 \
    gpgconf=2.2.12-1+deb10u2 \
    gpgsm=2.2.12-1+deb10u2 \
    gpgv=2.2.12-1+deb10u2 \
    krb5-user=1.17-3+deb10u5 \
    libbind9-161=1:9.11.5.P4+dfsg-5.1+deb10u8 \
    libbz2-1.0=1.0.6-9.2~deb10u2 \
    libc-bin=2.28-10+deb10u2 \
    libc-l10n=2.28-10+deb10u2 \
    libcurl4=7.64.0-4+deb10u5 \
    libdns1104=1:9.11.5.P4+dfsg-5.1+deb10u8 \
    libexpat1=2.2.6-2+deb10u6 \
    libgnutls30=3.6.7-4+deb10u10 \
    libgssapi-krb5-2=1.17-3+deb10u5 \
    libgssrpc4=1.17-3+deb10u5 \
    libisc1100=1:9.11.5.P4+dfsg-5.1+deb10u8 \
    libisccc161=1:9.11.5.P4+dfsg-5.1+deb10u8 \
    libisccfg163=1:9.11.5.P4+dfsg-5.1+deb10u8 \
    libk5crypto3=1.17-3+deb10u5 \
    libkadm5clnt-mit11=1.17-3+deb10u5 \
    libkadm5srv-mit11=1.17-3+deb10u5 \
    libkdb5-9=1.17-3+deb10u5 \
    libkrb5-3=1.17-3+deb10u5 \
    libkrb5support0=1.17-3+deb10u5 \
    libksba8=1.3.5-2+deb10u2 \
    liblwres161=1:9.11.5.P4+dfsg-5.1+deb10u8 \
    libncurses6=6.1+20181013-2+deb10u3 \
    libncursesw6=6.1+20181013-2+deb10u3 \
    libpq5=11.19-0+deb10u1 \
    libpython3.7-minimal=3.7.3-2+deb10u4 \
    libpython3.7-stdlib=3.7.3-2+deb10u4 \
    libsqlite3-0=3.27.2-3+deb10u2 \
    libssl1.1=1.1.1n-0+deb10u4 \
    libtasn1-6=4.13-3+deb10u1 \
    libtinfo6=6.1+20181013-2+deb10u3 \
    libxml2=2.9.4+dfsg1-7+deb10u5 \
    locales=2.28-10+deb10u2 \
    ncurses-base=6.1+20181013-2+deb10u3 \
    ncurses-bin=6.1+20181013-2+deb10u3 \
    openssl=1.1.1n-0+deb10u4 \
    postgresql-client-11=11.19-0+deb10u1 \
    python3.7=3.7.3-2+deb10u4 \
    python3.7-minimal=3.7.3-2+deb10u4 \
    sqlite3=3.27.2-3+deb10u2 \
    sudo=1.8.27-1+deb10u5 \
    tzdata=2021a-0+deb10u8 \
    zlib1g=1:1.2.11.dfsg-1+deb10u2
    
    
RUN apt-get update && \
    apt-get -y install sox && \
    apt-get -y install gfortran && \
    apt-get -y install libopenblas-dev liblapack-dev libatlas-base-dev libblas-dev


COPY . .
RUN pip3 install -U pip==21.2.1
RUN pip3 uninstall -y Flask-AppBuilder
RUN pip3 install Flask-AppBuilder==4.1.3
    
