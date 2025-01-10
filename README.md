# Proyecto-N1-UDD-BOOTCAMP

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
