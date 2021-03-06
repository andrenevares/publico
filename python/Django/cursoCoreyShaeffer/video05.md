# Parte 05
> Anotações de André Nevares

## Database and Migrations
- [Python Django Tutorial: Full-Featured Web App Part 5 - Database and Migrations](https://youtu.be/aHC3uTkT9r8)

### Django ORM
Diferentemente de flask, que usa Flask-SqlAlchemy, o Django tem sua própria estrutura ORM - Oriented Relational Mapping.

- Nós vamos respresentar essas estruturas como ```classes``` do python
- Mas vamos chamar essas ```classes``` como ```models```.

### ```blog > models.py```
Quando criamos o APP, o Django já cria o arquivo ```[nome_do_app] > models.py```
```
from django.db import models
```

### Tabelas do nosso banco de dados
- User (criada pelo backend do Django)
- Posts (esta nós vamos criar!!!)

__Observação__:  Nós temos que estabelecer uma relação de entre as tabelas.  Será o que chamamos de ```one-to-many``` ou ```um-pra-muitos```.  Isto porque um ```author``` pode ter muitos ```posts```, no entanto um ```post``` só pode ter um ```author```.

### Criando um model para o post

#### Vamos criar um model ```Post```
```
class Post(models.Model):
```
#### Campos
Os campos da tabela ```Post``` serão:
- title
- content
- date_posted
- author (Será nossa chave estrangeira)

##### Campo ```title```
Podemos colocar restrições... No caso vamos colocar que o título tenha no máximo 100 caracteres...
```
title = models.CharField(max_length=100)
```

##### Campo ```content```
```CharField``` e ```TextField``` são praticamente os mesmos campos.  No entanto ```TextField``` é um campo sem restrições...

```
content = models.TextField()
```
##### Campo ```date_posted```

Temos duas opções:
- ```date_posted = models.DateTimeField(auto_now_add=True)``` ou
- ```date_posted = models.DateTimeField(default=timezone.now)```

Com ```auto_now``` nós vamos dizer que a data do post é o momento que foi criado...  Mas se você quer a possibilidade de colocar a data, e caso não seja preenchida, a mesma seja considerada como agora... bem, neste caso você deverá usar ```default=timezone.now```

Para trabalhar com o date posted nós vamos importar do __django utils__ >>> timezone

```
from django.utils import timezone
```

assim podemos definir nosso campo ```date_posted``` como a hora que o usuário estiver submetendo o post, dessa forma temos usaremos ```timezone.now```

O campo será definido assim:

```
date_posted = models.DateTimeField(default=timezone.now)
```

Note que usamos ```timezone.now``` ao invés de ```timezone.now()``` com ```()```.  Porque?
- Ao colocar ```()``` estaremos usando a função.
- Como queremos atribuir a uma variável o valor de ```timezone.now``` não usaremos o ```()```


##### Campo ```user```

```
from django.contrib.auth.models import User
```

```
author = models.ForeignKey(User, on_delete=models.CASCADE)
```

```on_delete=models.CASCADE``` define que se um usuário for excluído, todos os posts relacionados àquele usuário serão excluídos também.

### ```Post``` model concluído
```
from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User

class Post(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    date_posted = models.DateTimeField(default=timezone.now)
    author = models.ForeignKey(User, on_delete=models.CASCADE)
```

### Agora que nós temos o arquivo pronto temos que fazer o processo de ```migrate```
Para atualizar as tabela e relações nós precisamos fazer o que?  

1. Criar ```migrations```  ---> ```python manage.py makemigrations```
2. Executar as ```migrations``` ---> ```python manage.py migrate```

#### 1. Criar ```migrations```
Primeiramente criamos uma ```migration```, para depois executar essa ```migration```

```python manage.py makemigrations```

O output será:
```
Migrations for 'blog':
  blog\migrations\0001_initial.py
    - Create model Post
```

#### Se você quiser ver como o comando SQL é feito...

```python manage.py sqlmigrate [nome_do_app] [nº_do_migrate]```

Como no nosso caso o o app se chama ```blog``` e o migrate foi ```blog\migrations\0001_initial.py``` nosso comando vai ser:

```python manage.py sqlmigrate blog 0001```

O Output desse comando será:
```
BEGIN;
--
-- Create model Post
--
CREATE TABLE "blog_post" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(100) NOT NULL, "content" text NOT NULL, "date_posted" datetime NOT NULL, "author_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE INDEX "blog_post_author_id_dd7a8485" ON "blog_post" ("author_id");
COMMIT;
```

#### 2. Executar as ```migrations```

```python manage.py migrate```

As ```migrations``` são uma coisa muito importante.  Nós podemos alterar as tabelas e o banco de dados mesmo que haja dados nele!

### Como podemos fazer nossas quereis com os Models do Django?

A interface ORM do Django permite que façamos interações com o banco de dados por meio de classes (também).


Para mostrar esse processo vai rodar um comando de forma a ver o processo linha a linha por meio da interface de comando

Para isso vamos rodar o comando:  ```python manage.py shell```

Será aberto um console parecido com o do __Python__.  Na verdade ele é um console __python__ mas que também permite interações com __Django__

Vamos importar o Model Post e o Model User
```
>>> from blog.models import Post   
>>> from django.contrib.auth.models import User
```

##### All
```
>>> User.objects.all()
<QuerySet [<User: andre>]>
```

O resultado foi a lista com apenas um usuário, no caso o __superuser__.

##### First
```
>>> User.objects.first() 
<User: andre>
```

##### Filter
```
>>> User.objects.filter(username='andre')
<QuerySet [<User: andre>]>
```

##### Filter com First
```
>>> User.objects.filter(username='andre').first()
<User: andre>
```

#### Vamos analisar um objeto user

##### Primeiro vamos atribuir a uma variável o resultado
```
>>> user = User.objects.filter(username='andre').first() 
```
##### Vamos chamar para ver o que ocorre
```
>>> user
<User: andre>
```


##### Posso buscar pelo campo ```id```
```
>>> user.id
1  
```
##### Posso buscar pela __primary key__ ```pk```
```
>>> user.pk
1  
```
> No caso, como a primary key da tabela é também a ID, o resultado será o mesmo.


##### Também posso usar com o ```get```

```
>>> user = User.objects.get(id=1)
```


```
>>> user
<User: andre>
```

### Vamos criar um post e colocar o obtido como o autor.

01. Vamos verificar se há algum post
```
>>> Post.objects.all()
<QuerySet []>
```

O resultado não poderia ser outro, afinal, não temos nenhum post ainda.

02. Vamos criar um objeto post_1
```
>>> post_1 = Post(title = 'Post nº 1', content = 'Conteúdo nº 01', author = user)           
```
03. Vamos ver o que está na banco de dados
```
>>> Post.objects.all()
<QuerySet []>
```
04. Vamos fazer o save
```
>>> post_1.save()     
```
05. Vamor ver o que está no banco de dados
```
>>> Post.objects.all()
<QuerySet [<Post: Post object (1)>]>
```

Como podemos notar o ```<QuerySet [<Post: Post object (1)>]>``` não é muito representativo.

Para isso nós podemos definir dentro da class ```Post``` uma __Dunder Method__.

__Dunder STR Method__ é uma referência a dois sinais de _under score_ ou seja ```__```

Criaremos ```def __str__(self):``` dentro da class post...

Vamos colocar que nós queremos que o objeto seja representado pelo title;

O método a ser criado será:
```
def __str__(self):
    return self.title
```

Assim nossa class ```Post``` está assim:
```
class Post(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    date_posted = models.DateTimeField(default=timezone.now)
    author = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.title
```

Vamos salvar nosso arquivo ```models.py```

Para que as mudanças surtam efeito nó precisamos reiniciar o shell...

vamos dar ```exit()``` para sair do console python, e depois chamamos novamente ```python manage.py shell```

Vamos precisar importar tanto Post como User novamente.  Para isso vamos...

```
>>> from blog.models import Post
>>> from django.contrib.auth.models import User
```

Agora se consultarmos o nossos ```Posts```

```
>>> Post.objects.all()
<QuerySet [<Post: Post nº 1>]>
```

```
>>> user = User.objects.get(id=1)
```

Vamos criar mais um post...

```
>>> user = User.objects.get(id=1)
>>> post_2 = Post(title = 'Post nº 002', content = 'Conteúdo nº 02 salvo via shell!!!', author = user)
>>> post_2.save()
```

Vamos ver o que temos...
```
>>> Post.objects.all()
<QuerySet [<Post: Post nº 1>, <Post: Post nº 002>]>
```

Eu poderia adionar, também, com id...
```
post_3 = Post(title = 'Post nº 003', content = 'Conteúdo nº 03 salvo com _ID', author_id = user.id)
>>> post_3.save()
```
Vamos ver o resultado disso?
```
>>> Post.objects.all()
<QuerySet [<Post: Post nº 1>, <Post: Post nº 002>, <Post: Post nº 003>]>
```

Vamos criar o resultado de uma query da Table ```Post```
```
>>> post = Post.objects.get(id=1)  
```

```
>>> post.title  
'Post nº 1'
```
```
>>> post.content
'Conteúdo nº 01'
```
```
>>> post.author
<User: andre>
```
```
>>> post.date_posted 
datetime.datetime(2020, 7, 11, 20, 41, 51, 24677, tzinfo=<UTC>)
```

```
>>> post.author.email
'andre.nevares@gmail.com'
```

Se eu quiser buscar todos os posts de um usuário específico???
Primeiro temos um usuário atribuído à varivel ```user``` ?
```
>>> user          
<User: andre>
```
Sim... temos

O django tem uma sintaxe que facilita bastante!  É o ```_set```

Fica mais ou menos assim:
```
>>> user.post_set
<django.db.models.fields.related_descriptors.create_reverse_many_to_one_manager.<locals>.RelatedManager object at 0x000001D021124D08>
```

```
>>> user.post_set.all()
<QuerySet [<Post: Post nº 1>, <Post: Post nº 002>, <Post: Post nº 003>]>
```

Com o ```_set``` também podemos criar um registro!!!

```
>>> user.post_set.create(title='Post nº 04', content='Este Post foi criado com _set.create') 
<Post: Post nº 04>
```
- com esse modelo nós não especificamos um Author, pois o Django já sabe que é para aquele user!!!
- Outra coisa... Nós não precisamos executar ```.save()```.  Com o método ```_set.create``` já ocorre o save automático.

```
>>> Post.objects.all()              
<QuerySet [<Post: Post nº 1>, <Post: Post nº 002>, <Post: Post nº 003>, <Post: Post nº 04>]>
```

### Vamos substituir os dados que estão em HARDCODE no ```blog > views.py```

1. Vamos abrir ```blog > views.py```
2. Depois precisamos importar nosso Post Model
3. Vamos substituir o conteúdo de ```context``` de ```'posts': posts``` para ```'posts': Post.objects.all()```

#### Formatação de Data
Observação: Formatação da data__ 

Ao analisar a formatação da data você irá perceber que o formato da data está diferente.  Isto porque não aplicamos nenhum tipo de formatação!!!

##### Vamos abrir o home 

Nossa data está assim:
```
{{ post.date_posted }}
```

Podemos usar o Date Filter

[Link para documentação do Django sobre filtros de data](https://docs.djangoproject.com/en/2.0/ref/templates/builtins/#date)

```
{{ post.date_posted|date:"d F, Y" }}
```


### Como usar o admin 

Se digitarmos ```http://localhost:8000/admin``` e nos logarmos na aplicação não irá aparecer o ```Post model``` ...

Para que ele apareça na nosso Admin temos que fazer algumas coisas...

Nós tenmos que registar na nossa admin

### Ajustar ```blog > admin.py```
Aqui é que registramos nossos modelos para que eles apareçam no nosso admin page

```
from django.contrib import admin
from .models import Post

admin.site.register(Post)
```
