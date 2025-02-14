FROM redis:latest

# Copy the redis.conf file from the repo to the container's config directory
COPY redis.conf /usr/local/etc/redis/redis.conf

# Expose Redis port
EXPOSE 6380

# Use the custom redis.conf to start Redis
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
