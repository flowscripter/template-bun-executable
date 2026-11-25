# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

Project template for a cross-platform Bun executable with ffi native library and Bun library dependencies (`@flowscripter/template-bun-executable`). Demonstrates a minimal Bun executable that calls into both a Bun library and a Rust FFI library.

## TypeDoc

`bunx typedoc --readme none index.ts` generates docs with no warnings. Entry point is `index.ts`.

## Git Remote

Remote uses SSH: `git@github.com:flowscripter/template-bun-executable`

## tsconfig.json notes

Has `"types": ["bun", "node"]` under `compilerOptions`.

## Commands

```bash
# Install
bun install

# Run directly
bun run index.ts

# Test (Bun built-in runner)
bun test

# Lint and format
bunx oxfmt
bunx oxlint index.ts src/ tests/

# Compile to standalone executable
bun build index.ts --compile --outfile /tmp/template-bun-executable
```

Functional tests use Python Behave + pexpect against the compiled executable -- see `functional_tests/README.md`.

## Architecture

- `index.ts` -- entry point, calls `hello()` and re-exports from `src/hello.ts`
- `src/hello.ts` -- core logic; `hello()` logs greetings via `@flowscripter/template-bun-library` and `@flowscripter/template-bun-rust-library`
- `tests/hello_test.ts` -- unit test for `hello()`
- `functional_tests/` -- Python Behave + pexpect tests against the compiled binary
