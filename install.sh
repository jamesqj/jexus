 #!/bin/bash -e
 #7.0
apt-get update && apt-get upgrade -y
# install wget to download jexus, curl for healthcheck.
apt-get install -y --no-install-recommends curl wget ca-certificates procps sqlite fontconfig xfonts-utils gpg
curl --location --output jexus-7.0.x-x64.tar.gz https://linuxdot.net/down/jexus-7.0.x-x64.tar.gz
tar -zxf jexus-7.0.x-x64.tar.gz && rm jexus-7.0.x-x64.tar.gz
mv jexus /usr/ && cd /usr/jexus && /usr/jexus/jws regsvr
apt-get remove -y ca-certificates
apt-get autoremove -y
rm -rf /var/lib/apt/lists/*




