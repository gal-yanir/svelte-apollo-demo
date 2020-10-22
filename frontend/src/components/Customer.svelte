<script>
  import { getClient, query } from "svelte-apollo";
  import { fly } from "svelte/transition";
  import { GET_COUSTOMERS } from "../queries";

  const client = getClient();
  const customers = query(client, { query: GET_COUSTOMERS });
</script>

<style>
  ul {
    list-style-type: none;
  }
  li {
    padding: 10px 0;
  }
  .table-header {
    display: flex;
    justify-content: space-around;
    border: 1px solid gray;
    padding: 5px;
  }
</style>

<ul>
  {#await $customers}
    Loading...
  {:then result}
    <p>Total Coustomers: {result.data.customers.length}</p>
    <hr />
    {#each result.data.customers as coustomer, index (coustomer)}
      <li in:fly={{ x: 100, duration: 1000 }}>
        <div>
          <div>
            {coustomer.name}
            at email:
            {coustomer.email}
            & phone:
            {coustomer.phone}
          </div>
          <div>
            <div>invoices</div>
            <div class="table-header">
              <span>invoice No</span>
              <span>paymentStatus</span>
              <span>Total</span>
            </div>
            {#each coustomer.invoices as invoice}
              <span class="table-header">
                {invoice.invoiceNo}, paymentStatus:{invoice.paymentStatus}
              </span>
            {/each}
          </div>
        </div>
      </li>
    {/each}
  {:catch error}
    Error:
    {error}
  {/await}
</ul>
