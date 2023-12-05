# Try Runtime Github Actions (docker based)

This action uses [`try-runtime-cli`](http://github.com/paritytech/try-runtime-cli) to test your runtime migrations.
It will expect to have a snapshot passed as an argument and otherwise will take it for you if it doesn't exists yet.

## Inputs

### `url`

**Required** URL of the node to take a snapshot from.

### `snap`

Path to a previsouly taken snapshot, if doesn't exists we will create it.

### `runtime`

**Required** Path to a try-runtime enabled runtime to test migrations for.

> You runtime must be compiled with `try-runtime` turned on.

### `checks`

Checks to run, default to `all`.

### `options`

Cmd line options for try-runtime for instance `options: "--disable-idempotency-checks"`

## Example Usage
### Minimal use case

```yaml
uses: NodleCode/action-try-runtime
with:
  url: 'https://rpc.nodleprotocol.io'
  runtime: 'path/to/runtime.wasm'
```

### Use case with some more options
```yaml
- name: Run try-runtime
  uses: NodleCode/action-try-runtime@v0.5.1
  with:
    url: 'https://rpc.nodleprotocol.io'
    snap: snapshots/eden-snapshot-full
    runtime: try_runtime/runtime_eden.wasm
    checks: "all"
    options: "--disable-idempotency-checks"

```
