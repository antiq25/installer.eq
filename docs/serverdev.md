

# Ideal command to use httrack with on sites that have robots protection

httrack "http://example.com" -O "my_website" -%v --robots=0 -r10 -A100000 -%k -F "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.3"


# SSH / SCP commands

scp -r /path/to/your/directory username@your.server.ip:/path/on/server/

