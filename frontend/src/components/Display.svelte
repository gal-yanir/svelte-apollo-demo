<script>
  import { name } from "../store";
  import Edit from "./Edit.svelte";
</script>

<style>
  .block {
    background: #f4f4f4;
    padding: 10px;
    margin: 10px;
    border-radius: 10px;
  }
</style>

<div class="block">
  <p>The Name Is {$name}</p>
  <Edit />
</div>
