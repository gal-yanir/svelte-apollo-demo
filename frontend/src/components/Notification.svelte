<script>
  import { fly } from "svelte/transition";

  let visible = true;
</script>

<style>
  .centered {
    position: absolute;
    right: 60px;
    transform: translate(-50%, -50%);
  }
  span {
    position: absolute;
    transform: translate(-50%, -50%);
    font-size: 1em;
    background: aqua;
    padding: 10px;
    border-radius: 5px;
  }
</style>

<label for="check">
  <input type="checkbox" bind:checked={visible} />
  showing notification
</label>

{#if visible}
  <div class="centered" transition:fly={{ y: -250 }}>
    <span>notification</span>
  </div>
{/if}
