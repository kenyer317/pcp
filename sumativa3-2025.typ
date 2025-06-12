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

= pertenece


= jdjeje


= jsjs

= ss




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