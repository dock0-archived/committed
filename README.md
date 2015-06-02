dock0/committed
=======

[![Automated Build](http://img.shields.io/badge/automated-build-green.svg)](https://registry.hub.docker.com/u/dock0/committed/)
[![MIT Licensed](http://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)

Container to run [committed](https://github.com/akerl/committed), a Twilio endpoint for checking GitHub commit streak status

## Usage

```
docker pull dock0/committed
docker run -d -p 80:80 dock0/committed
```

If you want it to support registration (remembering which user texts from which phone number), set COMMITTED_DB to true and set REDIS_URL such that Redis is accessible:

```
docker run -d -p 80:80 -e COMMITTED_DB=true -e "REDIS_URL=redis://user:password@host:port/db" dock0/committed
```

I'd recommend using [dock0/redis](https://github.com/dock0/redis), but I'll admit to being a bit biased.

## License

This repo is released under the MIT License. See the bundled LICENSE file for details.

