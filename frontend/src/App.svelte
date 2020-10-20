<script>
  import Books from "./Books.svelte";
  import ApolloClient from "apollo-boost";
  import { setClient } from "svelte-apollo";

  const client = new ApolloClient({
    uri: "http://localhost:4000/graphql",
  });

  setClient(client);
</script>

<style>
  main {
    font-family: sans-serif;
    text-align: center;
  }
</style>

<main>
  <h1>Svelte Books</h1>
  <Books />
</main>
