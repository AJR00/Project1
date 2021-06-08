# Project1
Contained is YAML files, Bash scripts, and Network Diagrams
## Automated ELK Stack Deployment
 
The files in this repository were used to configure the network depicted below.
https://github.com/AJR00/Project1/blob/main/Diagrams/Full%20Network.PNG
 
These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.
 
  - https://github.com/AJR00/Project1/blob/main/YAML/install-elk.yml
 
This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build
 
 
### Description of the Topology
 
The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.
 
Load balancing ensures that the application will be highly responsive, in addition to restricting attacks to the network. Load balancers protect from DDoS attacks, authenticate users, and protect from emerging threats ensuring that there is always a connection for users. The advantage to a jump box is a single secure point of access.
 
Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the jumpbox and system network.
filebeat watches for any changes and when they have occurred. 
Metricbeat takes metrics and statistics that it collects and sends them to other programs like elastic search or logstash
 
The configuration details of each machine may be found below.
 
| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| Web1     | Server   | 10.0.0.5   | Linux            |
| Web2     | Server   | 10.0.0.6   | Linux            |
| ELK      | Server   | 10.1.0.4   | Linux            |
 
### Access Policies
 
The machines on the internal network are not exposed to the public Internet. 
 
Only the JumpBox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: 70.177.163.168
 
Machines within the network can only be accessed by the JumpBox.
-JumpBox 10.0.0.4
 
A summary of the access policies in place can be found in the table below.
 
| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/No              | 70.177.163.168       |
| Web1     | No                  | 10.0.0.4             |
| Web2     | No                  | 10.0.0.4             |
| ELK      | No                  | 10.0.0.4             |
 
### Elk Configuration
 
Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because you can run multiple commands for different servers off of a single code.
 
 
The playbook implements the following tasks:
- install: docker.io
- install: python3-pip
- install: docker
- increase virtual memory
- download and launch a docker elk container
 
The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.
https://github.com/AJR00/Project1/blob/main/Docker%20ps.PNG
 
### Target Machines & Beats
This ELK server is configured to monitor the following machines: Web1 10.0.0.5 & Web2 10.0.0.6
 
We have installed the following Beats on these machines: Filebeat and Metricbeat
 
These Beats allow us to collect the following information from each machine:
Filebeat collects what changes are done and when. Metricbeat metrics and statistics.
 
### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 
 
SSH into the control node and follow the steps below:
- Copy the filebeat-configuration.yml file to /etc/ansible/files/filebeat-configuration.yml.
- Update the /etc/ansible/host file to include Web serves and ELK IP’s
- Run the playbook, and navigate to http://20.98.205.44:5601/app/kibana to check that the installation worked as expected.
 
ansible-playbook filebeat-playbook.yml to install filebeat
Ansible-playbook metricbeat-playbook.yml to install metricbeat
