# This is the default ansible 'hosts' file.
#
# It should live in /etc/ansible/hosts
#
#   - Comments begin with the '#' character
#   - Blank lines are ignored
#   - Groups of hosts are delimited by [header] elements
#   - You can enter hostnames or ip addresses
#   - A hostname/ip can be a member of multiple groups
# Ex 1: Ungrouped hosts, specify before any group headers.
#green.example.com
#blue.example.com
#192.168.100.1
#192.168.100.10
# Ex 2: A collection of hosts belonging to the 'webservers' group
[webservers]
#alpha.example.org
#beta.example.org
#192.168.1.100
#192.168.1.110
10.0.0.5 ansible_python_interpreter=/usr/bin/python3
10.0.0.6 ansible_python_interpreter=/usr/bin/python3
[elk]
10.1.0.4 ansible_python_interpreter=/usr/bin/python3
# If you have multiple hosts following a pattern you can specify
# them like this:
#www[001:006].example.com
# Ex 3: A collection of database servers in the 'dbservers' group
#[dbservers]
#
#db01.intranet.mydomain.net
#db02.intranet.mydomain.net
#10.25.1.56
#10.25.1.57
# Here's another example of host ranges, this time there are no
# leading 0s:
#db-[99:101]-node.example.com
filebeat-config.yml
######################## Filebeat Configuration ############################
# This file is a full configuration example documenting all non-deprecated
# options in comments. For a shorter configuration example, that contains only
# the most common options, please see filebeat.yml in the same directory.
#
# You can find the full configuration reference here:
# https://www.elastic.co/guide/en/beats/filebeat/index.html
filebeat.config.modules:
  path: ${path.config}/modules.d/*.yml
#==========================  Modules configuration =============================
filebeat.modules:
#-------------------------------- System Module --------------------------------
#- module: system
  # Syslog
  #syslog:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
  # Authorization logs
  #auth:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
#-------------------------------- Apache Module --------------------------------
#- module: apache
  # Access logs
  #access:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
  # Error logs
  #error:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
#-------------------------------- Auditd Module --------------------------------
#- module: auditd
  #log:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
#---------------------------- Elasticsearch Module ----------------------------
- module: elasticsearch
  # Server log
  server:
    enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
  gc:
    enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
  audit:
    enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
  slowlog:
    enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
  deprecation:
    enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
#------------------------------- Haproxy Module -------------------------------
- module: haproxy
  # All logs
  log:
    enabled: true
    # Set which input to use between syslog (default) or file.
    #var.input:
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
#-------------------------------- Icinga Module --------------------------------
#- module: icinga
  # Main logs
  #main:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
  # Debug logs
  #debug:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
  # Startup logs
  #startup:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
#--------------------------------- IIS Module ---------------------------------
#- module: iis
  # Access logs
  #access:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
  # Error logs
  #error:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
#-------------------------------- Kafka Module --------------------------------
- module: kafka
  # All logs
  log:
    enabled: true
    # Set custom paths for Kafka. If left empty,
    # Filebeat will look under /opt.
    #var.kafka_home:
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
#-------------------------------- Kibana Module --------------------------------
- module: kibana
  # All logs
  log:
    enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
#------------------------------- Logstash Module -------------------------------
#- module: logstash
  # logs
  #log:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    # var.paths:
  # Slow logs
  #slowlog:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
#------------------------------- Mongodb Module -------------------------------
#- module: mongodb
  # Logs
  #log:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
#-------------------------------- MySQL Module --------------------------------
#- module: mysql
  # Error logs
  #error:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
  # Slow logs
  #slowlog:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
#--------------------------------- Nats Module ---------------------------------
- module: nats
  # All logs
  log:
    enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
#-------------------------------- Nginx Module --------------------------------
#- module: nginx
  # Access logs
  #access:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
  # Error logs
  #error:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
#------------------------------- Osquery Module -------------------------------
- module: osquery
  result:
    enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # If true, all fields created by this module are prefixed with
    # `osquery.result`. Set to false to copy the fields in the root
    # of the document. The default is true.
    #var.use_namespace: true
#------------------------------ PostgreSQL Module ------------------------------
#- module: postgresql
  # Logs
  #log:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
#-------------------------------- Redis Module --------------------------------
#- module: redis
  # Main logs
  #log:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths: ["/var/log/redis/redis-server.log*"]
  # Slow logs, retrieved via the Redis API (SLOWLOG)
  #slowlog:
    #enabled: true
    # The Redis hosts to connect to.
    #var.hosts: ["localhost:6379"]
    # Optional, the password to use when connecting to Redis.
    #var.password:
#----------------------------- Google Santa Module -----------------------------
- module: santa
  log:
    enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the the default path.
    #var.paths:
#------------------------------- Traefik Module -------------------------------
#- module: traefik
  # Access logs
  #access:
    #enabled: true
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
    # Input configuration (advanced). Any input configuration option
    # can be added under this section.
    #input:
#=========================== Filebeat inputs =============================
# List of inputs to fetch data.
filebeat.inputs:
# Each - is an input. Most options can be set at the input level, so
# you can use different inputs for various configurations.
# Below are the input specific configurations.
# Type of the files. Based on this the way the file is read is decided.
# The different types cannot be mixed in one input
#
# Possible options are:
# * log: Reads every line of the log file (default)
# * stdin: Reads the standard in
#------------------------------ Log input --------------------------------
- type: log
  # Change to true to enable this input configuration.
  enabled: false
  # Paths that should be crawled and fetched. Glob based paths.
  # To fetch all ".log" files from a specific level of subdirectories
  # /var/log/*/*.log can be used.
  # For each file found under this path, a harvester is started.
  # Make sure not file is defined twice as this can lead to unexpected behaviour.
  paths:
    - /var/log/*.log
    #- c:\programdat...