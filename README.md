The ulissi group has a moderate docker swarm of desktops/gpus available for data science and ML development. This repo is an example of how you can use this docker swarm for daily development. It has two helpful services:
* an ssh daemon that you can SSH into to use as a personal development environment
* a GPU-enabled jupyter server with the standard ASE/pymatgen/etc packages

but you are welcome to try other things!

# Setup instructions to use the docker swarm
1. Ask zack to make an account for you at the portainer interface to the docker swarm
2. Fork this repo https://github.com/zulissi/zulissi_docker_environment 
    * this represents the build configuration of your jupyter and ssh services. you can change these (add packages to install etc)
    * edit the username ARG "zulissi" in ssh/Dockerfile to the one you want available when you login via ssh
    * add your ssh public key to ssh/default_authorized_keys
      * If you're unsure what your public key is, make one with `ssh-keygen -t rsa -b 4096`, then copy the line in your `~/.ssh/id_rsa.pub` to authorized_keys
3. Make an account on docker hub https://hub.docker.com/
   * add a repository for each service you want
   * configure autobuild for each repository, pointing it to your github repo and correct folder. wait for your builds to finish on docker hub
4. Edit docker-compose.yml (replace/update each field that has a comment)
5. Go to portainer, click on the main swarm, then click on stacks on the left hand side. Make a stack name, then copy docker-compose.yml into the web editor, then deploy!

# Access
That's it! You have a really fast jupyter notebook that should stay alive, and an ssh account, and they both have access to /home/zulissi. There are many services or things that you could run (fast shells with gpu access, etc).
* you will have a permanent ssh shell at zulissi.duckdns.org:yoursshport
* you will have a jupyter server at yourusername.zulissi.duckdns.org:8888

# Adding services
You can add services by going to your stack, clicking editor, and deploying a new service. For example, 
