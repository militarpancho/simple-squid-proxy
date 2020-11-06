FROM datadog/squid

RUN apt-get update && \
      apt-get install -y apache2-utils && \
      touch /etc/squid/passwords && \
      chmod 777 /etc/squid/passwords && \
      echo -n "test" | htpasswd -ic /etc/squid/passwords test
COPY squid.conf /etc/squid/squid.conf

ENTRYPOINT ["/sbin/entrypoint.sh"]  

