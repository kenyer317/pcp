#set page(
  paper:"us-letter",
  margin: (left:2cm, right:2cm, top:2cm, bottom:2cm),
  numbering: "1/1",
  footer: context[
  *Electivo PCP-2025*
  #h(1fr)
  #counter(page).display(
    "1/1",
    both: true,
  )
  #h(1fr)
  *Prof. Kenyer Aguiar*
]
)

#set heading(numbering: "P1.a:")


#set enum(numbering: "1.a)") 
#set text(
  font: "libertinus serif", 
  size: 12pt,
  lang: "Es",
  hyphenate: auto,
  )
#show math.equation: set text(font: "New Computer Modern Math")

#set par(
    justify: true,
  )

#grid(
  columns:(1fr, 1fr),
  align(top+left)[*Colegio Coya de Machalí*\
*Departamento de Matemáticas*\
*Profesor: Kenyer Aguiar*],align(top+right)[#image("logo.png", width:30% )
],
)
#v(1cm)
#align(center, text(17pt)[
  *Pensamiento Computacional*\
  *Prueba Sumativa III-2025*\
  *IV Medios*
])
#v(.5cm)
#table(
  columns: (1fr, .5fr), // Definimos 2 columnas principales inicialmente
  [*Nombre:*], [*Nota:*],
  [*Curso:*], [*Fecha:*],
)
#v(.5cm)


*Intrucciones*: Leer cuidadosamente cada situación planteada y para cada problema debe desarrollar un programa para resolver cada una de ellas. 
#v(1cm)

= Modelando combinatorios
== Función **`factorial`**  

    Escribe una función llamada `factorial` que acepte un número entero n como argumento. Esta función debe calcular y retornar el factorial de $n$ es decir $n!$, donde

    $ n! = cases(
    1 "si" n = 0,
    1 "si" n = 1,
    n dot (n-1) dot (n-2) dot dot dot 2 dot 1  
    ) $

== Función `combinatoria`  

  Utilizando la función factorial que definiste en el punto anterior, crea una nueva función llamada `combinatoria`. Esta función debe recibir dos números enteros $n$ y $m$ como argumentos, asumiendo que $(n>= m>= 0)$. La función debe calcular y retornar el coeficiente combinatorio $binom(n, m)$ usando la siguiente fórmula:

    $ binom(n, m)=n!/((n-m)! dot m!) $
== Cáculo de suma de combinatorios

 Usando la función combinatoria que desarrollaste en el item anterior, calcular siguiente suma e imprime su valor en pantalla
    $ binom(20, 0) + binom(20, 1)+ dot dot dot binom(20, 19) + binom(20, 20). $



= Trabajando con tuplas
Dadas dos tuplas de números reales $ t_1=(a_1,a_2,dot , a_n), t_2=(b_1,b_2,dot, b_n)$ de igual tamaño. Se pide:

1. Escribir una función `suma_tuplas()` que reciba ambas tuplas y retorne una tupla que contiene en cada posición la suma de los números de las tuplas en esa posición, es decir
$ (a_1+b_1, a_2+b_2, dot dot dot , a_n+b_n). $
2. Escribir una función `producto_tuplas()` que reciba ambas tuplas y retorne una tupla que contiene en cada posición la multiplicación de los números de las tuplas en esa posición, es decir 
$ (a_1 dot b_1, a_2 dot b_2, dot dot dot , a_n dot b_n). $

3. Escribir una función `producto_escalar()` que reciba ambas tuplas y devuelva el producto escalar de ambas tuplas, es decir
$ a_1 dot b_1 + a_2  dot b_2 + a_n dot b_n. $
4. Calcule el producto escalar de las siguientes tuplas $(3, -2, 5, 7, 10), (0, 4, 1, -6, 5)$ y muestre su valor por pantalla.

=





= Gestión Completa de un Catálogo de Productos 

Vas a trabajar con un diccionario que representará un catálogo de productos de una tienda. Este diccionario tendrá como claves los IDs de los productos (números enteros) y como valores, diccionarios anidados con la siguiente información de cada producto:

