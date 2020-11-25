<script>
  import { tweened } from "svelte/motion";
  import { cubicOut } from "svelte/easing";

  const progress = tweened(0, {
    duration: 500,
    easing: cubicOut,
  });

  for (let i = 1; i <= 10; i++) {
    setTimeout(function timer() {
      progress.set(i / 10);
    }, i * 500);
  }
</script>

<style>
  progress {
    display: block;
    width: 100%;
    margin-bottom: 10px;
  }
</style>

<progress value={$progress} />

<button on:click={() => progress.set(0)}> 0% </button>

<button on:click={() => progress.set(0.25)}> 25% </button>

<button on:click={() => progress.set(0.5)}> 50% </button>

<button on:click={() => progress.set(0.75)}> 75% </button>

<button on:click={() => progress.set(1)}> 100% </button>
