# Vue-Norris
Chuck Norris Jokes using VueJS. Uses api.chucknorris.io to get random Chuck Norris jokes

# Demo
https://vue-norris.firebaseapp.com/

# Installation

## Using Docker
Make sure you have `docker` installed and properly setup
```
make image
make install
make vue-norris
```

Your Vue-Norris app is running and is accessible on localhost:5000!

## Without Docker
Make sure you have `nodejs` installed and properly setup
```
npm install -g vue-cli
npm install
npm run dev
```

Now this will run on port `8080` by default. However, if you get an error saying "port already in use", 
Go to `config/index.js` and change to whatever port you want on line #26. Then `run npm run dev` again.
