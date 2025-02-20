# template-bun-executable

[![version](https://img.shields.io/github/v/release/flowscripter/template-bun-executable?sort=semver)](https://github.com/flowscripter/template-bun-executable/releases)
[![build](https://img.shields.io/github/actions/workflow/status/flowscripter/template-bun-executable/release-bun-executable.yml)](https://github.com/flowscripter/template-bun-executable/actions/workflows/release-bun-executable.yml)
[![coverage](https://codecov.io/gh/flowscripter/template-bun-executable/graph/badge.svg?token=uWK0oWsBjr)](https://codecov.io/gh/flowscripter/template-bun-executable)
[![docs](https://img.shields.io/badge/docs-API-blue)](https://flowscripter.github.io/template-bun-executable/index.html)
[![license: MIT](https://img.shields.io/github/license/flowscripter/template-bun-executable)](https://github.com/flowscripter/template-bun-executable/blob/main/LICENSE)

> Project template for a cross-platform Bun executable with ffi native library
> and Bun library dependencies.

## Template Usage

Create a new Bun project using this as a template:

`bun create @flowscripter/template-bun-executable`

## Bun Module Usage

Add the module:

`bun add @flowscripter/template-bun-executable`

Use the module:

```typescript
import { world } from "@flowscripter/template-deno-executable";

world();
```

## Binary Executable Usage

Download and extract zip from:
https://github.com/flowscripter/template-bun-executable/releases

Run the executable: `./template-bun-executable`

**NOTE**: The executable is 10's of megabytes in size as the entire Bun runtime
is included.

**NOTE**: Due to this issue https://github.com/oven-sh/bun/issues/7208 the MacOS
executable is neither signed nor notarised. This means a "Developer cannot be
verified" error will be displayed when the CLI it is executed. This requires
explicitly allowing the CLI to be executed via:

_"System Settings" > "Privacy & Security" > "Security" > "Allow Anyway"_

## Functional Tests

Refer to [functional_tests/README.md](functional_tests/README.md)

## Development

Test:

`bun test`

Compile binary:

`bun build index.ts --compile --outfile /tmp/template-bun-executable`

**NOTE**: The following tasks use Deno as it excels at these and Bun does not
currently provide such functionality:

Format:

`deno fmt`

Lint:

`deno lint index.ts src/ tests/`

Generate HTML API Documentation:

`deno doc --html --name=template-bun-executable index.ts`

## Documentation

### Overview

Sample mermaid diagram to test rendering in markdown:

```mermaid
classDiagram
    Foo <|-- Bar
```

### API

Link to auto-generated API docs:

[API Documentation](https://flowscripter.github.io/template-bun-executable/index.html)

## License

MIT © Flowscripter
