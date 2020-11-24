<script>
  import { name } from "../store";

  let value;

  function handleAppend() {
    $name += "," + value;
  }

  function handleSet() {
    $name = value;
  }
</script>

<input type="text" bind:value />
<button on:click={handleAppend}>Append</button>
<button on:click={handleSet}>Set</button>