- `nombre`: (cadena de texto) El nombre del producto.
- `precio`: (flotante) El precio unitario del producto.
- `cantidad_en_stock`: (entero) La cantidad disponible del producto.
- `categoria`: (cadena de texto) La categoría a la que pertenece el producto (ej. \"Electrónica\", \"Alimentos\", \"Ropa\").
- `proveedor`: (cadena de texto) El nombre del proveedor.  
  
Aquí tienes el diccionario inicial:

```Python
catalogo_productos = {
    101: {
        "nombre": "Laptop Ultrabook",
        "precio": 1200.00,
        "cantidad_en_stock": 15,
        "categoria": "Electrónica",
        "proveedor": "TechGlobal"
    },
    102: {
        "nombre": "Monitor Curvo 27",
        "precio": 350.50,
        "cantidad_en_stock": 30,
        "categoria": "Electrónica",
        "proveedor": "ViewTech"
    },
    103: {
        "nombre": "Teclado Mecánico RGB",
        "precio": 85.99,
        "cantidad_en_stock": 50,
        "categoria": "Electrónica",
        "proveedor": "GamerGear"
    },
    201: {
        "nombre": "Camiseta de Algodón",
        "precio": 25.00,
        "cantidad_en_stock": 100,
        "categoria": "Ropa",
        "proveedor": "FashionWear"
    },
    301: {
        "nombre": "Café Colombiano 500g",
        "precio": 12.75,
        "cantidad_en_stock": 80,
        "categoria": "Alimentos",
        "proveedor": "CafeExcellence"
    }
}
```
Realiza las siguientes operaciones utilizando este diccionario:
1. Agregar un Nuevo Producto:
   - Agrega un nuevo producto con ID 401 y los siguientes detalles:
     - `nombre`: \"Ratón Inalámbrico Ergonómico\"
     - `precio`: 45.00
     - `cantidad_en_stock`: 40
     - `categoria`: \"Electrónica\"
     - `proveedor`: \"ErgoDevices\"
    - Después de agregarlo, imprime el catálogo completo para verificar.

2. Actualizar Información de un Producto:

    - El `Monitor Curvo 27` (ID `102`) ha bajado de precio. Actualiza su `precio` a `320.00`.
    - La `Camiseta de Algodón` (ID `201`) ha recibido una nueva entrega. Aumenta su `cantidad_en_stock` en `20` unidades.
    - Imprime solo la información actualizada del `Monitor Curvo 27` y la `Camiseta de Algodón` para verificar los cambios.
  
3. Consultar Información Específica:

    - Imprime el nombre y la categoría del producto con ID `103`.
    - Verifica si existe un producto con ID `999`. Si no existe, imprime un mensaje que lo indique.
4. Listar Productos por Categoría:
    - Crea un bucle que recorra el `catalogo_productos` e imprima el nombre y el precio de todos los productos que pertenezcan a la categoría \"Electrónica\".
  
5. Calcular Valor Total del Inventario por Categoría:

    - Calcula y imprime el valor total del inventario para la categoría \"Alimentos\". Esto se calcula como la suma de (`precio * cantidad_en_stock`) para todos los productos de esa categoría.

6. Eliminar un Producto:

    - El `Teclado Mecánico RGB` (ID `103`) ha sido descontinuado. Elimínalo del catálogo.
    - Después de eliminarlo, intenta acceder a la información del producto con ID `103` (debería lanzar un error si lo haces directamente). Mejor, imprime el catálogo completo para confirmar su eliminación.

= Estdísticos básicos
 Dada una variable aleatoria $X$ con recorrido $ [x_1, x_2, dots, x_n]$. Sea demás $[p_1, p_2, ..., p_n]$ las probalidades asociadas a cada punto, es decir 
 $ p_1 = P(X = x_1), p_2 = P(X = x_2), ..., p_n = P(X=x_n) $.
 La esperanza de la variable aleatoria $X$ denotada por $E(X)$ viene dada por 
 $ E(X) = x_1 dot p_1+x_2 dot p_2+ dot dot dot x_n dot p_n .$
 La varaianza viene dada por 
 $ V(X) = (x_1-E(x))^2+ $
 
  Se pide:
 == Escribir una función que reciba dos listas, una asociada al recorrido de una variable aletaoria y la otra asociada a su distribución de probabilidades. Esta fuinción debe devolver la esperr


