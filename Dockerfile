FROM node:16-alpine
WORKDIR /app
COPY package.json .
RUN npm install
RUN npx expo install react-native-web@~0.18.9 react-dom@18.1.0
RUN npx expo install @expo/webpack-config@^0.17.2
RUN set REACT_NATIVE_PACKAGER_HOSTNAME=192.168.1.135
COPY . .
EXPOSE 19000 19001 19002
CMD ["npm", "start"]
