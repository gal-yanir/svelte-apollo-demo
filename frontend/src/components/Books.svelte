<script>
  import { getClient, query } from "svelte-apollo";
  import { fly } from "svelte/transition";
  import { GET_BOOKS } from "../queries";

  const client = getClient();
  const books = query(client, { query: GET_BOOKS });
</script>

<style>
  ul {
    list-style-type: none;
  }
  li {
    padding: 10px 0;
  }
</style>

<ul>
  {#await $books}
    Loading...
  {:then result}
    <p>Total Books: {result.data.books.length}</p>
    <hr />
    {#each result.data.books as book, index (book)}
      <li in:fly={{ x: 100, duration: 1000 }}>{book.title} by {book.author}</li>
    {/each}
  {:catch error}
    Error:
    {error}
  {/await}
</ul>
