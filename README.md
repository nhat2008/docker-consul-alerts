###  How to use consul-alert to alert in slack
1. Install Docker in the host
2. Modify the file: files/add-slack.sh with information: slack url, slack channel, slack bot name.
3. Change the checking scripts an interval in the files/alert.json
4. Install and run the consul agent:</br>
   4.1 Install directly to the host with the commands in https://www.consul.io/intro/getting-started/install.html</br>
   4.2 Install with docker commands: docker run -d -p 8400:8400 -p 8500:8500 -p 53:53/udp -h consul-server-node --name consul progrium/consul -server -bootstrap </br>
5. Get the IP address of the consul and replace the addr to localhost:8500 in tasks/main.yml
6. Install ansible
7. Run ansible commands to install consul-alert: ansible-playbook -i hosts service-discovery-alert.yml

    
