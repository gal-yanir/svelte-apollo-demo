<script>
  import Header from "./components/Header.svelte";
  import Display from "./components/Display.svelte";
  import Calc from "./components/Calc.svelte";
  import ProgressBar from "./components/Progress.svelte";
  import Coustomer from "./components/Customer.svelte";
  import Notification from "./components/Notification.svelte";
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
  <Notification />
  <ProgressBar />
  <Display />
  <Calc />
  <Coustomer />
</main>
