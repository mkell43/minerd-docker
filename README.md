# minerd-docker
----
A docker container to easily deploy [minerd](https://github.com/OhGodAPet/cpuminer-multi).

## Usage
`docker run mkell43/minerd -a cryptonight -o stratum+tcp://miningpool.url:port -u username -p password`

* `-a` - The algorithm to use... though the [minerd repo](https://github.com/OhGodAPet/cpuminer-multi#algorithms) says it only supports cyrptonight... so... `-a cryptonight` is your only option.
* `-o` - Your mining pool's url and port. *check with your mining pool for how to set this*
* `-u` - Is your username.  *check with your mining pool for how to set this*
* `-p` - This is the password for your account with your mining pool.  This is frequently just `-p x`.  *check with your mining pool for how to set this*

## How Do I Get Started With Monero?

1. Start at [GetMonero.org](https://getmonero.org/).
2. Create a wallet at [MyMonero](https://mymonero.com/) or locally with the [Monero GUI Wallet](https://getmonero.org/downloads/).
3. Buy some Monero (XMR) at [HitBTC](https://hitbtc.com/?ref_id=5a00b3cb40b51)*.
4. Find a Monero mining pool at [MoneroPools](http://moneropools.com/) or use [MinerGate](https://minergate.com/a/2a9867be1a281fb8)** which makes getting started mining easy.
----
\* The link used was an affiliate link.  You can go there without the affiliate code via this link. -> [HitBTC](https://hitbtc.com/)

\** The link used was was an affiliate link.  You can go there without the affiliate code via this link. -> [MinerGate](https://minergate.com/)

## Don't Forget The Minerd Devs...
----
Send them some donations for their hard work.

* XMR: `42QWoLF7pdwMcTXDviJvNkWEHJ4TXnMBh2Cx6HNkVAW57E48Zfw6wLwDUYFDYJAqY7PLJUTz9cHWB5C4wUA7UJPu5wPf4sZ`
* BTC: `1WoLFumNUvjCgaCyjFzvFrbGfDddYrKNR`
