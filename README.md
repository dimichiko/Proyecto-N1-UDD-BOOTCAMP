# Proyecto-N1-UDD-BOOTCAMP

## Descripción General
Este algoritmo, desarrollado en PSeInt, implementa un sistema de cálculo para una tienda de zapatillas. El programa calcula el precio final de una compra considerando múltiples factores como descuentos, impuestos y costos de envío.

## Características Principales
1. **Producto y Precio Base**
   * Producto: Zapatillas
   * Precio unitario: $1,000

2. **Sistema de Descuentos**
   * Descuento por cantidad:
     - 2 unidades: 5% base
     - Por cada unidad adicional: +2%
     - Máximo 25% de descuento
   * Cupón de descuento:
     - Hasta 25% máximo
     - Si excede 25%, no se aplica descuento

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
* `descuentoCantidad`: Variable según cantidad de unidades
* `impuesto`: 12% (0.12)
* `subtotal`, `subtotalConDescuento`, `montoFinal`: Para cálculos

### Variables de Texto
* `respuestaCupon`: Respuesta si/no para cupón

## Notas de Implementación
* El sistema está optimizado para el cálculo de compras de zapatillas
* Los descuentos se aplican de manera secuencial
* El costo de envío se calcula al final y no afecta los descuentos
* Los descuentos tienen límites máximos del 25%
