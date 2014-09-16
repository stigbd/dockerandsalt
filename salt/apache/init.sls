##### /srv/salt/apache/init.sls
apache-image:
   docker.pulled:
     - name: stigbd/apache
     - require_in: apache-container
 
apache-container:
   docker.installed:
     - name: apache
     - hostname: apache
     - image: stigbd/apache
     - require_in: apache
 
apache:
   docker.running:
     - container: apache
     - port_bindings:
            "80/tcp":
                HostIp: ""
                HostPort: "80"