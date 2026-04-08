# Git submodule essential commands (copy-only reference)

clone parent repo with submodules

```
git clone --recurse-submodules https://github.com/ORG/platform.git
```

initialize submodules after a normal clone

```
git submodule update --init --recursive
```

# What to do in the next project

- [ ] use ruff linter, formatter and sorting (backend)

# What to study before the next project

- Check types of Authorization Systems:
  - Time authentication
  - Risk-based authentication
  - Role-base authentication
  - Quota-based access control
- Zero-trust as code
- Study query optimization
  - Denormalization
  - Indexing strategy && Composite Indexes
  - Partition (rare case)
