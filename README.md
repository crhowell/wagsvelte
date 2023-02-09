# wagsvelte
Wagtail/Django/Gunicorn + Svelte + Nginx environment running with Docker Compose

## Container Images
- python:3.10-slim-buster
- nginx:stable-alpine
- postgres:14-alpine
- node:19-alpine

## Main Dependency Versions
- Django 4.x
- Wagtail 3.x
- Gunicorn 20.x
- Svelte 3.x
- Vite 4.x

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
- Wagtail/Django dev server is directly reachable `http://localhost:8000/api` and ``http://localhost:8000/backend/admin` - hot reload is enabled.
- Svelte (vite dev server) is directly reachable at `http://localhost:3000/` - hot reload is enabled.
