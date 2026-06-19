apt-get update -y && apt-get upgrade -y

# Add cloudflare gpg key
sudo mkdir -p --mode=0755 /usr/share/keyrings
curl -fsSL https://pkg.cloudflare.com/cloudflare-public-v2.gpg | sudo tee /usr/share/keyrings/cloudflare-public-v2.gpg >/dev/null

# Add this repo to your apt repositories
echo 'deb [signed-by=/usr/share/keyrings/cloudflare-public-v2.gpg] https://pkg.cloudflare.com/cloudflared any main' | sudo tee /etc/apt/sources.list.d/cloudflared.list

# install cloudflared
sudo apt-get update && sudo apt-get install cloudflared

sudo cloudflared service install eyJhIjoiYmQ4MWUwMWMzODg1Y2MwMjFlOTM1N2MwMmRlYjZlNGEiLCJ0IjoiMWI0ZmZiNTAtNjQ1Ni00MzBmLWFjODAtYzhmYzIxOTA0MzI2IiwicyI6Ik5EZGxNVFEyTkRRdE9URmlaUzAwTURrNExUaGhPR1F0WmpSaVpqUmxOVFUyTXpsbSJ9
