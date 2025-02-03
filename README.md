# Xilriws

Unlike [Swirlix](https://github.com/UnownHash/Swirlix-Public), Xilriws doesn't use a 3rd party, but a real browser instead. 
This has the advantage of being free and not requiring an account, but might result in some issues unique to your system. 
As such, a docker installation is highly recommended, even if the rest of your setup isn't dockerized.

## Installation

1. `git clone https://github.com/youcanthideit/Xilriws-Public && cd Xilriws`
2. `docker build . -t xilriws:local`
3. Create a `proxies.txt` file. Each line should have one proxy url. (i.e. `ip:port` or `http://user:pass@ip:port`)
4. `cp docker-compose.yml.example docker-compose.yml`
5. `docker compose up -d`

in your Dragonite config, add: 

```toml
[general]
remote_auth_url = "http://[ip of server using it]:5090/api/v1/login-code"
```

this assumes you have everything in the same docker network. if you're hosting it externally, change the hostname to
something else accordingly.

Optionally, you may `cp xilriws.json.example config.json` to adjust certain parameters.

### Update

1. `git pull`
2. `docker build . -t xilriws:local`
3. `docker compose restart`
