

# **Evaluación de la Tecnología NF-UHPRO para la Concentración de Litio en SQM (Antofagasta)**

## **I. Resumen Ejecutivo y Recomendación Estratégica**

Este informe evalúa la viabilidad técnica, económica y comercial de implementar la tecnología de Nanofiltración (NF) combinada con Ósmosis Inversa de Ultra-Alta Presión (UHPRO) a $120\\ \\text{bar}$ ($1,740\\ \\text{psi}$) dentro del flujo de proceso de SQM para la concentración de salmuera de litio en la Región de Antofagasta.

**Hallazgo Técnico Clave:** La implementación de la tecnología UHPRO de $120\\ \\text{bar}$ es **técnicamente inviable** para el procesamiento de la salmuera de producto final de SQM, que alcanza una concentración del 6% de ion litio ($60,000\\ \\text{mg/L}$). El análisis termodinámico demuestra que la presión osmótica (Π) de esta salmuera es de aproximadamente **$428\\ \\text{bar}$**. Esto excede en más de $3.5$ veces la presión operativa máxima del sistema UHPRO ($120\\ \\text{bar}$), haciendo imposible la ósmosis inversa.

**Punto de Aplicación Identificado:** La única aplicación técnicamente viable para la tecnología NF-UHPRO es como un **sistema de purificación y pre-concentración intermedia**. En esta configuración, la etapa de NF purificaría la salmuera de estanques intermedios (p. ej., post-cristalización de potasa) eliminando contaminantes críticos como $\\text{Mg}^{2+}$ y $\\text{SO}\_4^{2-}$. La etapa posterior de UHPRO pre-concentraría el cloruro de litio (LiCl) purificado hasta su límite termodinámico práctico, estimado en $100,000 \- 120,000\\ \\text{mg/L}$ de LiCl (aproximadamente $1.6\\% \- 1.9\\%$ de Li-ion).

**Propuesta de Valor Económico:** La principal propuesta de valor de NF-UHPRO para SQM no es el ahorro energético en la concentración (la evaporación solar tiene un costo energético de cero 1), sino la **recuperación de agua de alta pureza** (permeado). En el contexto de estrés hídrico extremo de Antofagasta 2 y el creciente escrutinio regulatorio sobre el uso de agua continental 4, la capacidad de "fabricar" agua de proceso internamente a un Costo Nivelado de Agua (LCOW) estimado de $4 \- 8\\ \\text{USD/m}^3$ 5 representa una mitigación crítica del riesgo operativo y de la licencia social para operar.

**Panorama Competitivo:** La tecnología UHPRO estándar de $120\\ \\text{bar}$ (ofrecida por integradores como BW Water y Saltworks) 7 enfrenta una competencia disruptiva de nuevos procesos de membrana. Notablemente, la Ósmosis Inversa de Contraflujo (CFRO) de Gradiant alega alcanzar concentraciones de Sólidos Disueltos Totales (TDS) significativamente mayores ($\>200,000\\ \\text{mg/L}$) operando a presiones *más bajas* ($\<83\\ \\text{bar}$), prometiendo un OPEX y CAPEX considerablemente menores.10

**Recomendación Estratégica:** Se recomienda a SQM **no proceder con una implementación a escala comercial inmediata** de la tecnología UHPRO de $120\\ \\text{bar}$. En su lugar, se debe iniciar un **Programa Piloto de Fase 1** en las instalaciones de Antofagasta o en el Salar. El objetivo principal de este piloto será doble: (a) validar el rendimiento de la etapa de NF en la salmuera real post-silvinita de SQM y (b) realizar una comparación directa del rendimiento (límite de concentración de LiCl, LCOW, confiabilidad) entre el UHPRO de $120\\ \\text{bar}$ y sus principales competidores, notablemente el CFRO de Gradiant.

## **II. Evaluación Técnica: Viabilidad de NF-UHPRO para la Salmuera del Salar de Atacama**

### **A. Definición del Punto de Aplicación: La Paradoja de la Concentración de 6%**

La consulta evalúa el uso de NF-UHPRO para procesar una salmuera de litio de $60,000\\ \\text{mg/L}$. Es fundamental definir primero dónde existe esta salmuera en el proceso de SQM y si la tecnología es compatible con ella.

**El Proceso Actual de SQM:** El proceso de SQM en el Salar de Atacama comienza con el bombeo de salmuera natural que contiene aproximadamente $0.2\\%$ de litio ($1,800 \- 2,000\\ \\text{mg/L}$).1 Esta salmuera se procesa a través de un extenso sistema de estanques de evaporación solar durante un período de hasta 18 meses. Durante este tiempo, varias sales precipitan en secuencia (Halita, Silvinita, Carnalita).1 El producto final de este proceso de evaporación, que se transporta en camiones a la Planta Química La Negra en Antofagasta para su purificación y conversión, es una salmuera altamente concentrada que alcanza el **6% de litio**, equivalente a $60,000\\ \\text{mg/L}$ de ion litio.1

**Especificaciones de UHPRO:** La tecnología de membrana en evaluación, representada por productos como los elementos FilmTec™ Fortilife™ UHP de DuPont 7 o los sistemas XtremeRO 1800 de Saltworks 9, está diseñada para una presión operativa máxima de **$120\\ \\text{bar}$** ($1,740\\ \\text{psi}$).7

**El Límite Termodinámico (Presión Osmótica):** El principio fundamental de la ósmosis inversa (RO) es la aplicación de una presión hidráulica (P) que debe ser mayor que la presión osmótica (Π) de la solución de alimentación.17 Si $P \< \\Pi$, el proceso se detiene.

Un análisis termodinámico de primer orden de la salmuera de 6% Li es concluyente:

1. **Concentración (Molaridad):** Una concentración de $60,000\\ \\text{mg/L}$ de ion litio (Li+), asumiendo que está balanceado como Cloruro de Litio (LiCl), equivale a una molaridad (M) de $\\approx 8.65\\ \\text{mol/L}$.  
   * *Cálculo: ($60,000\\ \\text{mg/L Li}$) / ($1,000\\ \\text{mg/g}$) / ($6.94\\ \\text{g/mol Li}$) \= $8.65\\ \\text{M}$*  
2. **Ecuación de van't Hoff:** La presión osmótica se estima usando $\\Pi \= iMRT$, donde '$i$' es el factor de van't Hoff (para LiCl, $i \= 2$), '$R$' es la constante de los gases ($0.08206\\ \\text{L}\\cdot\\text{atm/mol}\\cdot\\text{K}$), y '$T$' es la temperatura (asumida en $298\\ \\text{K}$ o $25^\\circ\\text{C}$).19  
3. **Cálculo de Presión Osmótica:**  
   * $\\Pi \= (2) \\times (8.65\\ \\text{M}) \\times (0.08206) \\times (298\\ \\text{K}) \\approx 422.6\\ \\text{atm}$  
   * **$\\Pi \\approx 428\\ \\text{bar}$**

Este resultado es la tesis central de la evaluación técnica: **es termodinámicamente imposible que un sistema de $120\\ \\text{bar}$ genere flujo de permeado contra una presión osmótica de $428\\ \\text{bar}$**. Por lo tanto, la tecnología NF-UHPRO no puede usarse para tratar o concentrar la salmuera final de 6% Li de SQM.

**Límite Práctico de TDS vs. LiCl:** El límite de concentración práctico citado para UHPRO de $120\\ \\text{bar}$ es de **$130,000\\ \\text{mg/L}$ de TDS (13%)**.9 Este límite se basa típicamente en salmueras de NaCl. Sin embargo, el LiCl (masa molar $\\approx 42.4\\ \\text{g/mol}$) genera una presión osmótica mucho mayor que el NaCl (masa molar $\\approx 58.4\\ \\text{g/mol}$) a la misma concentración de $\\text{mg/L}$.22

Un cálculo inverso determina el límite real para LiCl: una presión de $120\\ \\text{bar}$ puede teóricamente superar una molaridad de $\\approx 2.42\\ \\text{M}$ de LiCl. Esto se traduce en una concentración máxima de **$\\approx 102,600\\ \\text{mg/L}$ de LiCl**, o **$\\approx 16,800\\ \\text{mg/L}$ de ion litio (1.68% Li)**.

**Conclusión (Punto de Aplicación):** La única aplicación viable para NF-UHPRO es como un **reemplazo de los estanques de evaporación intermedios** o, en un escenario futuro, como un **concentrador de eluído de DLE**. El sistema tomaría una salmuera de alimentación de concentración más baja (p. ej., post-cristalización de potasa 1, o un eluído de DLE de $1,000-5,000\\ \\text{mg/L}$ Li 23) y la concentraría hasta su límite máximo de $\\approx 100,000 \- 120,000\\ \\text{mg/L}$ de LiCl.

### **B. Análisis del Diagrama de Flujo del Proceso: Integración en las Operaciones de SQM**

Dada la conclusión anterior, se proponen dos diagramas de flujo viables para la integración de NF-UHPRO en el Salar de Atacama.

#### **Diagrama de Flujo A: Aumento de Estanques (Tratamiento de Salmuera Post-Potasa)**

Este escenario integra la tecnología en el proceso de evaporación solar existente para purificar la salmuera y recuperar agua.

