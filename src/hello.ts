import * as bunLib from "@flowscripter/template-bun-library";
import * as rustLib from "@flowscripter/template-bun-rust-library";

/**
 * Logs out some greetings.
 */
export function hello(): void {
  console.info("Hello");
  bunLib.world();
  console.info("Hello");
  rustLib.world();
}
