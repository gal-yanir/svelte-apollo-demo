<script>
  let count = 1;

  $: doubled = count * 2;
  $: quadrupled = doubled * 2;

  function handleClick() {
    count += 1;
  }

  function reset() {
    count = 1;
  }
</script>

<style>
  .block {
    background: lightgray;
    padding: 10px;
    margin: 10px;
    border-radius: 10px;
  }
</style>

<div class="block">
  <button on:click={handleClick}> Count: {count} </button>
  <button on:click={reset}>Reset</button>
  <p>{count} * 2 = {doubled}</p>
  <p>{doubled} * 2 = {quadrupled}</p>
</div>
