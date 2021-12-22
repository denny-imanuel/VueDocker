FROM node:16.10.0
# install vue cli
RUN npx --package @vue/cli vue
# copy source codes
WORKDIR /app
ENV PATH=${PATH}:/app
COPY . .
# install modules
RUN npm install
# run application
CMD npm run build