1. **Alimentación:** Salmuera extraída de un estanque intermedio, como después de la precipitación de Silvinita (KCl) y Carnalita (KCl·MgCl₂).1 Esta salmuera tiene una concentración de Li intermedia pero es alta en impurezas, especialmente Magnesio (Mg) y Sulfato (SO4).1  
2. **Pretratamiento (Químico \+ MF/UF):** Requiere un ablandamiento químico robusto para precipitar Sílice (SiO2) y la dureza inicial.27 Esto es seguido por microfiltración (MF) o ultrafiltración (UF) para proteger las membranas de NF.  
3. **Etapa 1: Nanofiltración (NF):** El objetivo principal es la purificación selectiva. La NF rechaza cationes divalentes (Mg²+, Ca²+) e iones sulfato (SO₄²⁻) 28, mientras permite el paso de iones monovalentes (Li+, Na+, Cl⁻).30  
4. **Etapa 2: UHPRO ($120\\ \\text{bar}$):** Esta etapa recibe el permeado de NF (una corriente de LiCl purificado y diluido) y la concentra.  
5. **Productos y Corrientes de Residuos:**  
   * **Producto 1 (Concentrado UHPRO):** Salmuera de LiCl purificada y concentrada ($\\approx 10\\%-12\\%$ LiCl). Se envía a los estanques de evaporación finales o directamente a una planta de cristalización/MVR.  
   * **Producto 2 (Permeado UHPRO):** Agua de alta pureza. Se recicla como agua de proceso para las plantas de SQM, reduciendo la extracción de agua continental.  
   * **Rechazo (Retentado de NF):** Salmuera hipersalina rica en Mg/Ca/SO4. Se devuelve a los estanques de descarte designados o se evalúa para la recuperación de subproductos de magnesio.14

#### **Diagrama de Flujo B: Concentración de Eluído de DLE (Escenario Futuro)**

Si SQM adopta la Extracción Directa de Litio (DLE) 4, el NF-UHPRO es la tecnología de concentración post-extracción ideal.

1. **Alimentación:** Eluído de DLE. Esta corriente es típicamente un cloruro de litio limpio con bajas impurezas pero relativamente diluido ($1,000 \- 5,000\\ \\text{mg/L}$ Li).23  
2. **Etapa 1: UHPRO ($120\\ \\text{bar}$):** Concentración directa. La etapa de NF puede no ser necesaria si el proceso de DLE es lo suficientemente selectivo para eliminar Mg/Ca.33  
3. **Productos:**  
   * **Producto 1 (Concentrado UHPRO):** Salmuera de LiCl concentrada ($\\approx 10\\%-12\\%$ LiCl).  
   * **Producto 2 (Permeado UHPRO):** Agua de proceso.

### **C. Pretratamiento por Nanofiltración (NF): Estrategia de Purificación para la Salmuera de SQM**

El principal desafío técnico en las salmueras del Salar de Atacama (y análogos como Qinghai) es la alta relación Mg/Li.35 La NF es la tecnología de membrana de elección para esta separación.31

El mecanismo de separación de NF se basa en una combinación de exclusión por tamaño y, de manera más importante, exclusión electrostática (Donnan). Las membranas de poliamida (PA) compuestas de película fina (TFC) típicamente tienen una carga superficial negativa. Esta carga rechaza fuertemente los cationes divalentes con alta densidad de carga (como Mg²⁺ y Ca²⁺) y aniones divalentes (SO₄²⁻), mientras permite el paso de iones monovalentes más pequeños (Li⁺, Na⁺).40

El rendimiento probado en estudios de laboratorio y piloto es prometedor. La membrana NF90, por ejemplo, ha demostrado un rechazo del 100% de magnesio con una pérdida de litio de solo el 15% (85% de paso de Li⁺).30 Investigaciones más recientes se centran en modificar la química de la membrana para optimizar la selectividad Li/Mg (SLi/Mg).42

En el Diagrama de Flujo A, la NF es un paso habilitador crítico. Cumple dos funciones: (1) purifica el producto de litio, reduciendo la carga en los pasos de purificación química aguas abajo en la Planta La Negra 14, y (2) protege las membranas de UHPRO aguas abajo del escalamiento catastrófico por precipitación de sales de Mg y Ca.27

### **D. Límites Termodinámicos y Operativos (Revisión Profunda)**

Como se estableció en la Sección II.A, el límite termodinámico (presión osmótica) de la salmuera de 6% Li ($\\approx 428\\ \\text{bar}$) prohíbe el uso de UHPRO de $120\\ \\text{bar}$.

El límite práctico de $1.68\\%$ Li ($\\approx 10.4\\%$ LiCl) es una estimación teórica. En la operación real, este límite es aún más bajo. La presión de alimentación neta (NFP), que es la fuerza motriz real para el flujo de agua, disminuye a medida que la salmuera fluye a través del sistema debido a (a) la caída de presión del canal (ΔP) y (b) el aumento de la presión osmótica a medida que el agua se elimina.18

El fenómeno de la **polarización de la concentración (CP)** 18 significa que la concentración de sal en la superficie misma de la membrana es significativamente mayor que en la salmuera a granel. Por lo tanto, la presión osmótica *localizada* en la superficie de la membrana alcanzará el umbral de $120\\ \\text{bar}$ mucho antes de que la salmuera a granel alcance la concentración de 1.68% Li, deteniendo el flujo. Este es el límite *práctico* citado por los proveedores ($130,000\\ \\text{mg/L}$ TDS 16), que para el LiCl será de aproximadamente $100,000 \- 120,000\\ \\text{mg/L}$.

### **E. Análisis de Riesgo Técnico: Gestión de Incrustaciones (Scaling) y Ensuciamiento (Fouling)**

La implementación de un sistema de membranas en una salmuera tan compleja como la del Salar de Atacama conlleva riesgos técnicos significativos.

**Riesgo N° 1: Escalado Inorgánico (Scaling):** La salmuera de SQM, después de la evaporación parcial, está sobresaturada o cerca de la saturación con múltiples sales.1 Los principales culpables del escalado en membranas son el **Sulfato de Calcio (CaSO₄)** y la **Sílice (SiO₂)**.27 La NF (Etapa 1\) está diseñada para eliminar $\>98\\%$ de Ca²⁺ y SO₄²⁻, mitigando el riesgo de escalado de sulfatos en la UHPRO (Etapa 2).29 Sin embargo, la sílice no es bien rechazada por la NF 28 y es un conocido "asesino de membranas". Por lo tanto, un sistema de pretratamiento químico robusto (ablandamiento), como los que se usan en la industria 17, es un requisito no negociable *antes* de la etapa de NF para precipitar la sílice y la dureza.

**Riesgo N° 2: Ensuciamiento de la Membrana (Fouling):**

* **Biofouling:** Los estanques de evaporación solar abiertos de SQM son propensos al crecimiento de algas y bacterias. Si no se eliminan en el pretratamiento (p. ej., UF), estos microorganismos formarán una biopelícula en la superficie de la membrana, bloqueando el flujo.27  
* **Puenteo de Cationes (Cation Bridging):** Este es un riesgo químico sutil. Las membranas de poliamida (PA) dependen de su carga superficial negativa para repeler los iones. Cualquier catión divalente (Mg²⁺, Ca²⁺) que "escape" de la etapa de NF puede actuar como un puente, uniéndose a dos grupos de carga negativa en la superficie de la membrana.41 Este mecanismo neutraliza la carga de la membrana, lo que reduce drásticamente su capacidad para rechazar *otros* cationes divalentes, llevando a un ciclo de ensuciamiento acelerado y falla prematura de la membrana.36

La siguiente tabla resume el desafío de composición que enfrenta el tren de membranas propuesto.

**Tabla 1: Perfil de Salmuera de Alimentación (Estimado) vs. Límites de Membrana NF-UHPRO**

| Parámetro | Salmuera SdA (Post-Potasa) (Estimación) | Membrana NF (p.ej. NF90) | Membrana UHPRO (120 bar) | Fuente de Datos / Justificación |
| :---- | :---- | :---- | :---- | :---- |
| **TDS (mg/L)** | $250,000 \- 350,000$ | N/A (Alimentación) | Límite práctico de rechazo $\< 130,000$ (NaCl) | 16 |
| **Li+ (mg/L)** | $10,000 \- 15,000$ | $\>85\\%$ Paso (Pérdida $\<15\\%$) | Límite de Conc. $\\approx 16,800$ (Teórico) | .\[1, 30\] Límite de Li+ calculado. |
| **Mg2+ (mg/L)** | $15,000 \- 25,000$ | $\>99\\%$ Rechazo | $\< 1\\ \\text{mg/L}$ (Tolerancia) | .\[1, 26, 30\] La tolerancia de UHPRO es baja. |
| **Ca2+ (mg/L)** | $500 \- 1,500$ | $\>98\\%$ Rechazo | $\< 1\\ \\text{mg/L}$ (Tolerancia) | .\[26, 29\] Prevención de escalado CaSO₄. |
| **SO42- (mg/L)** | $5,000 \- 10,000$ | $\>99\\%$ Rechazo | $\< 1\\ \\text{mg/L}$ (Tolerancia) | .\[26, 29\] Prevención de escalado. |
| **Sílice (SiO2) (mg/L)** | $50 \- 150$ | $\\approx 30-50\\%$ Rechazo | $\< 25\\ \\text{mg/L}$ (Tolerancia) | .\[27, 28\] Requiere pretratamiento químico. |

