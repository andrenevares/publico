# For em C++

## Incremento i++
> ```i++```  é a mesma coisa que ```i = i + 1```
``` 
#include <iostream>

using namespace std;

int main() {
    for (int i = 0; i <= 10; i++) {
        cout << i << endl;
}
    return 0;
}

````

## Incremento 3
> Agora usamos ```i = i + 3```
``` 
#include <iostream>

using namespace std;

int main() {
    for (int i = 0; i <= 10; i = i + 3) {
        cout << i << endl;
}
    return 0;
}

````


## Decrease 1
> ```i--```  é a mesma coisa que ```i = i - 1```
``` 
#include <iostream>

using namespace std;

int main() {
    for (int i = 10; i >=0; i--) {
        cout << i << endl;
}
    return 0;
}

````

## Com input do user

```
#include <iostream>

using namespace std;

int main() {
    
    int nVezes;
    
    cout << "Quantas vezes você quer que haja o loop? ";
    cin >> nVezes;
    
    for (int i = nVezes; i >=0; i--) {
        cout << i << endl;
}
    return 0;
}
```
