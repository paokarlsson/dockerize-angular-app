FROM node:14-alpine as build
COPY . ./src
WORKDIR /src
RUN npm install
RUN npm run build

FROM nginx:latest
COPY --from=build /src/dist/app /usr/share/nginx/html
EXPOSE 80