## **III. Evaluación Económica: Modelado de Costos y Propuesta de Valor**

### **A. Modelo de Gasto de Capital (CAPEX): Estimación AACE Clase 4**

Una estimación AACE Clase 4 (nivel de Estudio de Viabilidad) se basa en diagramas de flujo de proceso (PFD) y listas de equipos principales.47 Si bien el CAPEX para plantas de desalinización de agua de mar (SWRO) estándar es de aproximadamente **$4,000\\ \\text{USD/m}^3\\text{-d}$** de capacidad 48, el CAPEX para un sistema NF-UHPRO de salmuera de litio será significativamente mayor ($\>30-50\\%$) por tres razones clave:

1. **Componentes de $120\\ \\text{bar}$:** Las bombas de alimentación de ultra-alta presión, los recipientes a presión y los dispositivos de recuperación de energía (ERD) son equipos especializados y de alto costo.  
2. **Metalurgia:** La salmuera de LiCl es altamente corrosiva. Se requerirá metalurgia superior (p. ej., Acero Inoxidable Dúplex o Súper Dúplex) en todo el tren de alta presión, aumentando sustancialmente el costo del material.  
3. **Pretratamiento Completo:** El CAPEX debe incluir el costo total de las plantas de pretratamiento (ablandamiento químico, UF) y la planta de NF (Etapa 1), que son esenciales para la operación.27

### **B. Modelo de Gasto Operativo (OPEX): Conductores Clave**

El Costo Nivelado del Agua (LCOW) es el indicador principal del OPEX. Los datos de proveedores, como BW Water, para sistemas UHPRO proporcionan un punto de partida 5:

* Para TDS $\< 70\\ \\text{g/L}$ ($70,000\\ \\text{mg/L}$): **$1.50 \- 3.00\\ \\text{USD/m}^3$** de permeado.  
* Para TDS $\> 100\\ \\text{g/L}$ ($100,000\\ \\text{mg/L}$): **$4.00 \- 8.00\\ \\text{USD/m}^3$** de permeado.

Dado que la etapa UHPRO operará en el rango superior, concentrando la salmuera de LiCl hasta $\\approx 100\\ \\text{g/L}$, una estimación de OPEX realista se sitúa en el rango de **$3.00 \- 6.00\\ \\text{USD/m}^3$** de agua producida.

Los dos principales impulsores de este OPEX son:

1. **Energía:** La energía es el componente de OPEX más grande.50 El consumo de energía de UHPRO se estima entre **$4\\ \\text{y}\\ 8\\ \\text{kWh/m}^3$** 5, sustancialmente más alto que el SWRO ($\\approx 3\\ \\text{kWh/m}^3$) debido a las presiones extremas.  
2. **Reemplazo de Membranas:** Dada la naturaleza química agresiva de la salmuera, los altos riesgos de ensuciamiento 27 y la operación a presiones máximas, es prudente asumir una vida útil de la membrana más corta ($\<3$ años) en comparación con las aplicaciones estándar de agua de mar ($5-7$ años).

### **C. Propuesta de Valor Central: El "Crédito del Agua" en Antofagasta**

Un análisis económico superficial concluiría que el sistema NF-UHPRO (alto CAPEX, alto OPEX) no puede competir con los estanques de evaporación solar (cero costo de energía).1 Este análisis es incorrecto porque omite la propuesta de valor central.

La tecnología NF-UHPRO es, en efecto, una **planta de fabricación de agua**. Por cada metro cúbico de salmuera concentrada que produce, genera múltiples metros cúbicos de agua dulce (permeado).

Este hecho debe contextualizarse dentro del entorno operativo de SQM:

* **Contexto Estratégico:** SQM opera en el Desierto de Atacama, una de las regiones con mayor estrés hídrico del planeta. La Comisión Chilena del Cobre (Cochilco) proyecta que para 2030, el **65% de toda el agua utilizada en la minería de la Región de Antofagasta será agua de mar desalada**.2  
* **Riesgo Operativo:** El uso de agua continental por parte de SQM está bajo un intenso escrutinio regulatorio y social.51 El competidor directo de SQM, Albemarle, fue multado en septiembre de 2025 por violaciones de extracción de agua en el Salar.4 Esto establece un precedente regulatorio claro y un riesgo significativo para la continuidad operativa de SQM.  
* **Análisis de Alternativas:** La alternativa para SQM para asegurar su suministro de agua es financiar una nueva planta desalinizadora en la costa (como las de Los Pelambres 52 o el proyecto SADDN 53) y construir un costoso ducto de cientos de kilómetros hacia el interior.

El LCOW de **$3 \- 6\\ \\text{USD/m}^3$** 5 del sistema NF-UHPRO no debe verse como un costo operativo, sino como el **precio de compra** de agua dulce que SQM se estaría "vendiendo a sí misma". Este precio es casi con seguridad *más bajo* que el costo nivelado de construir y operar un nuevo sistema de ducto de agua desalada desde la costa.

Por lo tanto, la adopción de NF-UHPRO no se justifica para ahorrar costos de energía (la evaporación solar es "gratuita"), sino como una **inversión estratégica en seguridad hídrica** para garantizar la continuidad operativa y la licencia social para operar.

### **D. Análisis Comparativo de Viabilidad: NF-UHPRO vs. Evaporación MVR**

La alternativa mecánica directa a los estanques solares (para acelerar la producción) es la evaporación térmica, típicamente la Recompresión Mecánica de Vapor (MVR).54

En este escenario, las membranas de ultra-alta presión (UHPRO) son económicamente superiores. Los análisis de la industria indican que UHPRO puede reducir los costos de gestión de salmuera en un factor de **tres** en relación con los evaporadores.16 Los proveedores alegan ahorros de **50-60% en CAPEX y OPEX** en comparación con los sistemas térmicos.12

Además, la MVR solo concentra; no purifica la salmuera (como lo hace la NF) ni produce agua de alta calidad (permeado de RO). Si SQM necesita *acelerar* la producción y *recuperar agua*, la ruta de membranas (NF-UHPRO) es económicamente superior a la ruta térmica (MVR).

**Tabla 2: Análisis Económico Comparativo (AACE Clase 4, por m³ de agua removida)**

| Métrica | Estanques Solares (Statu Quo) | Evaporación MVR | NF-UHPRO (120 bar) | NF-CFRO (Gradiant) | Fuente de Datos / Justificación |
| :---- | :---- | :---- | :---- | :---- | :---- |
| **CAPEX (Relativo)** | Bajo (Prim. Terreno) | Muy Alto | Alto | Medio-Alto | .\[12, 16, 56\] CFRO usa presión más baja (\<83 bar), reduciendo CAPEX.10 |
| **OPEX (Energía)** | Cero (Solar) | Alto (Térmico/Eléctrico) | Alto (Eléctrico) | Medio-Alto | .1 MVR \[55\] vs. UHPRO 4-8 kWh/m³.5 CFRO alega \<50% energía de evaporadores.\[58\] |
| **OPEX Total (LCOW, $/m³)** | N/A (Evap. neta) | $\> 10.00$ (Estimado) | **$4.00 \- 8.00$** | $2.00 \- 5.00$ (Estimado) | .5 CFRO alega 44-60% menos costo.\[12, 57\] |
| **Producto de Agua** | Cero (Pérdida neta) | Destilado (Alto Costo) | **Permeado de Alta Pureza** | Permeado de Alta Pureza | .51 La ventaja clave de las membranas. |
| **Huella (Tierra)** | Masiva | Pequeña | Pequeña | Pequeña | .1 |

## **IV. Panorama Comercial y de Proveedores**

### **A. Evaluación Comparativa de Tecnologías Competitivas**

Si SQM decide invertir en membranas de concentración, el UHPRO de $120\\ \\text{bar}$ no es la única opción. Dos competidores principales, Gradiant y Saltworks, alegan un rendimiento superior que debe ser evaluado.

**1\. Gradiant: El Desafío del CFRO (Counter-Flow RO)**

* **Tecnología:** Ósmosis Inversa de Contraflujo (CFRO).12  
* **Mecanismo:** Esta es una innovación de *proceso*, no de membrana. Utiliza membranas de RO estándar disponibles comercialmente.11 El sistema aplica una solución salina diluida (a menudo el propio permeado o una corriente lateral) al lado del *permeado* (lado de baja presión) de la membrana.58  
* **Efecto del Mecanismo:** Este "empuje" de contraflujo reduce artificialmente el gradiente de presión osmótica (ΔΠ) neto a través de la membrana. Esto permite que una presión hidráulica de alimentación mucho más baja (Gradiant alega operar a **$\< 69-83\\ \\text{bar}$** 10) supere un ΔΠ que de otro modo sería termodinámicamente imposible.  
* **Alegación de Rendimiento:** Gradiant alega que CFRO puede concentrar salmueras hasta **$260,000\\ \\text{mg/L}$ de TDS (NaCl)** 11 y alega concentraciones de litio de **$\>200,000\\ \\text{mg/L}$**.62  
* **Análisis de la Alegación:** La alegación de $200,000\\ \\text{mg/L}$ (20%) de *Litio* 63 es considerada inverosímil y casi con seguridad un error tipográfico (probablemente refiriéndose a LiCl, o una concentración de producto de DLE+CFRO). $200,000\\ \\text{mg/L}$ de Li-ion tendrían una presión osmótica de $\>1400\\ \\text{bar}$. Sin embargo, la alegación de alcanzar $260,000\\ \\text{mg/L}$ de *TDS (NaCl)* 12 es la propuesta de valor clave, ya que esto supera el límite de $130,000\\ \\text{mg/L}$ del UHPRO de $120\\ \\text{bar}$, y lo hace a una presión operativa más baja. Esto implica un CAPEX (bombas estándar) y OPEX (energía) significativamente menores.

