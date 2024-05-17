//contabilizar unidades vendidas que ingresa un usuario

ACCION fila1 ES
AMBIENTE
sec: secuencia de caracter
v: caracter
par: {"2","4","6","8"}
sal:secuencia de entero
Producto: entero
mes: entero
mesUsuario: entero

Procedimiento AvzMes() es
    Para i=1 hasta 2 hacer 
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

    Esc("Ingrese el mes para contabilizar unidades")
    Leer(mesUsuario) //ingresa 12
    mesUsuario1:= mesUsuario / 10  //1
    mesUsuario2:= mesUsuario MOD 10 //2

    Mientras NFDS(sec) hacer
        AvzMes()
        ConvertirAEntero(v)

        Si mes = mesUsuario1 Entonces
            Avz(sec,v)
            Si mes = mesUsuario2 Entonces
                AvzProducto()
                ContarProductos()
            fs

            Si mes EN par Entonces
                AvzProducto()
                ContarProductos()
                Esc(sal, Producto)  
            fs
        Sino
            Avz(sec,v)
            Si mes EN par Entonces
                AvzProducto()
                ContarProductos()
                Esc(sal, Producto)  
            Sino
                AvzProducto() //si no cumple nada que avance nms
            Fs
        Fs   
    Fm

    Cerrar(sal) ; Cerrar(sec)
FA