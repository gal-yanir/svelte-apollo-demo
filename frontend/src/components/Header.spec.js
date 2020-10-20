import Header from "./Header.svelte";
import { render } from "@testing-library/svelte";

it("its works", async () => {
  const { getByTestId } = render(Header);
  const header = getByTestId("header");

  expect(header.textContent).toBe("Svelte Books");
});
