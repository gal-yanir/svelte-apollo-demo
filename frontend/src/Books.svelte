<script>
  import { getClient, query } from "svelte-apollo";
  import { GET_BOOKS } from "./queries";

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
    {#each result.data.books as book}
      <li>{book.title} by {book.author}</li>
    {/each}
  {:catch error}
    Error:
    {error}
  {/await}
</ul>
