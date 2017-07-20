<template>
  <div>
    <div class="joke">{{ joke.value }}</div>
    <br/>
    <div v-if="isLoading">
      <img src="https://www.aiag.org/Content/images/admin_throbber.gif">
    </div>
    <div v-else>
      <button class="next" @click.prevent="nextJoke">Next Joke</button>
    </div>
  </div>
</template>

<script>
  export default {
    created(){
      this.nextJoke();
    },
    name: 'joke',
    data(){
      return {
        isLoading: false,
        joke: {}
      }
    },
    methods: {
      nextJoke(){
        this.isLoading = true;
        this.$http.get('https://api.chucknorris.io/jokes/random')
          .then(response => {
            this.isLoading = false;
            this.joke = response.body;
          });
      }
    }
  }
</script>
<style>
  .joke{
    margin: auto;
    width:500px;
    padding:3px;
    border:1px solid gray;
    font: 20px arial !important;
  }

  .next{
    width:100px;
    height:30px;
    font:15px arial;
  }
</style>
