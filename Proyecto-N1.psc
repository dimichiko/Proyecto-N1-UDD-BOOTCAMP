Algoritmo ProyectoModulo1
    // Declaración de variables para el cálculo
    Definir precioBase, subtotal, unidades Como Entero
    Definir descuentoCantidad, descuentoCupon, impuesto Como Real
    Definir respuestaCupon Como Caracter
    Definir costoEnvioBase, pesoUnitario Como Entero
    Definir montoFinal, subtotalConDescuento, descuentoTotal Como Real
    
    //constantes fijas
    precioBase <- 1000        // Precio zapatillas
    descuentoCupon <- 0.10    
    impuesto <- 0.12         // 12% IVA
    costoEnvioBase <- 10
    pesoUnitario <- 3
    descuentoCantidad <- 0    // Inicializar en 0 por si no hay cupón
    descuentoPorUnidades <- 0.05  // 5% de descuento por comprar 2 o más unidades
    
    // Mostrar producto y precio
    Escribir "Producto: Zapatillas"
    Escribir "Precio original: $", precioBase
    
    Escribir "¿Cuántas zapatillas desea comprar?"
    Leer unidades
    
    // Cálculo del subtotal inicial
    subtotal <- precioBase * unidades
    Escribir "Subtotal sin descuentos: $", subtotal
    
    // Guardar subtotal original para cálculo de descuento
    subtotalOriginal <- subtotal
    
    // Aplicar descuento por unidades (si aplica)
    Si unidades >= 2 Entonces
        subtotalConDescuento <- subtotal * (1 - descuentoPorUnidades)
        Escribir "Se aplicó descuento del 5% por comprar 2 o más unidades"
    Sino
        subtotalConDescuento <- subtotal
    FinSi
    
    // Verificar y aplicar cupón
    Escribir "¿Cuenta con cupón de descuento? (si/no)"
    Leer respuestaCupon
    
    Si Minusculas(respuestaCupon) = "si" Entonces
        // Solo pedir porcentaje de descuento si tiene cupón
        Escribir "Ingrese el porcentaje de descuento (ejemplo: para 5% ingrese 5):"
        Leer porcentajeDescuento
        descuentoCantidad <- porcentajeDescuento / 100  // Convertir porcentaje a decimal
        subtotalConDescuento <- subtotalConDescuento * (1 - descuentoCantidad)
        subtotalConDescuento <- subtotalConDescuento * (1 - descuentoCupon)
    FinSi
    
    Escribir "Monto después de descuentos: $", subtotalConDescuento
    
    // Calcular IVA
    montoConImpuesto <- subtotalConDescuento * (1 + impuesto)
    Escribir "Monto con IVA incluido: $", montoConImpuesto
    
    // Calcular y mostrar el porcentaje total de descuento aplicado
    montoDescontado <- subtotalOriginal - subtotalConDescuento
    descuentoTotal <- (montoDescontado / subtotalOriginal) * 100
    Escribir "Descuento total aplicado: ", REDON(descuentoTotal * 100) / 100, "%"
    
    // Calcular costo de envío
    costoEnvioTotal <- costoEnvioBase + (pesoUnitario * unidades)
    Escribir "Costo de envío: $", costoEnvioTotal
    
    // Calcular monto final
    montoFinal <- montoConImpuesto + costoEnvioTotal
    Escribir "TOTAL A PAGAR: $", montoFinal
    
FinAlgoritmo
