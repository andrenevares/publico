# Parte 09

Youtube Link: https://www.youtube.com/watch?v=CQ90L5jfldw&feature=youtu.be

## Nesse video
- Finish Profile
- Upload Profile Information
- Upload Profile Picture
- Images automaticamente resize quando fazemos o upload.

Para isso:
- Criar Forms 
- Abrir ```forms.py```
- Criar alguns forms adcionais para fazer o update do nosso user e do nosso profile

## User > ```forms.py```
- Nós vamos criar algo chamado de ```model form```
- ```model form``` nós 
- Dentro do tamplate __UserUpdateForm__ e o __ProfileUpdateForm__ parecerão que são uma única coisa.

#### ```forms.py``` as is..;
```
from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm

class UserRegisterForm(UserCreationForm):
    email = forms.EmailField()

    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']
```

#### Form para Update de Nome e Usuário

```
class UserUpdateForm(forms.ModelForm):
    email = forms.EmailField()

    class Meta:
        model = User
        fields = ['username', 'email']
```


#### Form para update de imagem

- A imagem não está no User, mas sim no Profile. 
- Precisamos importar o Profile

```
from .models import Profile

(...)

class ProfileUpdateForm(forms.ModelForm):
    class Meta:
        model = Profile
        field = ['image']
```

## user > views.py

1. Importar os forms que acabamos de criar
2. no nosso profile vamos criar instâncias 


## Redimensionando imagens
- Usaremos um pacote chamado __pillow__

user > models.py > ```class Profile(models.Model):```
Nós vamos sobrescrever o método save

```
from PIL import Image

(..)

def save(self):
    super().save()
    
    img = Image.open(self.image.path)
    
    if img.height > 300 or img.widht > 300:
        output_size = (300, 300)
        img.thumbnail(output_size)
        img.save(self.image.path)
    
```
