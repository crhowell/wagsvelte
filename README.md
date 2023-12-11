# wagsvelte
Wagtail/Django/Gunicorn + Svelte + Nginx environment running with Docker Compose

## Container Images
- python:3.11-slim-buster
- nginx:stable-alpine
- postgres:16.1-alpine
- node:lts-slim  (latest)

## Main Dependency Versions
- Django 5.x
- Wagtail 5.x
- Gunicorn 21.x
- Black 23.x
- Flake8 6.x
- Svelte 4.x
- Vite 5.x

## Instructions to run
Docker/Docker compose is required. The containers take ~10s to ~20s to come up.

From the root project directory, to get the containers built and up and running:

```
docker compose up
```

or to bring them up in background
```
docker compose up -d
```

To view the logs of all service containers
```
docker compose logs
```

### Notes
- Nginx is reachable on port 80, will serve Svelte static files out on `http://localhost/`
- Wagtail/Django is meant to act as an API/Headless CMS and reachable `http://localhost/api/` but you can reach the CMS admin at `http://localhost/backend/admin`. This is being proxy passed by nginx.
- Wagtail/Django dev server is directly reachable `http://localhost:8000/api` and `http://localhost:8000/backend/admin` - hot reload is enabled.
- Svelte (vite dev server) is directly reachable at `http://localhost:3000/` - hot reload is enabled.
