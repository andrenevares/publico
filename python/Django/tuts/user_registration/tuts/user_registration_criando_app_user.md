# Login e Logout

### Ajustar o ```{% url '...' %}```
- As páginas precisam ser ajustadas para serem redirecionadas de forma dinâmica
- A página __register.html__ deve ter um link para ```{% url 'login' %}```
- A página __login.html__ deve ter um link para```{% url 'register' %}```

### Template ```login```

Se digitarmos um usuário que não esteja correto, nós vamos receber a mensagem de erro.

Mas ao mesmo tempo, se digitarmos um usuário correto, vamos ter outro tipo de erro

### Mudar redirect do login no ```settings.py```
O Django de forma nativa irá redirecionar o usuário para a página do seu perfil.  Acontece que ainda não criamos essa parte da aplicação ainda... E mesmo que tivéssemos criado, não parece uma boa idéia redirecionar para a página de profile tão logo o usuário tenha se logado. Nós podemos mudar o redirecionamento nativo do django relativo ao login no nosso ```settings.py``` para isso

1. Abrir o ```settings.py```
2. ```LOGIN_REDIRECT_URL = 'blog-home'```

Ainda não temos a mensagem de sucesso... Mas vamos ajustar isso

### Register --> Login
Quando um usuário tiver sucesso ao se logar ele deve ser redirecionado para a página de login... Faz muito mais sentido que ele faça o LOGIN logo tão logo ele crie uma conta

Dessa forma vamsos ajustar o nosso ```users > views.py```


```python
  messages.success(request, f'Sua conta foi criada com sucesso você já pode se logar')
  return redirect('login')
```

### Logout nativo
Dentro do nosso urls.py temos para o logout

```python
path ('logout/', auth_views.LogoutView.as_view(template_name=('users/logout.html', name='logout'), name='logout'),
```

E se tirássemos ```template_name=('users/logout.html', name='logout')```

ficando assim:  

```python
path ('logout/', auth_views.LogoutView.as_view(template_name=(), name='logout'),
```

Vamos examinar o comportamento padrão do django...

ao irmos para a url ```localhost:8000/logout/``` realmente conseguimos fazer logout... No entanto estamos com a interface visual do Django... 

Temos inclusive um link para que façamos o nosso login... Ao clicarmos ali nós somos direcionados para a página de login nativo do Django!

Para que isso não aconteça nós precisamos :
1. criar um template logout 
2. fazer com que a view do logout utilize esse template

Vamos voltar com 
```python
path ('logout/', auth_views.LogoutView.as_view(template_name=('users/logout.html', name='logout'), name='logout'),
```

#### Template Logout

```html
{% extends "blog/base.html" %}
{% block content %}
<h2>Logout bem sucedido</h2>
<div class="border-top pt-3">
    <small class="text-muted">
        <a href="{% url 'login' %}">Faça seu login novamente</a>
    </small>
</div>
{% endblock  %}
```

Vamos tentar fazer o login e logout.

### user.is_authenticated

Só queremos que a navbar mostre o __login__ e __cadastra-se__ se o usuário não estiver logado.  Caso ele não esteja logado faz mais sentido que apareça algo como __Meu Perfil__

Para isso o Django possui uma ```user variable``` que contém o ```current user``` sendo que esta variável possui um atributo ```is_authenticated``` o qual permite que o Django saiba se um usuário está logado ou não!
```
{% if user.is_authenticated %}

{% else  %}

{% endif  %}
```

### Profile

```views.py``` temos a nossa view register.

vamos criar uma chamada ```profile```

```
def profile(request):
  return render(request, 'users/profile.html')
```

#### Template profile


#### urls.py
   
```python
path('profile/', users_views.profile, name='profile'),
```
 
#### ajustar a navbar do ```base.html```
```html
<a class="nav-item nav-link" href={% url 'profile' %}>profile</a>
<a class="nav-item nav-link" href={% url 'logout' %}>Logout</a>
```

#### @login_required 
Entrar no ```views.py``` do app ```users```
```python
from django.contrib.auth.decorators import login_required
(...)
```

Colocando o decorator...
```python
@login_required
def profile(request):
  return render(request, 'users/profile.html')
```

Irá retornar erro pois estará procurando por ```localhost:8000/accounts/login/?next=/profile/``` 

Esse é o padrão onde o django irá verificar as routes...

Mas acontece que nós decidimos colocar a nossa route em outro lugar

Precisaremos ajustar o ```settings.py``` para verificar onde o django irá procurar

```
LOGIN_URL = 'login'
```

Perceba que o Django está guarndando o local que precisa ser acessado com o LOGIN.  Quando um sistema diz que você precisa se logar para acessar àquela página... Ele vai te mandar para uma página de Login... O que você espera?  Acredito que você deseje que a página depois do login seja aquela que você estava tentando acessar antes!!! 

```localhost:8000/accounts/login/?next=/profile/``` 

Agora nós vemos o profile


Nossos arquivos:



### settings.py alterações

```
LOGIN_REDIRECT_URL = 'blog-home'

LOGIN_URL = 'login'
```
