# Pi-hole - DNS over HTTPS using Cloudflared

Based on [this repo](https://github.com/apavamontri/pi-hole-cloudflared-docker) but docker image not using official `cloudflared` image based on [this thread](https://github.com/cloudflare/cloudflared/issues/987) ([1](https://github.com/ZoeyVid/cloudflared))

1. set password in `./web-password/password.txt`

2. run `./start-pihole.sh`
   * pihole UI accessible on `http://<raspberry_pi_ipaddr>:8061/admin`


### Test DNS over HTTPs is working
---

* [Cloudflare test 1](https://www.cloudflare.com/ssl/encrypted-sni/#dns)
* [Cloudflare test 2](https://1.1.1.1/help)



### [General DNS tools](https://www.routersecurity.org/testdns.php)
---

* [Show DNS resolvers](https://dnscheck.tools/)
* [DNS Leak Test](https://www.perfect-privacy.com/en/tests/dns-leaktest)