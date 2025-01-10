# Proyecto-N1-UDD-BOOTCAMP
# Proyecto Final Módulo 1: Sistema de Cálculo de Compras
Sistema de Cálculo de Compras para Tienda de Zapatillas

Un proyecto desarrollado en PSeInt que automatiza el cálculo del costo final de una compra, integrando descuentos, impuestos y costos de envío. Diseñado para ser intuitivo y funcional, este sistema facilita la experiencia de compra en una tienda de zapatillas.

🛍️ Características del Sistema

🏷️ Producto y Precio Base
	•	Producto: Zapatillas
	•	Precio unitario: $1,000

🎁 Sistema de Descuentos
	1.	Por cantidad:
	•	Compra de 2 o más unidades: 5% de descuento.
	2.	Por cupón:
	•	Descuento estándar: 10%.
	•	Descuento adicional configurable según el cupón.

💸 Cargos Adicionales
	•	IVA: 12% del subtotal.
	•	Costo base de envío: $10.
	•	Costo adicional por unidad extra: $3.

⚙️ Flujo del Programa
	1.	Entrada de Datos
	•	Se solicita la cantidad de zapatillas.
	•	Se pregunta si se cuenta con un cupón de descuento.
	2.	Aplicación de Descuentos
	•	Descuento por cantidad si aplica.
	•	Si hay cupón, se calcula el descuento estándar más un descuento adicional configurable.
	3.	Cálculo de Costos
	•	Se aplica el IVA al subtotal después de descuentos.
	•	Se calcula el costo de envío.
	4.	Desglose Final
	•	Se muestra el monto final a pagar, detallando cada cálculo.

🧮 Ejemplo de Cálculo

Supuestos:
	•	Compra de 2 zapatillas a $1,000 c/u.
	•	Cupón de descuento aplicado.
	•	Descuento adicional: 5%.

Cálculo Paso a Paso:
	1.	Subtotal inicial: $2,000
	2.	Descuento por cantidad (5%): -$100
	3.	Descuento por cupón (10%): -$190
	4.	Descuento adicional (5%): -$85.50
	5.	IVA (12%): +$194.94
	6.	Costo de envío: $16 ($10 base + $3 x 2 unidades).

Total Final: $1,835.44

📂 Estructura de Variables

Tipo	Nombre	Descripción	Valor Inicial
Entera	precioBase	Precio unitario de las zapatillas	$1,000
Entera	unidades	Cantidad de zapatillas a comprar	Usuario ingresa
Entera	costoEnvioBase	Costo fijo de envío	$10
Entera	pesoUnitario	Peso por unidad	$3
Real	descuentoCupon	Porcentaje de descuento por cupón	10% (0.10)
Real	impuesto	IVA	12% (0.12)
Real	descuentoCantidad	Porcentaje de descuento por cantidad	5% (0.05)
Real	subtotal	Subtotal antes de descuentos	Calculado
Real	subtotalConDescuento	Subtotal después de descuentos	Calculado
Real	montoFinal	Monto total a pagar	Calculado
Texto	respuestaCupon	Respuesta sobre el cupón (sí/no)	Usuario ingresa

💻 Cómo Ejecutar el Programa
	1.	Abrir el archivo del proyecto en PSeInt.
	2.	Ejecutar el programa.
	3.	Seguir las instrucciones en pantalla:
	•	Ingresar la cantidad de zapatillas.
	•	Indicar si tiene un cupón de descuento.
	•	Si aplica, ingresar el porcentaje de descuento adicional.
	4.	Ver el desglose del cálculo y el monto final a pagar.

🚀 Consideraciones
	•	Los precios y costos base están predeterminados.
	•	Los descuentos se aplican en orden secuencial para máxima precisión.
	•	El sistema calcula el costo de envío después de aplicar todos los descuentos.
	•	Todos los resultados se redondean a dos decimales.

📑 Notas Adicionales

Este proyecto es una demostración del uso de algoritmos en PSeInt para resolver problemas cotidianos. ¡Perfecto para practicar lógica y estructuras de control!