**2\. Saltworks Technologies: El Enfoque Híbrido FusionRO**

* **Tecnología:** Saltworks ofrece dos sistemas: (1) XtremeRO 1800, que es un sistema UHPRO estándar de $120\\ \\text{bar}$ 16, y (2) FusionRO, un sistema híbrido patentado de UHP RO/NF.9  
* **Alegación de Rendimiento:**  
  * **XtremeRO 1800 ($120\\ \\text{bar}$):** Límite de **$130,000\\ \\text{mg/L}$ TDS**.9 (Competidor directo de BW/DuPont).  
  * **FusionRO (Híbrido):** Límite de **$\>200,000 \- 220,000\\ \\text{mg/L}$ TDS**.9 (Competidor directo de Gradiant).  
* **Análisis:** Saltworks ofrece tanto la tecnología base (UHPRO 120 bar) como una alternativa avanzada (FusionRO) que compite con Gradiant.

**3\. Alternativas de DLE \+ Eluído (Lilac, Summit)**

* Es importante aclarar que los proveedores de DLE como Lilac Solutions, Summit Nanotech y Aquatech (Li-Pro) no son competidores de la tecnología de concentración; son **habilitadores simbióticos**.66 Estos sistemas de DLE producen un eluído de LiCl limpio que es la *alimentación ideal* para un sistema de concentración por membranas (NF-UHPRO).33  
* La adopción de UHPRO/CFRO es, de hecho, un paso crítico para hacer que los diagramas de flujo de DLE sean económicamente viables.  
* *Nota sobre Datos de Proveedores:* Existe una confusión significativa en los datos de marketing. Lilac Solutions, por ejemplo, ha alegado la producción de concentraciones de $30,000-60,000\\ \\text{mg/L}$ de litio.73 Sin embargo, sus propios datos de piloto informan concentraciones de eluído de DLE de $2,044 \- 4,000\\ \\text{mg/L}$ 74, lo cual está en línea con las normas de la industria ($1,000-5,000\\ \\text{mg/L}$ 23). La cifra más alta ($30-60\\text{k}$) casi con seguridad se refiere a un producto *post-concentración por membrana*, subrayando la necesidad de la tecnología UHPRO/CFRO.

### **B. Ecosistema de Proveedores para la Implementación**

* **Fabricantes de Membranas:** DuPont (FilmTec™ Fortilife™ UHP) 7, LG Chem.75  
* **Integradores de Sistemas (Skid-builders):**  
  * UHPRO (120 bar): BW Water (UHPRO Brine Positive) 5, Saltworks (XtremeRO 1800).9  
  * UHPRO Avanzado/Competencia: Gradiant (CFRO) 12, Saltworks (FusionRO).9  
* **Proveedores de DLE (Socios de Alimentación):** Aquatech (Li-Pro) 67, Lilac Solutions 73, Summit Nanotech 78, EnergyX.79

### **C. Análisis de Casos de Estudio: Lecciones de las Plantas de Membranas de Litio en Qinghai (China)**

La provincia de Qinghai, China, ofrece el análogo industrial más cercano a los desafíos de SQM, ya que sus salmueras también se caracterizan por una alta relación Mg/Li.38

La ruta industrial probada y adoptada en Qinghai es una combinación de "Adsorción (DLE) \+ Membrana".38

**Caso de Estudio (CITIC Guoan):** Esta importante instalación utiliza un tren de membranas (MF/UF/NF/RO) suministrado por LG Chem.49 El propósito explícito de la RO es "filtrar rápidamente las moléculas de agua sin aplicar calor", reduciendo así la carga y el costo de la evaporación térmica posterior.75

**Caso de Estudio (Flujo de Proceso Detallado):** Un estudio técnico que detalla el proceso en Qinghai 31 confirma el diagrama de flujo exacto:

1. Extracción (DLE).  
2. **Nanofiltración (NF)** (para eliminar Mg²⁺, Ca²⁺).  
3. **Ósmosis Inversa (RO)** (para concentración).  
4. **Evaporación** (para la concentración final).  
5. Precipitación (Li₂CO₃).

Este caso de estudio proporciona dos lecciones críticas: (1) Confirma que el proceso NF-RO es industrialmente viable para salmueras de alto Mg/Li. (2) Confirma que **la RO no es el paso final de concentración**. Actúa como un *pre-concentrador* para reducir la carga de la evaporación térmica final (MVR). Las presiones de RO utilizadas en esas plantas de Qinghai son más bajas, en el rango de $25 \- 60\\ \\text{bar}$.83

La implicación para SQM es que la propuesta de NF-UHPRO (120 bar) es una **evolución de este proceso probado**. Al usar una presión más alta ($120\\ \\text{bar}$ vs. $60\\ \\text{bar}$), SQM puede empujar la concentración de LiCl a un nivel más alto (p. ej., a $\\approx 10\\%$ LiCl vs. $\\approx 5\\%$ LiCl), reduciendo *aún más* el tamaño, el CAPEX y el OPEX de la etapa final de evaporación/cristalización.

**Tabla 3: Matriz de Evaluación Comparativa de Proveedores de Concentración por Membrana**

| Atributo | NF-UHPRO (Estándar) | Gradiant CFRO | Saltworks FusionRO | Fuente de Datos / Justificación |
| :---- | :---- | :---- | :---- | :---- |
| **Proveedor** | DuPont, BW Water | Gradiant | Saltworks Technologies | \[7, 8, 9, 12\] |
| **Presión Operativa** | **$120\\ \\text{bar}$ ($1,740\\ \\text{psi}$)** | $\< 69-83\\ \\text{bar}$ ($1,000-1,200\\ \\text{psi}$) | Variable (Híbrido UHP) | \[7, 9, 10, 11\] |
| **Límite TDS (Alegado)** | $130,000\\ \\text{mg/L}$ (NaCl) | **$260,000\\ \\text{mg/L}$ (NaCl)** | $\> 200,000\\ \\text{mg/L}$ (TDS) | \[9, 12, 16\] |
| **Límite LiCl (Estimado)** | **$\\approx 100,000 \- 120,000\\ \\text{mg/L}$** | $\\approx 150,000\\ \\text{mg/L}$ (?) (Requiere Piloto) | $\\approx 130,000\\ \\text{mg/L}$ (?) (Requiere Piloto) | Cálculo de P. Osmótica vs. Alegaciones. |
| **Ventaja Clave** | Tecnología probada ($120\\ \\text{bar}$). | **Baja presión \= Menor OPEX/CAPEX**. | Híbrido NF/RO optimizado. | .\[9, 10, 11\] La ventaja de CFRO es económica. |
| **Riesgo Clave** | Límite de concentración más bajo. Mayor costo energético ($120\\ \\text{bar}$). | Complejidad del proceso (contraflujo). Alegaciones de rendimiento dudosas ($\>200\\text{k}$ Li).63 | Discrepancias en datos de marketing.\[9, 84\] |  |

## **V. Hoja de Ruta Regulatoria y Estratégica para SQM en Antofagasta**

### **A. Contexto Regulatorio Chileno: Permisos y Cumplimiento**

La implementación de una planta de NF-UHPRO no es una actualización de mantenimiento menor; es una modificación de proceso a escala industrial.

* **Modificación de RCA:** La construcción de esta nueva planta requerirá una presentación al **Servicio de Evaluación Ambiental (SEA)** para modificar la **Resolución de Calificación Ambiental (RCA)** existente de SQM.85 Este es un proceso largo y complejo, que a menudo toma de 18 a 24 meses e involucra consultas con agencias (como DGA) y potencialmente participación pública.85  
* **Gestión de Residuos Líquidos (DS 90):** La planta creará dos nuevas corrientes: (1) el permeado de agua dulce y (2) el retentado de NF, que será una salmuera hipersalina y tóxica, ultra-concentrada en Mg, Ca y SO4. La descarga de este retentado (probablemente de vuelta a estanques de descarte) debe ser caracterizada y gestionada de acuerdo con la **Norma de Emisión DS 90**.87 Aunque el permeado es un activo, el retentado es un *nuevo pasivo* ambiental que debe ser gestionado.

### **B. Imperativo Estratégico: Mitigación del Riesgo Hídrico (Proyecciones de Cochilco)**

Como se detalló en la Sección III.C, el impulsor estratégico más fuerte para este proyecto es la mitigación del riesgo hídrico. La minería en Antofagasta enfrenta una crisis de agua estructural.2 La multa de 2025 a Albemarle por extracción excesiva de agua 4 es una clara señal regulatoria de que la dependencia del agua continental es un riesgo comercial inaceptable.

El proyecto NF-UHPRO crea una fuente de agua "interna" al reciclar el agua de la propia salmuera de proceso. El CAPEX de este proyecto debe compararse directamente con el CAPEX/OPEX de la alternativa: asegurar una fuente de agua desalada desde la costa.8 Es muy probable que la recuperación de agua *in situ* (NF-UHPRO) sea la opción de menor costo y más rápida de implementar para asegurar el agua de proceso necesaria para las operaciones de SQM.

