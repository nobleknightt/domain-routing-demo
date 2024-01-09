# Domain Routing with Flask and Nginx

### Prerequisites

1. **Install Docker:**
  Make sure you have Docker installed on your machine. You can download it from the [official Docker website](https://www.docker.com/get-started).

2. **Run the Docker containers:**

    ```bash
    docker-compose up
    ```

2. **Access the application:**

    - Open your web browser and visit `http://example.com` and `http://blog.example.com`. Since this is a local setup, you'll need to update your local `hosts` file to map these domains to `127.0.0.1`.

    - Add the following lines to your `/etc/hosts` file (Linux/macOS) or `C:\Windows\System32\drivers\etc\hosts` file (Windows):

        ```
        127.0.0.1 example.com
        127.0.0.1 blog.example.com
        ```

    - Now, try accessing `http://example.com` and `http://blog.example.com` again.


### FAQs

1. What is use of `:ro` in file `compose.yaml`?
> In the Docker Compose configuration, the `:ro` at the end of the volume mount (`/etc/nginx/nginx.conf:ro`) stands for "read-only." This means that the file or directory from the host machine is mounted into the container in read-only mode.
> In the case of the Nginx container, the `nginx.conf` file is mounted into the container at the path `/etc/nginx/nginx.conf`, and it is marked as read-only (`:ro`). This ensures that the Nginx container can read the configuration but cannot modify it. It's a good practice to use read-only mounts for configuration files to enhance security and prevent accidental modifications within the container.

### Why?
- [**What is a DNS CNAME record?**](https://www.cloudflare.com/en-gb/learning/dns/dns-records/dns-cname-record/)
