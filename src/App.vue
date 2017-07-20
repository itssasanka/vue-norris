<template>
  <div id="app">
    <img
      class="main-img"
      src="http://funnypicturesplus.com/wp-content/uploads/2012/04/chuck-norris-onions.jpg"
    >
    <h3 style="{color:red;}">Chuck Norris Jokes ^_^ </h3>

    <joke></joke>
  </div>
</template>

<script>
  import Joke from './components/Joke'
  export default {
    name: 'app',
    components: {
        Joke
    }
  }
</script>

<style>
  #app {
    padding:5px;
    height:500px;
    border:1px dashed lightgray;
    text-align: center;
    color: #2c3e50;
    margin-top: 60px;
  }

  h3 {
    color: cyan;
    margin-top:3px;
    margin-bottom:40px;
  }

  .main-img {
    width: 100px;
    height: 100px;
  }
</style>
