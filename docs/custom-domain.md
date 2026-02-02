# Custom Domain (GitHub Pages)

If you plan to serve the frontend from GitHub Pages, add a `CNAME` file at the repository root
with your custom domain (for example `app.example.com`). GitHub Pages will then serve the site
from that custom domain instead of the default `ram-1212.github.io` URL.

## Steps
1. Choose the custom domain you want to use.
2. Create a `CNAME` file at the repository root containing **only** the domain name.
3. Configure your DNS provider to point the domain to GitHub Pages.
4. Enable GitHub Pages in the repository settings.

> Note: Do not add a `CNAME` file until you know the final domain; the file must contain the exact domain.
