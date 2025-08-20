# Use the latest V2Ray image from a trusted source.
FROM teddysun/v2ray:latest

# Expose the correct container port (8080) for Google Cloud Run.
EXPOSE 8080

# Copy the VLESS configuration file into the container.
# Make sure this file is named "config.json" and is in the same directory.
COPY config.json /etc/v2ray/config.json

# Command to run V2Ray with the specified configuration file.
# The `run` subcommand is standard for V2Ray.
# The full path to the v2ray executable might be necessary for some images.
CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
