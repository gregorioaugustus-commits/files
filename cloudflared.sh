apt-get update -y && apt-get upgrade -y
mkdir -p --mode=0755 /usr/share/keyrings
curl -fsSL https://pkg.cloudflare.com/cloudflare-public-v2.gpg | tee /usr/share/keyrings/cloudflare-public-v2.gpg >/dev/null
echo 'deb [signed-by=/usr/share/keyrings/cloudflare-public-v2.gpg] https://pkg.cloudflare.com/cloudflared any main' | tee /etc/apt/sources.list.d/cloudflared.list
apt-get update && apt-get install cloudflared
cloudflared service install eyJhIjoiYmQ4MWUwMWMzODg1Y2MwMjFlOTM1N2MwMmRlYjZlNGEiLCJ0IjoiMWI0ZmZiNTAtNjQ1Ni00MzBmLWFjODAtYzhmYzIxOTA0MzI2IiwicyI6Ik5EZGxNVFEyTkRRdE9URmlaUzAwTURrNExUaGhPR1F0WmpSaVpqUmxOVFUyTXpsbSJ9