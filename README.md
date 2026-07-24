# NeuroConnect

This is an AI-powered messaging platform inspired by WhatsApp. Its primary purpose is to learn from users' conversations by analyzing the content of their responses to build personalized user profiles. Based on these profiles, the system recommends contacts who are most likely to engage in meaningful and enjoyable conversations, fostering more relevant and engaging social interactions.

## Technologies

- Backend: python, django, django-restframework, daphne, celery, redis, jwt, pytest, openapi, stripe
- Frontend: reactjs, typescript, vite, redux, mui
- Infrastructure: aws, terraform, docker
- AI: ollama, qwen3

## Features (what users can do)

## The process

## What I learned

1. Package Manager: A package manager install python packages (pip, uv)
2. Project Manager: Help manage an entire project (proetry, uv, hatch)
3. Packaging Tools: These tools turn your source code into something installable (setuptools, poetry-core)

## What could be improved

## How to run the project

Prerequisites: git, docker, docker-compose,

### Download all the repos

clone parent repo with submodules

```
git clone --recurse-submodules https://github.com/ORG/platform.git
```

initialize submodules after a normal clone

```
git submodule update --init --recursive
```

## Video

## REFERENCES

- https://docs.stripe.com/api
- https://docs.stripe.com/testing?testing-method=card-numbers
- https://github.com/PikoCanFly/JWT-HTTPCookies-Django-DRF-NEXT.JS/blob/main/backend/users/views.py
- https://docs.ollama.com/api/introduction
- https://ollama.com/library/qwen3?utm_source=chatgpt.com
- https://qwen.readthedocs.io/en/latest/index.html
- https://prometheus.io/docs/prometheus/latest/configuration/configuration/
- https://freedium-mirror.cfd/https://medium.com/@anas-issath/django-monitoring-observability-metrics-tracing-and-alerting-fa6babc31c32
