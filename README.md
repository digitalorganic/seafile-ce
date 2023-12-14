# seafile-ce

seafile version latest vesion
* docker
* traefik with letsencrypt


Step
1. create acme.json
```sh
touch traefik/acme.json && chmod 600 traefik/acme.json
```

2. set password for traefik dashboard
https://www.web2generators.com/apache-tools/htpasswd-generator
In this docker using
```
username: tfadmin
password: change.me.please
```
edit inside file [traefik_secure.toml](traefik/traefik_secure.toml)


3. Set email for letsencrypt resolver
[traefik.toml](traefik/traefik.toml)

```yaml
[certificatesResolvers.lets-encrypt.acme]
  email = "name@example.com"
```

