FROM centos:7
RUN yum -y  install https://repo.postgrespro.ru/pgpro-14/centos/7Server/os/x86_64/rpms/postgrespro-std-14-client-14.5.1-1.el7.x86_64.rpm https://repo.postgrespro.ru/pgpro-14/centos/7Server/os/x86_64/rpms/postgrespro-std-14-contrib-14.5.1-1.el7.x86_64.rpm https://repo.postgrespro.ru/pgpro-14/centos/7Server/os/x86_64/rpms/postgrespro-std-14-server-14.5.1-1.el7.x86_64.rpm https://repo.postgrespro.ru/pgpro-14/centos/7Server/os/x86_64/rpms/postgrespro-std-14-libs-14.5.1-1.el7.x86_64.rpm
USER postgres 
RUN /opt/pgpro/std-14/bin/initdb -D /var/lib/pgpro/std-14/data/
CMD /opt/pgpro/std-14/bin/postgres -D /var/lib/pgpro/std-14/data/
EXPOSE 5432
