import App from './App.svelte';

const app = new App({
	target: document.body,
	props: {
		name: 'Hello World 1'
	}
});

export default app;