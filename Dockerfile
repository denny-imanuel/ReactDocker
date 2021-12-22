FROM node:16.10.0
# install react cli
RUN npx create-react-app /app
# copy source codes
WORKDIR /app
ENV PATH=${PATH}:/app
COPY . .
# build and run
RUN npm install
CMD npm run start