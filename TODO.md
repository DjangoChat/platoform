# What to do in the next project

- use uv as a package manager & project manager with pyproject.toml(use dependencies groups for different environments)
- use ruff linter, formatter and sorting (backend)
- use time-series uuid
- use default autofield as uuid instead of creating
- Use Django interpolation for naming model tables
- use security SAST, DAST, IaC Scans, SCA
- use with django/python as SAST (sonarqube, bandit, and Semgrep)
- scanning dependency (pip-audit, [Safety-CLI](https://pyup.io/safety/?utm_source=chatgpt.com))
- use for DAST [OWASP ZAP](https://www.zaproxy.org?utm_source=chatgpt.com)
- add to every django as much info on the attribues - specially on relationships (FK), eg: related name, plural, the name of the relationship must be the string with the app to avoid circular relationships
- use fastapi

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

## TO-DO BACKEND

- [ ] add aws ses for verify email
- [ ] add openid and oauth2 with gmail
- [ ] encription of chats
- [ ] add https://pypi.org/project/django-countries-states-cities/ to profile
- [ ] create a logs app
- [ ] modify the create_price and create_plan commands so it get the stipre_id if created
- [ ] restructure completely the authorization model and logic so it does not depent of the table name???
- [ ] add a cfrs token to the froms login/sinin
- [ ] anti bot library for authorization???
- [ ] add validation to file extension on chat
- [ ] refactorize login endpoint

## TO-DO FRONTEND

- [ ] add a react indexdb plugin for storage chats
- [ ] add origin validator on websockets (https://channels.readthedocs.io/en/stable/topics/security.html)
- [ ] use server-send event(sse) on django for notifications
- [ ] remember me checkbutton on login

## TO-DO DOCKER

- [ ] on production, use vllm with Qwen3-8B
- [ ] add UI for db on docker?

## TODAY

- look after sse django?

# CHECK/INVESTIGATE

- check wheter the refresh token is used before the access token has experired of after
- check how csrf work on django

## AT THE END

- add cache
- customize the admin panel UI filters, searches, ...

## USEFULL INFO

- fake data:
  - testuser1@gmail.com
  - I"1Cb3-W+9T(

- Fake data 2:
  - joaouf@gmail.com
  - K_srS0NM95gJ

```
api_view
    ↓
APIView
    ↓
GenericAPIView
    ↓
GenericViewSet
    ↓
ViewSet
    ↓
ModelViewSet
```
