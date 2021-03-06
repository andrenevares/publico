# apps.py
[<< voltar](https://github.com/andrenevares/andrenevares/tree/master/python/Django)


## Conceito:
Apps são módulos.  Não são apps de aplicativos de fato.

## Estrutura do app
```
Projeto
├───app
│   ├───migrations
│   ├───__init__.py
│   ├───admin.py
│   ├───apps.py
│   ├───models.py
│   ├───tests.py
│   ├───views.py
```

## Passos:
1. Criar um app
2. Adcionar nome do app ao ```settings.py```


### 1. Criar app
Vá até o diretório onde se encontra o arquivo ```manage.py``` e digite o seguinte comando
```
python manage.py startapp nome_do_app
```

Essa comando vai criar um app com toda a estrutura do Django

### 2. Editar Settings
Ajustar o __settings__ para que ele saiba sobre o app

Adcionar à lista de apps o nome do seu app.

Exemplo: se você criar um app que a folder seja ```pwdapp``` colcaremos na lista de ```URLS = []``` a seguinte string:

```
URLS = [
  (...),
  'pwdapp',
]
```
