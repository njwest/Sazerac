<template>
  <div id="app">
    <div class="container h-100">
      <div class="row h-100 justify-content-center align-items-center">
        <div class="align-self-center">
          <h1>{{ msg }}</h1>
          <h2>The following was loaded over Graphql:</h2>
          <h1>User: {{ user.name }}</h1>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import gql from 'graphql-tag'

export default {
  name: 'app',
  data () {
    return {
      msg: 'Welcome to Your Vue.js + GraphQL App, powered by Elixir',
      user: ""
    }
  },
 apollo: {
    // Apollo  options
    user: gql`{
      user(id: "1"){
        name
      }
    }`,
  }
}
</script>

<style lang="scss">
@import '../node_modules/bootstrap/scss/bootstrap.scss';
</style>

<style lang="scss">
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

h1, h2 {
  font-weight: normal;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  display: inline-block;
  margin: 0 10px;
}

a {
  color: #42b983;
}

.greeting-card{
  min-height: 500px;
  max-width: 600px;
}

</style>
