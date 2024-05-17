ACCION fila1 ES
AMBIENTE
sec: secuencia de caracter
v: caracter
par: {"2","4","6","8"}
sal:secuencia de entero
Producto: entero

Procedimiento AvzMes() es
    Para i=1 hasta 3 hacer 
        Avz(sec,v)
    Fp
Fp

Función ConvertirAEntero(x: caracter): entero
    Segun x hacer
        "1" : ConvertirAEntero:= 1
        ...
        "9" : ConvertirAEntero:= 9
    fs
ff
Procedimiento AvzProducto() es
 //5 tengo que avanzar
    Para i=1 hasta 5 hacer
        Avz(sec,v)
    fp

fp

Procedimiento ContarProductos() es
    Producto := Producto + ConvertirAEntero(v)
fp

ALGORITMO

    ARR(sec) ; AVZ(sec,v)
    CREAR(sal)
    Producto:= 0

    Mientras NFDS(sec) hacer
        AvzMes()
        ConvertirAEntero(v)
        Si ConvertirAEntero(v) EN par Entonces
            AvzProducto()
            ContarProductos()
            Esc(sal, Producto)  
        Sino
            AvzProducto()
        Fs
    Fm

    Cerrar(sal) ; Cerrar(sec)
FA