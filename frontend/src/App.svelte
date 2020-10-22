<script>
  import Header from "./components/Header.svelte";
  import Coustomer from "./components/Customer.svelte";
  import ApolloClient from "apollo-boost";
  import { setClient } from "svelte-apollo";

  const client = new ApolloClient({
    uri: "http://localhost:3000/graphql",
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
  <Header />
  <Coustomer />
</main>
