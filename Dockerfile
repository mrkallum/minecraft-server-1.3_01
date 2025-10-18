# Use a lightweight Linux image with Java installed
FROM openjdk:8-jre-slim

# Set working directory
WORKDIR /app

# Copy server files into the container
COPY . /app

# Expose Minecraft default port
EXPOSE 25565

# Run the server
CMD ["java", "-Xmx512M", "-Xms512M", "-jar", "minecraft_server.jar", "nogui"]
