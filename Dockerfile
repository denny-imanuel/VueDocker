FROM node:16.10.0
# install vue cli
RUN npx --package @vue/cli vue
# copy source codes
WORKDIR /app
ENV PATH=${PATH}:/app
COPY . .
# build and run
EXPOSE 8080
RUN npm install
CMD npm run serve
