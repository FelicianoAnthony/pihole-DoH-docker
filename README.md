# Pi-hole - DNS over HTTPS ([Cloudflared](https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/configure-tunnels/local-management/as-a-service/))
this script assumes its being run on a raspberry pi Bullseye OS (64 bit) with a static IP address assigned to it

1. create `./web-password/password.txt` file & add pihole UI password
   
2. run `new-server-setup.sh`
   * update & upgrade
   * install docker
   * add user running script to docker group
   * reboots machine 

3. run `./start-pihole.sh`
   * runs `docker-compose.yml` file
   * pihole UI accessible on `http://<raspberry_pi_ipaddr>:8061/admin`


### Test DNS over HTTPs is working
---

* [Cloudflare test 1](https://www.cloudflare.com/ssl/encrypted-sni/#dns)
* [Cloudflare test 2](https://1.1.1.1/help)



### [General DNS tools](https://www.routersecurity.org/testdns.php)
---

* [Show DNS resolvers](https://dnscheck.tools/)
* [DNS Leak Test](https://www.perfect-privacy.com/en/tests/dns-leaktest)

### Ads
* [Ad blocking test](https://d3ward.github.io/toolz/adblock.html)


## Blacklists
* https://raw.githubusercontent.com/d3ward/toolz/master/src/d3host.txt
* https://raw.githubusercontent.com/d3ward/toolz/master/src/d3host.adblock



https://www.grc.com/x/ne.dll?bh0bkyd2