### **C. Hoja de Ruta de Implementación Propuesta: Del Piloto a la Escala Comercial**

Se propone un enfoque de tres fases para de-riesgar la tecnología y la implementación regulatoria.

* **Fase 1: Pruebas de Viabilidad y Piloto (12 Meses)**  
  * Establecer una planta piloto en Antofagasta o en el Salar (similar al enfoque de Summit en Santiago 78).  
  * **Hito 1.1 (Prueba de NF):** Alimentar la planta piloto con salmuera real post-potasa 1 para validar el rendimiento de la NF (Objetivo: Rechazo $\>99\\%$ Mg, pérdida $\<15\\%$ Li).30  
  * **Hito 1.2 (Prueba de Concentradores):** Alimentar el permeado de NF purificado a tres circuitos paralelos: (a) UHPRO $120\\ \\text{bar}$ (p. ej., BW/DuPont), (b) Gradiant CFRO, y (c) Saltworks FusionRO.  
  * **Hito 1.3 (Go/No-Go):** Determinar el límite *real* de concentración de LiCl (ppm), el LCOW ($\\text{USD/m}^3$) y la confiabilidad operativa para cada tecnología.  
* **Fase 2: Ingeniería (FEED) y Permisos (18-24 Meses)**  
  * Basado en el Hito 1.3, seleccionar al proveedor de tecnología (UHPRO o CFRO).  
  * Completar la ingeniería FEED (AACE Clase 3).  
  * Preparar y presentar la **Modificación de la RCA** al SEA 85 y el plan de manejo DS 90\.87 *Esta actividad es el camino crítico para el proyecto*.  
* **Fase 3: Construcción y Puesta en Marcha (24 Meses)**  
  * Ejecución del proyecto, fabricación de skids, obras civiles e integración.

**Tabla 4: Hoja de Ruta de Implementación y Permisos para SQM (Antofagasta)**

| Fase | Hitos Técnicos Clave | Hitos Regulatorios Clave | Duración Estimada | Fuente de Datos / Justificación |
| :---- | :---- | :---- | :---- | :---- |
| **Fase 1: Piloto y Viabilidad** | 1\. Asegurar salmuera post-silvinita. 2\. Validar NF para rechazo $\>99\\%$ Mg.30 3\. Comparar límite de TDS/LCOW de UHPRO vs. CFRO.\[5, 10\] | 1\. Permisos de planta piloto (si es necesario). | 12 Meses | .\[74, 78\] Validación de rendimiento antes de CAPEX. |
| **Fase 2: Ingeniería (FEED) y Permisos** | 1\. Seleccionar proveedor de tecnología (UHPRO o CFRO). 2\. Ingeniería de detalle (AACE Clase 3). 3\. Diseño de gestión de retentado. | 1\. **Presentación de Modificación de RCA**.85 2\. Consultas públicas/agencias. 3\. Aprobación DS 90\.87 | 18-24 Meses | .85 La RCA es el camino crítico. |
| **Fase 3: EPC (Construcción)** | 1\. Fabricación de skids. 2\. Obras civiles en el Salar. 3\. Puesta en marcha. | 1\. Cumplimiento de RCA. | 24 Meses | .53 |
| **Tiempo Total hasta Operación:** |  |  | **$\\approx 4.5 \- 5\\ \\text{Años}$** |  |

## **VI. Conclusión y Recomendaciones Finales**

Este análisis concluye con cuatro puntos clave para la toma de decisiones de SQM:

1. **Conclusión Técnica:** La tecnología NF-UHPRO ($120\\ \\text{bar}$) es **técnicamente inviable** para la salmuera final de 6% Li de SQM debido a una presión osmótica de $\\approx 428\\ \\text{bar}$. Su aplicación viable es como un sistema intermedio de purificación (NF) y pre-concentración (UHPRO) con un límite de concentración estimado de $\\approx 10\\%-12\\%$ de LiCl ($1.6\\%-1.9\\%$ Li).  
2. **Conclusión Económica:** La justificación de la inversión para este proyecto no es el ahorro de costos sobre la evaporación solar. Es una **inversión estratégica en seguridad hídrica**. El LCOW resultante de $4 \- 8\\ \\text{USD/m}^3$ 5 es el costo de asegurar el agua de proceso, mitigando el riesgo regulatorio 4 y reduciendo la dependencia de acuíferos continentales.2 Esta ruta es significativamente más barata que la evaporación térmica MVR.16  
3. **Conclusión Comercial:** La tecnología UHPRO estándar de $120\\ \\text{bar}$ (el enfoque de "fuerza bruta") enfrenta una competencia severa y disruptiva de procesos como Gradiant CFRO, que utiliza un enfoque de "proceso inteligente" para (alegadamente) lograr concentraciones más altas a presiones operativas más bajas ($\<83\\ \\text{bar}$), lo que implica un OPEX y CAPEX significativamente menores.10  
4. **Recomendación Final:** SQM debe avanzar a una **Fase 1 (Piloto)**. El objetivo principal de este piloto no es solo probar la viabilidad de NF-UHPRO, sino **compararla directamente con Gradiant CFRO y Saltworks FusionRO** usando salmuera real del Salar de Atacama. La decisión de inversión a gran escala debe basarse en los datos de campo que demuestren qué tecnología ofrece (a) el LCOW ($\\text{USD/m}^3$) más bajo y (b) el límite de concentración de LiCl (ppm) más alto bajo condiciones operativas reales. El camino regulatorio (Modificación de RCA) tomará $\\approx 2$ años 85 y representa el camino crítico del proyecto.

#### **Obras citadas**

