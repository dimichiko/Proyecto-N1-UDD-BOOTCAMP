Algoritmo ProyectoModulo1
		// Declaración de variables
		Definir precioBase, subtotal, unidades Como Entero
		Definir descuentoCantidad, impuesto Como Real
		Definir respuestaCupon Como Caracter
		Definir costoEnvioBase, pesoUnitario Como Entero
		Definir montoFinal, subtotalConDescuento, descuentoTotal Como Real
		
		// Inicialización de constantes fijas
		precioBase <- 1000       // Precio zapatillas
		impuesto <- 0.12        // 12% IVA
		costoEnvioBase <- 10
		pesoUnitario <- 3
		descuentoCantidad <- 0   // Inicializar en 0 por si no hay cupón
		
		
		Escribir "Producto: Zapatillas"
		Escribir "Precio original: $", precioBase
		
		Escribir "¿Cuántas zapatillas desea comprar?"
		Leer Unidades
		
		//subtotal inicial
		subtotal <- precioBase * unidades
		Escribir "Subtotal sin descuentos: $", subtotal
		
		
		subtotalOriginal <- subtotal
		
		
		Si unidades >= 2 Entonces
			
			descuentoUnidades <- 5 + (unidades - 2) * 2
			
			
			Si descuentoUnidades > 25 Entonces
				descuentoUnidades <- 25
			FinSi
			
			subtotalConDescuento <- subtotal * (1 - descuentoUnidades/100)
			Escribir "Se aplicó descuento del ", descuentoUnidades, "% por cantidad"
		Sino
			subtotalConDescuento <- subtotal
		FinSi
		
		
		Escribir "¿Cuenta con cupón de descuento? (si/no)"
		Leer respuestaCupon
		
		Si Minusculas(respuestaCupon) = "si" Entonces
			Escribir "Ingrese el porcentaje de descuento del cupón:"
			Leer porcentajeDescuento
			
			
			Si porcentajeDescuento <= 25 Entonces
				descuentoCantidad <- porcentajeDescuento / 100  // Convertir porcentaje a decimal
				subtotalConDescuento <- subtotalConDescuento * (1 - descuentoCantidad)
				Escribir "Se aplicó cupón de descuento del ", porcentajeDescuento, "%"
			Sino
				Escribir "Cupón inválido: el descuento máximo permitido es 25%"
				
			FinSi
		FinSi
		
		Escribir "Monto después de descuentos: $", subtotalConDescuento
		
		//IVA
		montoConImpuesto <- subtotalConDescuento * (1 + impuesto)
		Escribir "Monto con IVA incluido: $", montoConImpuesto
		
		//porcentaje total de descuento aplicado
		montoDescontado <- subtotalOriginal - subtotalConDescuento
		descuentoTotal <- (montoDescontado / subtotalOriginal) * 100
		Escribir "Descuento total aplicado: ", REDON(descuentoTotal * 100) / 100, "%"
		
		//costo de envío
		costoEnvioTotal <- costoEnvioBase + (pesoUnitario * unidades)
		Escribir "Costo de envío: $", costoEnvioTotal
		
		//monto final
		montoFinal <- montoConImpuesto + costoEnvioTotal
		Escribir "TOTAL A PAGAR: $", montoFinal
    
FinAlgoritmo

