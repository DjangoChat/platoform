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
- [ ] use time-series uuid
- [ ] use fastapi
- [ ] Use Django interpolation for orm table's names
- [ ] use default autofield as uuid instead of creating
- [ ] use uv as a package manager & project manager with pyproject.toml(use dependencies groups for different environments)
- [ ] use security SAST, DAST, IaC Scans, SCA
- [ ] use with django/python as SAST (sonarqube, bandit, and Semgrep)

# What to study before the next project

- Check types of Authorization Systems:
  - Time authentication
  - Risk-based authentication
  - Role-based access control
  - Rule-based access control
  - Atribute-based access control
  - Quota-based access control
- Zero-trust as code
- Study query optimization
  - Denormalization
  - Indexing strategy && Composite Indexes
  - Partition (rare case)
- redux-persist

# What you have learn

1. Package Manager: A package manager install python packages (pip, uv)
2. Project Manager: Help manage an entire project (proetry, uv, hatch)
3. Packaging Tools: These tools turn your source code into something installable (setuptools, poetry-core)
4. pyproject.toml is a config file that is compatible with multiple technologies
