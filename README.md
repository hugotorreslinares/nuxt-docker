# Nuxt Docker App

This is a Nuxt.js application configured to run in Docker.

## Running with Docker

To run the application using Docker Compose:

```bash
# Build and start the containers
docker-compose up -d

# View logs
docker-compose logs -f
```

The application will be available at http://localhost:3000

## Development without Docker

```bash
# Install dependencies
npm install

# Start development server
npm run dev
```

## Environment Variables

The application uses the following environment variables when running in Docker:

- `NITRO_HOST`: Set to "0.0.0.0" to allow external connections
- `NITRO_PORT`: Set to "3000" for the application port

## Building for Production

```bash
# Build the Docker image
docker-compose build

# Run in production mode
docker-compose up -d
```
