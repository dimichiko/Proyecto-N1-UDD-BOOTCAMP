# Proyecto-N1-UDD-BOOTCAMP
Proyecto Final Módulo 1 - Sistema de Cálculo de Ventas
Descripción del Proyecto
Este proyecto fue desarrollado en PSeInt para una tienda de zapatillas. El sistema permite calcular el precio final de una compra, aplicando diferentes tipos de descuentos, impuestos y costos de envío.
Funcionalidades Principales
Sistema de Precios y Descuentos

Precio base de las zapatillas: $1000
Descuento por compra múltiple: 5% al comprar 2 o más pares
Descuento por cupón: 10%
Descuento adicional: Porcentaje variable (requiere cupón)

Costos Adicionales

IVA: 12%
Costo de envío base: $10
Cargo adicional por unidad: $3 por cada par

Variables del Sistema

Variables Numéricas

Precios y cantidades: Tipo entero
Descuentos e impuestos: Tipo decimal


Variables de Texto

Respuesta para cupón: "si" o "no"



Proceso de Compra

Ingreso de cantidad de zapatillas
Verificación de cupón de descuento
Si tiene cupón, solicitud de descuento adicional
Cálculo de descuentos aplicables
Aplicación de IVA
Cálculo de costo de envío
Presentación del total a pagar

Ejemplo de Operación
Para una compra de 2 pares con cupón y 5% de descuento adicional:

Precio inicial: $2000
Descuento por cantidad: -$100
Descuento cupón: -$190
Descuento adicional: -$85.50
IVA: +$194.94
Envío: +$16

Precio Final: $1,835.44
Consideraciones Importantes

Los precios base están preestablecidos
Los descuentos se aplican de forma secuencial
El costo de envío se calcula independientemente
Se muestra el porcentaje total de descuento aplicado

Instrucciones de Uso

Ejecutar el programa
Seguir las indicaciones en pantalla
Ingresar los datos solicitados
Revisar el desglose del costo final
