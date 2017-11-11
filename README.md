# minerd-docker
----
A docker container to easily deploy minerd.  I use this along with an ansible playbook to get minerd running on each of my virtual machines.

## Usage
`docker run mkeller/minerd -a cryptonight -o stratum+tcp://miningpool.url:port -u username -p password`

* `-a` - The algorithm to use... though the [minerd repo](https://github.com/OhGodAPet/cpuminer-multi#algorithms) says it only supports cyrptonight... so... `-a cryptonight` is your only option.
* `-o` - Your mining pool's url and port. *check with your mining pool for how to set this*
* `-u` - Is your username.  *check with your mining pool for how to set this*
* `-p` - This is the password for your account with your mining pool.  This is frequently just `-p x`.  *check with your mining pool for how to set this*

### Example
`docker run mkeller/minerd -a cryptonight -o stratum+tcp://mine.xmrpool.net:3333 -u 4Adq5EZWCJ2jh4kttRSoa3KegN3K3KVnkZdATgd1XQcnZt7cJmggXHkjXqrT3anyZ22j7DEE74GkbVcQFyH2nNiC3c7HGvC -p x -t 1`

You might notice the `-t` at the end there.  That limits the number of threads that minerd is allowed to use.  However, if you're running this on a single CPU host that also has other responsibilities like serving a PHP app, I strongly recommend using docker's [CPU limiting options](https://docs.docker.com/engine/admin/resource_constraints/#cpu).  You can then set it to use, *at most*, half of the CPU time available.  Alternatively you can also set the niceness of the process by using [nice](https://linux.die.net/man/1/nice).