1. Salar de Atacama Lithium and Potassium Productive Process \- MDPI, fecha de acceso: noviembre 2, 2025, [https://www.mdpi.com/2075-4701/14/10/1095](https://www.mdpi.com/2075-4701/14/10/1095)  
2. Consumo de energía y agua en la minería al 2030 \- Universidad Adolfo Ibañez, fecha de acceso: noviembre 2, 2025, [https://www.uai.cl/noticias/ingenieria-y-ciencias/en-la-uai-cochilco-presento-informes-sobre-consumo-de-energia-y-agua-en-la-mineria-al-2030](https://www.uai.cl/noticias/ingenieria-y-ciencias/en-la-uai-cochilco-presento-informes-sobre-consumo-de-energia-y-agua-en-la-mineria-al-2030)  
3. Consumo de agua de mar en minería aumentará en 156% a 2030 \- Mch, fecha de acceso: noviembre 2, 2025, [https://www.mch.cl/negocios-industria/consumo-de-agua-de-mar-en-mineria-aumentara-en-156-a-2030/](https://www.mch.cl/negocios-industria/consumo-de-agua-de-mar-en-mineria-aumentara-en-156-a-2030/)  
4. Chile fines Albemarle for lithium extraction violations \- MINING.COM, fecha de acceso: noviembre 2, 2025, [https://www.mining.com/chile-fines-albemarle-for-lithium-extraction-violations/](https://www.mining.com/chile-fines-albemarle-for-lithium-extraction-violations/)  
5. UHPRO Brine Positive \- BW Water, fecha de acceso: noviembre 2, 2025, [https://bw-water.com/technology/uhpro-brine-positive/](https://bw-water.com/technology/uhpro-brine-positive/)  
6. BW Water UHPRO Brine Positive, fecha de acceso: noviembre 2, 2025, [https://bw-water.com/wp-content/uploads/2025/08/BW-Water-Brine-Positive.pdf](https://bw-water.com/wp-content/uploads/2025/08/BW-Water-Brine-Positive.pdf)  
7. FilmTec™ Fortilife™ UHP Element Product Data Sheet \- DuPont, fecha de acceso: noviembre 2, 2025, [https://www.dupont.com/content/dam/water/amer/us/en/water/showpad\_only/documents/en/RO-FilmTec-Fortilife-UHP-PDS-45-D04604-en.pdf](https://www.dupont.com/content/dam/water/amer/us/en/water/showpad_only/documents/en/RO-FilmTec-Fortilife-UHP-PDS-45-D04604-en.pdf)  
8. Unlocking more capacity from the same desalination plant \- BW Water, fecha de acceso: noviembre 2, 2025, [https://bw-water.com/unlocking-more-capacity-from-the-same-desalination-plant/](https://bw-water.com/unlocking-more-capacity-from-the-same-desalination-plant/)  
9. XtremeRO & FusionRO \- UHP Reverse Osmosis/Nanofiltration \- Saltworks Technologies, fecha de acceso: noviembre 2, 2025, [https://www.saltworkstech.com/technology/xtremero-nf-reverse-osmosis-system/](https://www.saltworkstech.com/technology/xtremero-nf-reverse-osmosis-system/)  
10. CFRO For alkaLi, fecha de acceso: noviembre 2, 2025, [https://23884196.fs1.hubspotusercontent-na1.net/hubfs/23884196/alkaLi/241106\_CFRO\_Technology\_Profile.pdf](https://23884196.fs1.hubspotusercontent-na1.net/hubfs/23884196/alkaLi/241106_CFRO_Technology_Profile.pdf)  
11. RO INFINITY WITH CFRO, fecha de acceso: noviembre 2, 2025, [https://23884196.fs1.hubspotusercontent-na1.net/hubfs/23884196/240510%20Gradiant%20Technology%20Profile\_RO%20Infinity%20with%20CFRO.pdf](https://23884196.fs1.hubspotusercontent-na1.net/hubfs/23884196/240510%20Gradiant%20Technology%20Profile_RO%20Infinity%20with%20CFRO.pdf)  
12. RO Infinity: Reverse Osmosis (CFRO) | Water Recovery \- Gradiant, fecha de acceso: noviembre 2, 2025, [https://www.gradiant.com/technologies/ro-infinity/](https://www.gradiant.com/technologies/ro-infinity/)  
13. Lithium Extraction at Salar de Atacama \- Albemarle Corporation, fecha de acceso: noviembre 2, 2025, [https://www.albemarle.com/cl/en/what-we-offer/reliable-supply/salar-de-atacama](https://www.albemarle.com/cl/en/what-we-offer/reliable-supply/salar-de-atacama)  
14. (PDF) Salar de Atacama Lithium and Potassium Productive Process \- ResearchGate, fecha de acceso: noviembre 2, 2025, [https://www.researchgate.net/publication/384298544\_Salar\_de\_Atacama\_Lithium\_and\_Potassium\_Productive\_Process](https://www.researchgate.net/publication/384298544_Salar_de_Atacama_Lithium_and_Potassium_Productive_Process)  
15. The FilmTec™ Fortilife™ NF1000 nanofiltration element allows industrial users to reduce expensive-to \- Results | DuPont, fecha de acceso: noviembre 2, 2025, [https://www.dupont.com/solution-finder/results.html?BU=water-solutions\&tagId=dupont:uses\_and\_applications/minimal-liquid-discharge](https://www.dupont.com/solution-finder/results.html?BU=water-solutions&tagId=dupont:uses_and_applications/minimal-liquid-discharge)  
16. Applying Ultra-High Pressure Reverse Osmosis in Brine Management, fecha de acceso: noviembre 2, 2025, [https://www.saltworkstech.com/articles/applying-ultra-high-pressure-reverse-osmosis-in-brine-management/](https://www.saltworkstech.com/articles/applying-ultra-high-pressure-reverse-osmosis-in-brine-management/)  
17. Lithium Brine Extraction Technologies & Approaches, fecha de acceso: noviembre 2, 2025, [https://www.saltworkstech.com/articles/lithium-brine-extraction-technologies-and-approaches/](https://www.saltworkstech.com/articles/lithium-brine-extraction-technologies-and-approaches/)  
18. FilmTec™ Reverse Osmosis Membranes Technical Manual \- DuPont, fecha de acceso: noviembre 2, 2025, [https://www.dupont.com/content/dam/water/amer/us/en/water/public/documents/en/RO-NF-FilmTec-Manual-45-D01504-en.pdf](https://www.dupont.com/content/dam/water/amer/us/en/water/public/documents/en/RO-NF-FilmTec-Manual-45-D01504-en.pdf)  
19. Calculating Osmotic Pressure With an Example Problem \- ThoughtCo, fecha de acceso: noviembre 2, 2025, [https://www.thoughtco.com/calculate-osmotic-pressure-example-609518](https://www.thoughtco.com/calculate-osmotic-pressure-example-609518)  
20. Calculate Osmotic Pressure Example Problem \- ThoughtCo, fecha de acceso: noviembre 2, 2025, [https://www.thoughtco.com/calculate-osmotic-pressure-problem-609517](https://www.thoughtco.com/calculate-osmotic-pressure-problem-609517)  
21. Osmotic Pressure \- Wolfram Demonstrations Project, fecha de acceso: noviembre 2, 2025, [https://demonstrations.wolfram.com/OsmoticPressure/](https://demonstrations.wolfram.com/OsmoticPressure/)  
22. 9-14. Osmotic Pressure of Solutions \- CSM, fecha de acceso: noviembre 2, 2025, [https://www.csmfilter.com/csm/upload/TechManual/9-14%20Osmotic%20Pressure%20of%20Solutions.pdf](https://www.csmfilter.com/csm/upload/TechManual/9-14%20Osmotic%20Pressure%20of%20Solutions.pdf)  
23. Lithium: Processing \- Saltworks Technologies, fecha de acceso: noviembre 2, 2025, [https://www.saltworkstech.com/wp-content/uploads/2023/02/Lithium-Brochure.pdf](https://www.saltworkstech.com/wp-content/uploads/2023/02/Lithium-Brochure.pdf)  
24. Techno-Economic Analysis of Lithium Extraction from Geothermal Brines \- Publications, fecha de acceso: noviembre 2, 2025, [https://docs.nrel.gov/docs/fy21osti/79178.pdf](https://docs.nrel.gov/docs/fy21osti/79178.pdf)  
25. Brine evolution & origins of pot- ash: primary or secondary? SOP in Quaternary saline lakes: Part 2, fecha de acceso: noviembre 2, 2025, [https://www.saltworkconsultants.com/downloads/43.%20Potash%20and%20brine%20evolution%20part%202-%20final.pdf](https://www.saltworkconsultants.com/downloads/43.%20Potash%20and%20brine%20evolution%20part%202-%20final.pdf)  
26. technical report summary \- operation report salar de atacama \- Mining Data Online, fecha de acceso: noviembre 2, 2025, [https://minedocs.com/22/Salar-de-Atacama-TR-042022.pdf](https://minedocs.com/22/Salar-de-Atacama-TR-042022.pdf)  
27. Fouling Mechanisms And Pretreatment Design In Direct Lithium Extraction \- Patsnap Eureka, fecha de acceso: noviembre 2, 2025, [https://eureka.patsnap.com/report-fouling-mechanisms-and-pretreatment-design-in-direct-lithium-extraction](https://eureka.patsnap.com/report-fouling-mechanisms-and-pretreatment-design-in-direct-lithium-extraction)  
28. Nanofiltration Results: Membrane Removal of Calcium, Magnesium, Sodium, Silica, Lithium, Chlorine, and Sulfate from Simulated Geothermal Brines, fecha de acceso: noviembre 2, 2025, [https://gdr.openei.org/submissions/689](https://gdr.openei.org/submissions/689)  
29. A Comprehensive Membrane Process for Preparing Lithium Carbonate from High Mg/Li Brine \- PMC \- PubMed Central, fecha de acceso: noviembre 2, 2025, [https://pmc.ncbi.nlm.nih.gov/articles/PMC7759982/](https://pmc.ncbi.nlm.nih.gov/articles/PMC7759982/)  
30. Study on lithium separation from salt lake brines by nanofiltration (NF) and low pressure reverse osmosis (LPRO) \- ResearchGate, fecha de acceso: noviembre 2, 2025, [https://www.researchgate.net/publication/256693338\_Study\_on\_lithium\_separation\_from\_salt\_lake\_brines\_by\_nanofiltration\_NF\_and\_low\_pressure\_reverse\_osmosis\_LPRO](https://www.researchgate.net/publication/256693338_Study_on_lithium_separation_from_salt_lake_brines_by_nanofiltration_NF_and_low_pressure_reverse_osmosis_LPRO)  
31. A Comprehensive Membrane Process for Preparing Lithium ... \- MDPI, fecha de acceso: noviembre 2, 2025, [https://www.mdpi.com/2077-0375/10/12/371](https://www.mdpi.com/2077-0375/10/12/371)  
32. Lithium Resource & Processing \- Albemarle Corporation, fecha de acceso: noviembre 2, 2025, [https://www.albemarle.com/us/en/what-we-offer/reliable-supply/lithium-resources-processing](https://www.albemarle.com/us/en/what-we-offer/reliable-supply/lithium-resources-processing)  
33. Direct Lithium Extraction, fecha de acceso: noviembre 2, 2025, [https://ctlithium.com/about/direct-lithium-extraction/](https://ctlithium.com/about/direct-lithium-extraction/)  
34. Global Metals & Mining Direct Lithium Extraction A potential game changing technology \- Goldman Sachs, fecha de acceso: noviembre 2, 2025, [https://www.goldmansachs.com/pdfs/insights/pages/gs-research/direct-lithium-extraction/report.pdf](https://www.goldmansachs.com/pdfs/insights/pages/gs-research/direct-lithium-extraction/report.pdf)  
35. Comparison of the Mg2+-Li+ Separation of Different Nanofiltration Membranes \- PMC \- NIH, fecha de acceso: noviembre 2, 2025, [https://pmc.ncbi.nlm.nih.gov/articles/PMC10535561/](https://pmc.ncbi.nlm.nih.gov/articles/PMC10535561/)  
36. Preference of negatively charged membranes in magnesium and lithium separation by nanofiltration \- PMC \- NIH, fecha de acceso: noviembre 2, 2025, [https://pmc.ncbi.nlm.nih.gov/articles/PMC12216317/](https://pmc.ncbi.nlm.nih.gov/articles/PMC12216317/)  
37. Separation of magnesium and lithium from brine using a Desal nanofiltration membrane | Request PDF \- ResearchGate, fecha de acceso: noviembre 2, 2025, [https://www.researchgate.net/publication/281770648\_Separation\_of\_magnesium\_and\_lithium\_from\_brine\_using\_a\_Desal\_nanofiltration\_membrane](https://www.researchgate.net/publication/281770648_Separation_of_magnesium_and_lithium_from_brine_using_a_Desal_nanofiltration_membrane)  
38. \[in-depth report\] technological progress in lithium extraction from Salt Lake plays the main theme of industrial innovation. \- Metal News, fecha de acceso: noviembre 2, 2025, [https://news.metal.com/newscontent/101575305/\[in-depth-report\]-technological-progress-in-lithium-extraction-from-Salt-Lake-plays-the-main-theme-of-industrial-innovation](https://news.metal.com/newscontent/101575305/[in-depth-report]-technological-progress-in-lithium-extraction-from-Salt-Lake-plays-the-main-theme-of-industrial-innovation)  
39. Enhanced Lithium Recovery from Salt-Lake Brines via Advanced Nanofiltration Membranes: Polymeric Structure–Sieving Performance Relationships \- NIH, fecha de acceso: noviembre 2, 2025, [https://pmc.ncbi.nlm.nih.gov/articles/PMC12157772/](https://pmc.ncbi.nlm.nih.gov/articles/PMC12157772/)  
40. Nanofiltration Membranes for Efficient Lithium Extraction from Salt-Lake Brine: A Critical Review | ACS Environmental Au, fecha de acceso: noviembre 2, 2025, [https://pubs.acs.org/doi/10.1021/acsenvironau.4c00061](https://pubs.acs.org/doi/10.1021/acsenvironau.4c00061)  
41. Selective removal of divalent cations by polyelectrolyte multilayer nanofiltration membrane: Role of polyelectrolyte charge, ion size, and ionic strength | Request PDF \- ResearchGate, fecha de acceso: noviembre 2, 2025, [https://www.researchgate.net/publication/324851549\_Selective\_removal\_of\_divalent\_cations\_by\_polyelectrolyte\_multilayer\_nanofiltration\_membrane\_Role\_of\_polyelectrolyte\_charge\_ion\_size\_and\_ionic\_strength](https://www.researchgate.net/publication/324851549_Selective_removal_of_divalent_cations_by_polyelectrolyte_multilayer_nanofiltration_membrane_Role_of_polyelectrolyte_charge_ion_size_and_ionic_strength)  
42. A Selective Separation Mechanism for Mono/divalent Cations and Properties of a Hollow-Fiber Composite Nanofiltration Membrane Having a Positively Charged Surface \- MDPI, fecha de acceso: noviembre 2, 2025, [https://www.mdpi.com/2077-0375/14/1/1](https://www.mdpi.com/2077-0375/14/1/1)  
43. Enhanced anti-fouling and selective performance of GO-modified nanofiltration membranes for lithium extraction from salt lake brine | Request PDF \- ResearchGate, fecha de acceso: noviembre 2, 2025, [https://www.researchgate.net/publication/384478543\_Enhanced\_anti-fouling\_and\_selective\_performance\_of\_GO-modified\_nanofiltration\_membranes\_for\_lithium\_extraction\_from\_salt\_lake\_brine](https://www.researchgate.net/publication/384478543_Enhanced_anti-fouling_and_selective_performance_of_GO-modified_nanofiltration_membranes_for_lithium_extraction_from_salt_lake_brine)  
44. Lithium Separation from Geothermal Brine to Develop Critical Energy Resources Using High-Pressure Nanofiltration Technology: Characterization and Optimization \- PMC \- PubMed Central, fecha de acceso: noviembre 2, 2025, [https://pmc.ncbi.nlm.nih.gov/articles/PMC9866668/](https://pmc.ncbi.nlm.nih.gov/articles/PMC9866668/)  
45. Lithium Extraction and Refining \- Saltworks Technologies, fecha de acceso: noviembre 2, 2025, [https://www.saltworkstech.com/applications/lithium-extraction-and-refining/](https://www.saltworkstech.com/applications/lithium-extraction-and-refining/)  
46. Effect of Divalent Cations on RED Performance and Cation Exchange Membrane Selection to Enhance Power Densities \- PMC \- NIH, fecha de acceso: noviembre 2, 2025, [https://pmc.ncbi.nlm.nih.gov/articles/PMC5677765/](https://pmc.ncbi.nlm.nih.gov/articles/PMC5677765/)  
47. Understanding Construction Cost Estimate Classes \- Vista Projects, fecha de acceso: noviembre 2, 2025, [https://www.vistaprojects.com/construction-cost-estimate-classes/](https://www.vistaprojects.com/construction-cost-estimate-classes/)  
48. The True Cost of Drinking Water: Understanding the Expenses of Reverse Osmosis Plants, fecha de acceso: noviembre 2, 2025, [https://medium.com/@desalter/the-true-cost-of-drinking-water-understanding-the-expenses-of-reverse-osmosis-plants-4254b4f3f166](https://medium.com/@desalter/the-true-cost-of-drinking-water-understanding-the-expenses-of-reverse-osmosis-plants-4254b4f3f166)  
49. One of the world's largest lithium reserves selects LG NanoH₂O™ RO membranes for lithium extraction \- LG Water Solutions, fecha de acceso: noviembre 2, 2025, [https://www.lgwatersolutions.com/media-center/news/3252/](https://www.lgwatersolutions.com/media-center/news/3252/)  
50. Lithium Mine Reverse Osmosis vs Ion Exchange: Water Treatment Comparison, fecha de acceso: noviembre 2, 2025, [https://eureka.patsnap.com/report-lithium-mine-reverse-osmosis-vs-ion-exchange-water-treatment-comparison](https://eureka.patsnap.com/report-lithium-mine-reverse-osmosis-vs-ion-exchange-water-treatment-comparison)  
51. Lithium mining leaves severe impacts in Chile, but new methods exist: Report \- Mongabay, fecha de acceso: noviembre 2, 2025, [https://news.mongabay.com/2025/09/lithium-mining-leaves-severe-impacts-in-chile-but-new-methods-exist-report/](https://news.mongabay.com/2025/09/lithium-mining-leaves-severe-impacts-in-chile-but-new-methods-exist-report/)  
52. Growth Projects | Antofagasta PLC, fecha de acceso: noviembre 2, 2025, [https://www.antofagasta.co.uk/our-business/growth-projects/](https://www.antofagasta.co.uk/our-business/growth-projects/)  
53. Paolo Rocca visited the desalination plant for the Northern District \- Techint, fecha de acceso: noviembre 2, 2025, [https://www.techint.com/en/news/2025/paolo-rocca-visits-desalination-plant](https://www.techint.com/en/news/2025/paolo-rocca-visits-desalination-plant)  
54. SaltMaker Evaporators & Crystallizers \- Saltworks Technologies, fecha de acceso: noviembre 2, 2025, [https://www.saltworkstech.com/technology/evaporators-crystallizers/](https://www.saltworkstech.com/technology/evaporators-crystallizers/)  
55. Lithium Refining Process: The Ultimate Guide to Extraction & Purification, fecha de acceso: noviembre 2, 2025, [https://www.encocn.com/news/lithium-refining-process-the-ultimate-guide-t-85274266.html](https://www.encocn.com/news/lithium-refining-process-the-ultimate-guide-t-85274266.html)  
56. Charged EVs | Saltworks deploys two FusionRO plants for lithium and water reuse applications, fecha de acceso: noviembre 2, 2025, [https://chargedevs.com/newswire/saltworks-deploys-two-fusionro-plants-for-lithium-and-water-reuse-applications/](https://chargedevs.com/newswire/saltworks-deploys-two-fusionro-plants-for-lithium-and-water-reuse-applications/)  
57. MINIMUM LIQUID DISCHARGE WITH GRADIANT'S RO INFINITY CFRO, fecha de acceso: noviembre 2, 2025, [https://www.gradiant.com/wp-content/uploads/2023/04/Gradiant-CFRO-whitepaper.pdf](https://www.gradiant.com/wp-content/uploads/2023/04/Gradiant-CFRO-whitepaper.pdf)  
58. Gradiant's RO Infinity CFRO Process \- YouTube, fecha de acceso: noviembre 2, 2025, [https://www.youtube.com/watch?v=C3EMpzuFr0s](https://www.youtube.com/watch?v=C3EMpzuFr0s)  
59. Split Feed Counterflow Reverse Osmosis for Brine Concentration \- DSpace@MIT, fecha de acceso: noviembre 2, 2025, [https://dspace.mit.edu/bitstream/handle/1721.1/118668/1057286351-MIT.pdf?sequence=1](https://dspace.mit.edu/bitstream/handle/1721.1/118668/1057286351-MIT.pdf?sequence=1)  
60. Desalination – Brine Recovery and Concentration \- Gradiant, fecha de acceso: noviembre 2, 2025, [https://www.gradiant.com/success-stories/desalination-brine-recovery-and-concentration/](https://www.gradiant.com/success-stories/desalination-brine-recovery-and-concentration/)  
61. Counter flow membranes drive lithium production efficiencies \- Aquatech Amsterdam, fecha de acceso: noviembre 2, 2025, [https://www.aquatechtrade.com/news/industrial-water/lithium-extraction-efficiency-uses-crfo-membranes](https://www.aquatechtrade.com/news/industrial-water/lithium-extraction-efficiency-uses-crfo-membranes)  
62. Gradiant's alkaLi Sets New Standards in Direct Lithium Extraction, fecha de acceso: noviembre 2, 2025, [https://www.gradiant.com/press-release/gradiants-alkali-sets-new-standards-in-direct-lithium-extraction/](https://www.gradiant.com/press-release/gradiants-alkali-sets-new-standards-in-direct-lithium-extraction/)  
63. Gradiant's alkaLi Sets New Standards in Direct Lithium Extraction \- ANTARA News, fecha de acceso: noviembre 2, 2025, [https://en.antaranews.com/news/333981/gradiants-alkali-sets-new-standards-in-direct-lithium-extraction](https://en.antaranews.com/news/333981/gradiants-alkali-sets-new-standards-in-direct-lithium-extraction)  
64. Saltworks Releases 2nd Generation DLE Technology, fecha de acceso: noviembre 2, 2025, [https://www.saltworkstech.com/news/saltworks-releases-2nd-generation-dle-technology/](https://www.saltworkstech.com/news/saltworks-releases-2nd-generation-dle-technology/)  
65. Saltworks Deploys Two FusionRO Plants for Lithium and Water Reuse Applications, fecha de acceso: noviembre 2, 2025, [https://www.saltworkstech.com/news/saltworks-deploys-two-fusionro-plants-for-lithium-and-water-reuse-applications/](https://www.saltworkstech.com/news/saltworks-deploys-two-fusionro-plants-for-lithium-and-water-reuse-applications/)  
66. Direct Lithium Extraction (DLE): An Introduction, fecha de acceso: noviembre 2, 2025, [https://lithium.org/wp-content/uploads/2024/06/Direct-Lithium-Extraction-DLE-An-introduction-ILiA-June-2024-v.1-English-web.pdf](https://lithium.org/wp-content/uploads/2024/06/Direct-Lithium-Extraction-DLE-An-introduction-ILiA-June-2024-v.1-English-web.pdf)  
67. Direct Lithium Extraction \- Aquatech, fecha de acceso: noviembre 2, 2025, [https://www.aquatech.com/direct-lithium-extraction](https://www.aquatech.com/direct-lithium-extraction)  
68. Preparing for lift-off in DLE? \- Mining Technology, fecha de acceso: noviembre 2, 2025, [https://www.mining-technology.com/features/preparing-for-lift-off-in-dle/](https://www.mining-technology.com/features/preparing-for-lift-off-in-dle/)  
69. What is Lithium Refining? A Deep Dive from EnergyX, fecha de acceso: noviembre 2, 2025, [https://energyx.com/blog/what-is-lithium-refining-a-deep-dive-from-energyx/](https://energyx.com/blog/what-is-lithium-refining-a-deep-dive-from-energyx/)  
70. Our Technology | Summit Nanotech, fecha de acceso: noviembre 2, 2025, [https://www.summitnanotech.com/our-technology](https://www.summitnanotech.com/our-technology)  
71. CENTURY LITHIUM REPORTS ON TESTING WITH SALTWORKS AND PRODUCTION OF BATTERY GRADE LITHIUM CARBONATE \- PR Newswire, fecha de acceso: noviembre 2, 2025, [https://www.prnewswire.com/news-releases/century-lithium-reports-on-testing-with-saltworks-and-production-of-battery-grade-lithium-carbonate-301905334.html](https://www.prnewswire.com/news-releases/century-lithium-reports-on-testing-with-saltworks-and-production-of-battery-grade-lithium-carbonate-301905334.html)  
72. Century Lithium Reports on Testing with Saltworks and Production of Battery Grade Lithium Carbonate \- Koch Technology Solutions, fecha de acceso: noviembre 2, 2025, [https://www.kochtechsolutions.com/century-lithium-reports-on-testing-with-saltworks-and-production-of-batter-grade-lithium-carbonate-2/](https://www.kochtechsolutions.com/century-lithium-reports-on-testing-with-saltworks-and-production-of-batter-grade-lithium-carbonate-2/)  
73. Technology \- Lake Resources, fecha de acceso: noviembre 2, 2025, [https://lakeresources.com.au/investors/technology/](https://lakeresources.com.au/investors/technology/)  
74. Lilac completes direct lithium extraction pilot operations on the Great Salt Lake, fecha de acceso: noviembre 2, 2025, [https://chargedevs.com/newswire/lilac-completes-direct-lithium-extraction-pilot-operations-on-the-great-salt-lake/](https://chargedevs.com/newswire/lilac-completes-direct-lithium-extraction-pilot-operations-on-the-great-salt-lake/)  
75. 10k membranes for China salt lake lithium extraction \- EVs & Beyond, fecha de acceso: noviembre 2, 2025, [https://evsandbeyond.co.nz/10k-membranes-for-china-salt-lake-lithium-extraction/](https://evsandbeyond.co.nz/10k-membranes-for-china-salt-lake-lithium-extraction/)  
76. LG Chem Supplies Reverse Osmosis Membranes to the Largest Salt ..., fecha de acceso: noviembre 2, 2025, [https://www.lgcorp.com/media/release/26049](https://www.lgcorp.com/media/release/26049)  
77. Lithium Extraction, Refining & Purification \- Aquatech, fecha de acceso: noviembre 2, 2025, [https://www.aquatech.com/industries/metals-and-critical-minerals/lithium-extraction-and-refining](https://www.aquatech.com/industries/metals-and-critical-minerals/lithium-extraction-and-refining)  
78. Summit Nanotech Announces In-House Demonstration Plant in ..., fecha de acceso: noviembre 2, 2025, [https://www.summitnanotech.com/post/summit-nanotech-announces-in-house-demonstration-plant-in-santiago](https://www.summitnanotech.com/post/summit-nanotech-announces-in-house-demonstration-plant-in-santiago)  
79. GM Leads $50 Million Funding Round in EnergyX to Unlock U.S.-Based Lithium Supply for Rapidly Scaling EV Production | General Motors Company, fecha de acceso: noviembre 2, 2025, [https://investor.gm.com/news-releases/news-release-details/gm-leads-50-million-funding-round-energyx-unlock-us-based-0](https://investor.gm.com/news-releases/news-release-details/gm-leads-50-million-funding-round-energyx-unlock-us-based-0)  
80. Lithium Extraction From Brine Lake \- Sunresin, fecha de acceso: noviembre 2, 2025, [https://www.seplite.com/lithium-extraction-from-brine-lake/](https://www.seplite.com/lithium-extraction-from-brine-lake/)  
81. Hydrometallurgy ＆ Mining \- Lithium Recovery \- Sunresin, fecha de acceso: noviembre 2, 2025, [https://www.seplite.com/lithium-recovery/](https://www.seplite.com/lithium-recovery/)  
82. Sunresin Salt Lake Lithium Extraction Technology--Stepping Into Jintai Project, fecha de acceso: noviembre 2, 2025, [https://www.seplite.com/sunresin-salt-lake-lithium-extraction-technology-stepping-into-jintai-project/](https://www.seplite.com/sunresin-salt-lake-lithium-extraction-technology-stepping-into-jintai-project/)  
83. CN110028088B \- Preparation method of battery-grade lithium carbonate \- Google Patents, fecha de acceso: noviembre 2, 2025, [https://patents.google.com/patent/CN110028088B/en](https://patents.google.com/patent/CN110028088B/en)  
84. Revisión de la RCA del proyecto: “Modificaciones a las instalaciones de Manejo y procesamiento de Mineral Sulfurado” \- SEA, fecha de acceso: noviembre 2, 2025, [https://www.sea.gob.cl/rca/modificaciones-instalaciones-manejo-y-procesamiento-mineral-sulfurado](https://www.sea.gob.cl/rca/modificaciones-instalaciones-manejo-y-procesamiento-mineral-sulfurado)  
85. Enami recibe aprobación ambiental para nueva fundición de cobre en Paipote, fecha de acceso: noviembre 2, 2025, [https://www.portalminero.com/wp/enami-recibe-aprobacion-ambiental-para-nueva-fundicion-de-cobre-en-paipote/](https://www.portalminero.com/wp/enami-recibe-aprobacion-ambiental-para-nueva-fundicion-de-cobre-en-paipote/)  
86. Decreto 90 ESTABLECE NORMA DE EMISION PARA LA REGULACION DE CONTAMINANTES ASOCIADOS A LAS DESCARGAS DE RESIDUOS LIQUIDOS A AGUAS MARINAS Y CONTINENTALES SUPERFICIALES \- BCN, fecha de acceso: noviembre 2, 2025, [https://www.bcn.cl/leychile/Navegar?idNorma=182637](https://www.bcn.cl/leychile/Navegar?idNorma=182637)  
87. Untitled \- Planes y Normas, fecha de acceso: noviembre 2, 2025, [https://planesynormas.mma.gob.cl/archivos/2014/proyectos/1754\_-\_1839.pdf](https://planesynormas.mma.gob.cl/archivos/2014/proyectos/1754_-_1839.pdf)  
88. denaLi Commercial Progress \- Foro del Litio, fecha de acceso: noviembre 2, 2025, [https://www.forolitio.cl/wp-content/uploads/2025/09/2.2-Paul-Barbaro-Summit-Nanotech-denaLi%E2%84%A2-Commercial-Progress.pdf](https://www.forolitio.cl/wp-content/uploads/2025/09/2.2-Paul-Barbaro-Summit-Nanotech-denaLi%E2%84%A2-Commercial-Progress.pdf)