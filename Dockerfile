# Update the NODE_VERSION arg in docker-compose.yml to pick a Node version: 18, 16, 14
#ARG NODE_VERSION=16
#FROM mcr.microsoft.com/devcontainers/javascript-node:${NODE_VERSION}

FROM mcr.microsoft.com/devcontainers/base:debian
# VARIANT can be either 'hugo' for the standard version or 'hugo_extended' for the extended version.
ARG VARIANT=hugo
# VERSION can be either 'latest' or a specific version number
ARG VERSION=latest


# Download Hugo (and a few other utilities)
RUN apt-get update && apt-get install -y ca-certificates openssl git curl hugo && \
    rm -rf /var/lib/apt/lists/*


# Hugo dev server port
EXPOSE 1313

# [Optional] Uncomment this section to install additional OS packages you may want.
#
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# [Optional] Uncomment if you want to install more global node packages
# RUN sudo -u node npm install -g <your-package-list-here>