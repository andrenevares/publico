<img src="https://www.djangoproject.com/m/img/logos/django-logo-negative.png" align="right" width="300px">

# Django

Este repositório contém anotações, playlists, materiais e códigos referentes ao estudo do Framework Django. 



## Criar app
1. ```python manage.py startpp nome_do_app```
2. adicionar nome_do_app no urls.py dentro do arquivo settings

## Class
```python
from django.db import models

class Project(models.Model):
    title = models.CharField(max_length=100)
    description = models.CharField(max_length=250)
    image = models.ImageField(upload_to='portfolio/images')
    url = models.URLField(blank=True)
```
## Migrations

Todas as vezes que criar/alterar uma class dentro do models.py temos que fazer:
1. ```python manage.py makemigrations```
2. ```python manage.py migrate```

[Resumo Migrate](https://github.com/andrenevares/andrenevares/blob/master/python/Django/tuts/migrate_padrao.md) 

## Criar um super user
Para se logar no ```localhost:8000/admin``` nós temos que criar um usuário.  Para isso:

1. ```python manage.py createsuperuser```
2. username: ```seu_super_user_name```
3. email: ```seu_email``` _opcional_
4. password: ```sua_senha``` 

Para mudar a senha do superuser
```python manage.py nome_usuário```

## Admin
Dentro de cada app temos um arquivo ```admin```.  Será aqui que definiremos o que será exibido no painel do admin!

Se criamos um model chamado __Post__ que fica dentro do app __blog__ teremos que fazer

```python
from .models import Post

admin.site.register(Post)
```
> o ```.``` significa que estamos referenciando a mesma pasta.


## Imagens 

Temos que ajustar 
1. ```settings.py``` do projeto
2. ```urls.py``` do projeto

#### ```settings.py```
1. Vá até o arquivo __settings.py__
2. digitar o endereço no final do arquivo utilizando a seguinte sintaxe: ```MEDIA_ROOT = ''```

Para que funcione em qualquer computador, seja linux, windows, mac... devemos usar a sintace de sistema operacional.

Podemos colar do __DATABASES__ que fica dentro do __settings.py__

```python
MEDIA_URL = '/imagens/' 
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')
```
- MEDIA_URL: será a URL que será exibida no navegador 
- MEDIA_ROOT: será onde ela será salva de fato, seja no servidor, seja na sua máquina

## ```urls.py``` do projeto

```python
(...)
from django.conf.urls.static import static
from django.conf import settings
(...)
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
```

## Criar os templates


#### criar um path
```python
(...)
from nome_do_app import views
    (...)

    path('', views.home, name='home'),
```

#### criar uma view
```python
def home(request):
    return render(request, 'personal/home.html')
```

#### Criar base e home
1. Criar diretório templates > nome_do_app
2. dentro desse diretório colocar ```home.html```
```
nome_do_app
    |- Templates
        |- nome_do_app
            |- base.html
            |- home.html
            |- (...)
```

#### CSS
```
nome_do_app
    |- static
        |- nome_do_app
            |- main.css
```

sendo que no arquivo base usaremos:

No início do arquivo:
```html
{% load static %}
<head>
    <link rel="stylesheet" type="text/css" href="{% static 'blog/main.css' %}">
</head>
```


#### extendendo modelos do template

##### No base:

```html
{% load static %}
<head>
    <link rel="stylesheet" type="text/css" href="{% static 'blog/main.css' %}">
</head>
```
##### no home...
```html
{% extends "nome_do_projeto/base.html" %}
<div class="container">
    {% block content %}      
    {% endblock content %} 
</div>
```
- [Notes Corey Shaeffer](https://github.com/andrenevares/andrenevares/blob/master/python/Django/cursoCoreyShaeffer/readme.md)
