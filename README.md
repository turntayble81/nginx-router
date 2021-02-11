# nginx-router
Creates a Docker image for easily routing incoming traffic to various apps using nginx

To configure:

Create your nginx conf file. Use `templates/nginx-template.conf` as a starting point if need be.

Create your shell script for starting the container. Use `templates/start-router.template.sh` as a starting point.
    - The template exposes ports 80 and 443 to the host by default.
    - Update the mount point for your letsencrypt cert
    - Update the mount point for your nginx conf
    - Update the mount point for your htdocs dir, used for serving static content. Remove if not serving static content.

