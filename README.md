# Proyecto-N1-UDD-BOOTCAMP
# Proyecto Final Módulo 1: Sistema de Cálculo de Compras

## Descripción General
Este algoritmo, desarrollado en PSeInt, implementa un sistema de cálculo para una tienda de zapatillas. El programa calcula el precio final de una compra considerando múltiples factores como descuentos, impuestos y costos de envío.

## Características Principales
1. **Producto y Precio Base**
   * Producto: Zapatillas
   * Precio unitario: $1,000

2. **Sistema de Descuentos**
   * Descuento por cantidad (2 o más unidades): 5%
   * Cupón de descuento disponible: 10%
   * Descuento adicional configurable (si tiene cupón)

3. **Cargos Adicionales**
   * IVA: 12%
   * Costo base de envío: $10
   * Cargo adicional por unidad: $3

## Variables del Sistema

### Variables Enteras
* `precioBase`: Precio base de las zapatillas ($1,000)
* `unidades`: Cantidad de zapatillas a comprar
* `costoEnvioBase`: Costo fijo del envío ($10)
* `pesoUnitario`: Peso por unidad (3)

### Variables Reales
* `descuentoCupon`: 10% (0.10)
* `impuesto`: 12% (0.12)
* `descuentoCantidad`: Variable según input del usuario
* `subtotal`, `subtotalConDescuento`, `montoFinal`: Para cálculos

### Variables de Texto
* `respuestaCupon`: Respuesta si/no para cupón

## Flujo del Programa

1. **Inicio y Entrada de Datos**
   * Muestra el producto y precio base
   * Solicita cantidad de zapatillas

2. **Proceso de Descuentos**
   * Pregunta por cupón de descuento
   * Si tiene cupón:
     - Solicita porcentaje de descuento adicional
     - Aplica descuentos correspondientes
   * Si no tiene cupón:
     - Mantiene precio original

3. **Cálculos Finales**
   * Calcula el IVA
   * Determina costos de envío
   * Muestra el porcentaje total de descuento
   * Presenta el monto final a pagar

## Ejemplo de Cálculo

Supongamos los siguientes valores:
* Compra: 2 zapatillas ($1,000 c/u)
* Con cupón de descuento
* Descuento adicional: 5%

### Desglose del Cálculo:
1. Subtotal inicial: $2,000
2. Descuento por cantidad (5%): -$100
3. Descuento de cupón (10%): -$190
4. Descuento adicional (5%): -$85.50
5. IVA (12%): +$194.94
6. Costo de envío: $16 ($10 base + $3 × 2 unidades)

### Total Final: $1,835.44

## Notas de Implementación
* El sistema está optimizado para el cálculo de compras de zapatillas
* Los descuentos se aplican de manera secuencial
* El costo de envío se calcula al final y no afecta los descuentos
* El programa muestra información detallada en cada paso

## Cómo Utilizar el Programa
1. Ejecutar el programa en PSeInt
2. Seguir las instrucciones en pantalla
3. Ingresar la cantidad de zapatillas
4. Responder si se tiene cupón de descuento
5. Si aplica, ingresar el porcentaje de descuento adicional
6. Revisar el desglose final de la compra

## Consideraciones
* Los precios y costos base están predefinidos en el sistema
* Los descuentos se aplican sobre el monto anterior
* El sistema redondea los decimales para mayor precisión
* Se muestra el porcentaje total de descuento aplicado
