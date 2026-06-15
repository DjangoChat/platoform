## TO-DO BACKEND

- [ ] add aws ses for verify email
- [ ] add openid and oauth2 with gmail
- [ ] encription of chats
- [ ] add https://pypi.org/project/django-countries-states-cities/ to profile
- [ ] create a logs module
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

- test with postman - fast testing
- check coverage
- remove/edit/create test
- continues websockets
- look after sse django?

# CHECK/INVESTIGATE

- check wheter the refresh token is used before the access token has experired of after
- check how csrf work on django

## AT THE END

- add cache
- customize the admin panel UI filters, searches, ...

## REFERENCES

- https://docs.stripe.com/testing?testing-method=card-numbers
- https://github.com/PikoCanFly/JWT-HTTPCookies-Django-DRF-NEXT.JS/blob/main/backend/users/views.py
- https://docs.ollama.com/api/introduction
- https://ollama.com/library/qwen3?utm_source=chatgpt.com

## USEFULL INFO

- fake data:
  - testuser1@gmail.com
  - I"1Cb3-W+9T(

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
