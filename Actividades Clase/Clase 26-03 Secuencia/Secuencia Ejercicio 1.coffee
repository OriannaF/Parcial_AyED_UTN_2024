ACCION fila1 ES
AMBIENTE
sec: secuencia de caracter
v: caracter
par: {"2","4","6","8"}

Procedimiento AvzMes() es
    Para i=1 hasta 3 hacer 
        Avz(sec,v)
    Fp
Fp

Función ConvertirAEntero(v: caracter) numerico
    Segun v hacer
        "1" : mes:= 1
        ...
        "9" : mes:= 1
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

    Mientras NFDS(sec) hacer
        AvzMes()
        ConvertirAEntero(v)
        AvzProducto()
        Si mes EN par Entonces
            ContarProductos()  
        fs
    Fm
FA