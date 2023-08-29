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

## Example Usage

```yaml
uses: NodleCode/action-try-runtime
with:
	url: 'https://rpc.nodleprotocol.io'
	runtime: 'path/to/runtime.wasm'
```

## Wishlist

- [ ] set outputs to something useful if possible