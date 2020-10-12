# Dockerfile for production builds
<<<<<<< HEAD
FROM reactioncommerce/node-prod:12.14.1-v3

=======
#FROM reactioncommerce/reaction/node-prod:12.14.1-v3
FROM reactioncommerce/node-prod:12.14.1-v3
>>>>>>> 19a12fa7c2259cc0335f5aff010eedcf0abbd9a0
# The `node-prod` base image installs NPM deps with --no-scripts.
# This prevents the `sharp` lib from working because it installs the binaries
# in a post-install script. We copy their install script here and run it.
# hadolint ignore=DL3003,SC2015
RUN cd node_modules/sharp && (node install/libvips && node install/dll-copy && prebuild-install) || (node-gyp rebuild && node install/dll-copy)

# The base image copies /src but we need to copy additional folders in this project
COPY --chown=node:node ./public ./public
COPY --chown=node:node ./plugins.json ./plugins.json
