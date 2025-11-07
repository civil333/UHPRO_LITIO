# PROMPT DE INVESTIGACIÓN PROFUNDA: TECNOLOGÍA NF-UHPRO PARA CONCENTRACIÓN DE LITIO EN SQM

**Proyecto**: Evaluación Consultoría Especializada NF-UHPRO para SQM
**Región**: Antofagasta, Chile
**Objetivo**: Validación técnica, económica y comercial de tecnología de membranas de ultra-alta presión para concentración de litio
**Fecha**: Diciembre 2025
**Versión**: 1.0

---

## CONTEXTO EJECUTIVO

### Síntesis del Proyecto

SQM evalúa implementar tecnología de membranas NF-UHPRO (Nanofiltración + Ultra-High Pressure Reverse Osmosis) para concentrar litio en dos escenarios:

**Escenario A**: DLE → NF-UHPRO (2,000 ppm → 3,510 ppm, factor 1.75x)
- Inversión: $7.5M sistema NF-UHPRO
- Ahorro CAPEX: $26.5M (reducción 43% flujo a MVR)
- Ahorro OPEX: $6.08M/año
- TIR: 87%, Payback: 14 meses

**Escenario B**: Post-Silvinita → UF-NF-UHPRO (15,000 ppm → 60,000 ppm = 6% Li, factor 4x)
- Inversión piloto: $5M
- Ahorro CAPEX potencial: $80M (MVR reducido de $95M a $15M)
- Ahorro OPEX: $12M/año
- TIR: 28%, Payback: 2.8 años
- ROI piloto: 16:1

### Gaps Críticos Identificados

1. **Sin caracterización química completa** del eluato DLE y salmuera post-silvinita
2. **Factor 30x (DLE→6%) sin precedente comercial** validado
3. **Proyectos Uyuni/Nevada no verificados** independientemente
4. **CAPEX MVR en Clase 5 AACE** (-30%/+50% incertidumbre)
5. **Mecanismos de fouling/scaling específicos litio** requieren validación profunda
6. **TCO comparativo proveedores** sin datos actualizados 2026
7. **Validación selectividad DLE actual** para determinar costo pretratamiento
8. **Timeline y disponibilidad proveedores** no confirmada para 2026

### Riesgos Críticos Detectados

- **RIESGO #1**: Pretratamiento NF insuficiente → Falla catastrófica sistema (vida útil membranas 3-6 meses vs 24 meses)
- **RIESGO #2**: No alcanzar factor 4x en Escenario B → Viable desde 3.7x pero reduce ahorro
- **RIESGO #3**: Presión >120 bar requerida → Proyecto inviable (límite membranas comerciales)
- **RIESGO #4**: Vendor lock-in sin consultoría independiente → Sobreprecio 15-30%

---

## OBJETIVOS DE LA INVESTIGACIÓN

### Objetivos Primarios

1. **Validar viabilidad técnica** del factor 4x (15,000 → 60,000 ppm Li) a presión ≤120 bar
2. **Cuantificar riesgos reales** de fouling, scaling y vida útil de membranas en salmueras de litio
3. **Determinar TCO comparativo** entre proveedores (Saltworks, Gradiant, BW Waters, Fluence)
4. **Llenar gaps críticos** de caracterización química y validación comercial

### Objetivos Secundarios

5. Benchmarking exhaustivo de Qinghai (único caso >100,000 tpa con membranas)
6. Análisis competitivo de tecnologías alternativas (DLE, evaporación solar, MVR standalone)
7. Validación regulatoria y ambiental para implementación en Antofagasta
8. Cuantificación del valor real del agua recuperada en contexto regional

### Entregables Esperados

- **Reporte Técnico**: Validación factor 4x con fundamentos termodinámicos y precedentes comerciales
- **Matriz TCO**: Comparativa 4+ proveedores con datos actualizados 2026
- **Análisis de Riesgo Cuantitativo**: Simulación Monte Carlo con distribuciones de probabilidad
- **Roadmap Regulatorio**: Permisos, tiempos y requisitos para implementación
- **Recomendación Final GO/NO-GO**: Con datos sólidos para decisión ejecutiva Q1 2026

---

## ÁREAS DE INVESTIGACIÓN PRIORITARIAS

### 🔴 PRIORIDAD CRÍTICA (Antes de decisión GO/NO-GO)

---

## ÁREA #1: CARACTERIZACIÓN QUÍMICA COMPLETA

**Urgencia**: CRÍTICA - Requisito previo a orden de equipos
**Impacto**: ALTO - Determina diseño definitivo del sistema
**Plazo**: Q1 2026 (antes de orden equipos Marzo 2026)

### Preguntas de Investigación

#### 1.1 Composición Iónica Detallada

**Eluato DLE (Escenario A):**
- ¿Cuál es la concentración exacta de cada ion principal (Li⁺, Mg²⁺, Ca²⁺, SO₄²⁻, Cl⁻, Na⁺, K⁺)?
- ¿Cuál es el contenido de sílice (SiO₂) y su forma química (reactiva vs coloidal)?
- ¿Qué relación Mg/Li tiene el eluato bajo operación estándar vs optimizada?
- ¿Hay otros contaminantes críticos (Fe³⁺, Al³⁺, B, organics)?
- ¿Cuál es la variabilidad temporal de la composición (día/noche, estación seca/húmeda)?

**Salmuera Post-Silvinita (Escenario B):**
- ¿Cuál es la composición exacta post-cristalización de KCl?
- ¿Cómo varía la relación Mg/Li con el tiempo de evaporación (12-15 meses)?
- ¿Qué concentración de sulfatos remanente hay (riesgo scaling)?
- ¿Hay presencia de boratos o fluoruros que afecten membranas?

#### 1.2 Parámetros Fisicoquímicos

- **pH operación**: ¿Cuál es el pH natural y el pH óptimo para minimizar fouling?
- **Temperatura**: ¿Cuál es la temperatura de la salmuera (afecta presión osmótica)?
- **TDS total**: ¿Cuál es el TDS exacto para cálculo de presión osmótica?
- **BPE (Boiling Point Elevation)**: ¿Cuál es el BPE experimental? (Cada 1°C adicional = +5-10% CAPEX evaporador)
- **Conductividad**: ¿Correlación con concentración de Li?
- **Densidad y viscosidad**: Parámetros para diseño de bombas

#### 1.3 Potencial de Fouling/Scaling

- **SDI (Silt Density Index)**: ¿Cuál es el SDI actual del eluato/salmuera?
- **Turbidez**: ¿NTU medido pre y post-precipitación química?
- **Potencial de precipitación**: Modelado OLI Systems para CaSO₄, CaCO₃, Mg(OH)₂, SiO₂
- **Química de pH bajo**: ¿Viabilidad de operación a pH 2.5-3.5 para prevenir scaling?
- **Compuestos orgánicos**: ¿TOC (Total Organic Carbon) que cause biofouling?

### Metodología Sugerida

1. **Muestreo representativo**:
   - 3 puntos temporales: Verano, invierno, transición
   - 3 réplicas por punto para validar consistencia
   - Protocolo EPA método 200.7 (ICP-OES) para metales
   - Método IC (Ion Chromatography) para aniones

2. **Análisis de laboratorio acreditado**:
   - Laboratorio ISO 17025 certificado
   - Análisis completo 15-20 iones principales
   - Modelado termodinámico con OLI Systems o PHREEQC

3. **Pruebas de banco**:
   - SDI según ASTM D4189
   - BPE experimental en celdas controladas
   - Pruebas de compatibilidad con antiscalants comerciales

### Fuentes de Datos

- **Datos internos SQM**: Análisis históricos de eluato DLE y salmueras
- **Laboratorios sugeridos**: SGS Chile, ALS Chile, Bureau Veritas
- **Software modelado**: OLI Systems (licencia académica o industrial), PHREEQC (open source)
- **Estándares**: ASTM D4189 (SDI), ASTM D1889 (Turbidez), EPA 200.7 (Metales)

### Entregables

- **Reporte de Caracterización Química** (50-80 páginas)
  - Composición iónica completa con análisis estadístico
  - Parámetros fisicoquímicos medidos
  - Modelado termodinámico de potencial scaling
  - Recomendaciones de pretratamiento específicas
  - Especificaciones técnicas para diseño NF-UHPRO

---

## ÁREA #2: MECANISMOS DE FOULING/SCALING EN SALMUERAS DE LITIO

**Urgencia**: CRÍTICA - Determina diseño de pretratamiento
**Impacto**: ALTO - Vida útil membranas (3 meses vs 24 meses = impacto $342k/año)
**Plazo**: Q1-Q2 2026 (paralelo a caracterización)

### Preguntas de Investigación

#### 2.1 Cation Bridging en Membranas UHPRO

- ¿Cuál es el mecanismo exacto del cation bridging con Mg²⁺/Ca²⁺ en membranas de poliamida?
- ¿A qué concentración de divalentes (ppm) se vuelve crítico el bridging?
- ¿Cómo afecta la presión (100-120 bar) a la velocidad de fouling?
- ¿Cuál es la relación entre pH, temperatura y rate de cation bridging?
- ¿Qué configuración NF (tight NF vs loose NF) es óptima para remover divalentes?

#### 2.2 Scaling de Sales Inorgánicas

- ¿Cuál es el orden de precipitación de sales en salmueras Li-Mg-Ca-SO₄-Cl?
  - CaSO₄ (gypsum, anhidrita, hemihydrate)
  - CaCO₃ (calcita, aragonita)
  - Mg(OH)₂ (brucita)
  - Silicatos
- ¿Cuál es el índice de saturación (SI) crítico para cada sal?
- ¿Cómo afecta la temperatura y presión al SI?
- ¿Qué antiscalants son efectivos para mezclas complejas Li-salmueras?

#### 2.3 Fouling Específico de Litio

- ¿El litio contribuye al fouling o es principalmente pasivo?
- ¿Hay interacción Li⁺-Mg²⁺ que agrave el fouling?
- ¿La alta concentración de Li (60,000 ppm = 6%) afecta la estructura de la membrana?
- ¿Hay precedentes de fouling severo en plantas comerciales de litio?

#### 2.4 Estrategias de Mitigación

- **Pretratamiento NF**: ¿Qué rechazo de Ca²⁺/Mg²⁺ es necesario (90%, 95%, 99%)?
- **Control de pH**: ¿Cuál es el pH óptimo (2.5-3.5 según presentaciones)?
- **Antiscalants**: ¿Cuál es la efectividad de antiscalants comerciales?
  - Avista (Nalco)
  - Genesys (Genesys)
  - FloconPlus (SNF)
- **CIP (Clean-In-Place)**: ¿Qué protocolo CIP es óptimo?
  - Frecuencia (semanal, mensual)
  - Químicos (ácidos, bases, oxidantes, surfactantes)
  - Duración y temperatura
- **Operación sub-límite**: ¿Operar a 100-110 bar vs 120 bar reduce fouling significativamente?

### Metodología Sugerida

1. **Revisión bibliográfica exhaustiva**:
   - Journal of Membrane Science (últimos 5 años, búsqueda "lithium", "cation bridging", "high pressure RO")
   - Desalination journal
   - Patentes recientes Saltworks, Gradiant, DuPont, LG Chem

2. **Consulta con expertos**:
   - Entrevistas con ingenieros de Saltworks (FusionRO)
   - Consulta a DuPont Water Solutions (membranas FilmTec)
   - LG Chem (membranas NanoH2O para UHPRO)
   - Contacto con operadores Qinghai (LinkedIn outreach)

3. **Modelado termodinámico**:
   - OLI Systems para predicción scaling
   - ROSA (Reverse Osmosis System Analysis, software DuPont) para diseño preliminar
   - WAVE (Water Application Value Engine, DuPont) para análisis fouling

4. **Pruebas de laboratorio (opcional, si presupuesto)**:
   - Flat-sheet membrane testing con salmuera real
   - Aceleración de fouling en condiciones controladas
   - Análisis post-mortem de membranas fouled

### Fuentes de Datos

- **Papers académicos clave**:
  - "High-pressure reverse osmosis for lithium brine concentration" (buscar en ScienceDirect)
  - "Cation bridging in nanofiltration membranes" (Journal of Membrane Science)
  - "Scaling mechanisms in high-salinity desalination" (Desalination)

- **Recursos técnicos fabricantes**:
  - DuPont FilmTec Technical Manuals
  - LG Chem NanoH2O Application Guides
  - Toray membranes Technical Bulletins

- **Casos de estudio**:
  - CHN Energy Ningxia (120 bar, 95% recuperación agua)
  - Qinghai plants (DLE + NF/RO)
  - Saltworks FusionRO plantas confidenciales

- **Contactos sugeridos**:
  - Dr. Menachem Elimelech (Yale, experto membranas)
  - Dr. Eric Hoek (UCLA, scaling/fouling)
  - LinkedIn: Buscar "membrane engineer" + "lithium" o "brine"

### Entregables

- **Reporte Técnico de Fouling/Scaling** (40-60 páginas)
  - Mecanismos identificados con fundamento científico
  - Análisis cuantitativo de rates de fouling
  - Estrategias de mitigación con costos asociados
  - Protocolo CIP optimizado
  - Especificaciones de pretratamiento NF definitivas

---

## ÁREA #3: BENCHMARKING EXHAUSTIVO QINGHAI (CHINA)

**Urgencia**: ALTA - Único caso comercial >100,000 tpa con membranas
**Impacto**: ALTO - Validación técnica y comercial del concepto
**Plazo**: Q1 2026 (investigación documental y contactos)

### Preguntas de Investigación

#### 3.1 Configuración Técnica Detallada

**Proyectos específicos a investigar**:
1. **Lanke Lithium (Qarhan)**: 30,000 tpa Li₂CO₃ (Sunresin DLE)
2. **Minmetals Yiliping**: 10,000 tpa
3. **CITIC Guoan (Taijinar)**: 10,000 tpa actual, expansión 20,000 tpa

**Información técnica crítica**:
- ¿Cuál es la configuración exacta del sistema de membranas?
  - ¿Cuántas etapas NF vs RO vs UHPRO?
  - ¿Qué presiones operativas reales (no solo diseño)?
  - ¿Configuración series vs paralelo?
  - ¿Factor de concentración por etapa y total?

- ¿Qué fabricantes de membranas usan?
  - DuPont FilmTec
  - LG Chem NanoH2O
  - Toray
  - Vontron (local China)

- ¿Cuál es la integración con el proceso DLE?
  - ¿Qué tecnología DLE (adsorción, extracción, intercambio iónico)?
  - ¿Concentración Li pre-membranas y post-membranas?
  - ¿Pretratamiento entre DLE y membranas?

#### 3.2 Performance Operacional

- **Vida útil membranas observada**: ¿12 meses, 24 meses, 36 meses?
- **Tasa de reemplazo**: ¿Cuántas membranas reemplazan al año?
- **Problemas operativos principales**:
  - ¿Fouling severo? ¿Cada cuánto CIP?
  - ¿Scaling? ¿Qué sales problemáticas?
  - ¿Degradación química de membranas?
- **Disponibilidad del sistema**: ¿Uptime real vs diseñado?
- **Recuperación de Li**: ¿% recuperación real en membranas?
- **Consumo energético**: ¿kWh/m³ o kWh/kg Li?

#### 3.3 Aspectos Económicos

- **CAPEX sistema membranas** (si público o estimable):
  - Costo por m³/día de capacidad
  - Comparación con evaporación solar tradicional
  - Payback period reportado

- **OPEX anual**:
  - Costo energía
  - Costo reemplazo membranas
  - Costo químicos (antiscalant, CIP)
  - Costo mano de obra

- **Incentivos gubernamentales**: ¿Recibieron subsidios del gobierno chino?

#### 3.4 Lecciones Aprendidas

- ¿Qué problemas NO anticipados encontraron en commissioning?
- ¿Cuánto duró el ramp-up hasta operación estable?
- ¿Performance vs diseño: alcanzaron lo prometido?
- ¿Modificaciones post-comisionamiento necesarias?
- ¿Recomendaciones para nuevas plantas?

### Metodología Sugerida

1. **Búsqueda de documentación pública**:
   - **Reportes corporativos**: China Salt Lake Group, Qinghai Salt Lake Industry Co.
   - **Patentes chinas**: Búsqueda CNIPA (China National Intellectual Property Administration)
   - **Papers técnicos chinos**: CNKI (China National Knowledge Infrastructure) - traducir con DeepL/ChatGPT
   - **Presentaciones conferencias**: Lithium Supply & Market Conference (Asia editions)

2. **Contacto directo con stakeholders**:
   - **Sunresin** (proveedor DLE Lanke): Solicitar caso de estudio bajo NDA
   - **LinkedIn outreach**: Buscar "process engineer" + "Qinghai" + "lithium"
   - **Ex-empleados**: Identificar en LinkedIn personas que trabajaron en Qinghai y ahora están fuera
   - **Consultoras con presencia China**: McKinsey, BCG, Roland Berger - solicitar insights

3. **Análisis de imágenes satelitales**:
   - Google Earth Pro: Identificar plantas, expansiones, configuración física
   - Planet Labs: Imágenes alta resolución para estimar tamaño instalaciones
   - Inferir capacidad por área de piscinas vs área de plantas de membranas

4. **Participación en conferencias**:
   - **Fastmarkets Lithium Supply & Markets** (próxima edición)
   - **Benchmark Mineral Intelligence - Lithium Forecast** (London o Santiago)
   - Networking directo con ingenieros chinos

### Fuentes de Datos

- **Corporativos**:
  - Qinghai Salt Lake Industry Co. (stock code: 000792.SZ) - Reportes anuales
  - China Salt Lake Group - Comunicados de prensa
  - Sunresin (stock code: 300487.SZ) - Informes técnicos

- **Bases de datos técnicas**:
  - CNKI (cnki.net) - Papers chinos en inglés o traducidos
  - Google Patents (patents.google.com) - Búsqueda "lithium" + "nanofiltration" + "Qinghai"
  - Espacenet (worldwide.espacenet.com) - Patentes europeas de empresas chinas

- **Publicaciones especializadas**:
  - Asian Metal (asianmetal.com/lithium) - Noticias industria litio China
  - Shanghai Metals Market (smm.cn) - Datos producción
  - Argus Media - Reportes mercado litio Asia

- **Contactos potenciales**:
  - LinkedIn: "Qinghai lithium", "Salt Lake lithium engineer", "Sunresin DLE"
  - Conferencias: Attendee lists de Fastmarkets, Benchmark (si accesibles)

### Entregables

- **Reporte Benchmarking Qinghai** (30-50 páginas)
  - Descripción técnica detallada de 3+ proyectos
  - Performance operacional validada
  - Análisis económico (CAPEX/OPEX estimados)
  - Lecciones aprendidas y mejores prácticas
  - Aplicabilidad a SQM: qué replicar y qué adaptar

---

## ÁREA #4: TCO COMPARATIVO ENTRE PROVEEDORES

**Urgencia**: CRÍTICA - Decisión de proveedor Q1-Q2 2026
**Impacto**: ALTO - Diferencia 15-30% en TCO entre proveedores
**Plazo**: Q1 2026 (paralelo a caracterización)

### Preguntas de Investigación

#### 4.1 Análisis Comparativo de Proveedores

**Proveedores a evaluar** (mínimo 4):

1. **Saltworks (Canadá)**
   - Tecnología: FusionRO (UHPRO híbrido)
   - Experiencia litio: 2 plantas comerciales confidenciales
   - Máximo TDS alcanzado: >200,000 mg/L
   - Presión: 120 bar
   - Ventajas: Track record probado, tecnología propietaria, soporte técnico robusto
   - Desventajas: Potencial premium pricing, soporte local Chile limitado

2. **Gradiant (USA)**
   - Tecnología: Carrier Gas Extraction + RO/UHPRO
   - Experiencia litio: Proyectos piloto en Argentina (no confirmados comerciales)
   - Innovación: Tecnología híbrida evaporación-membranas
   - Ventajas: Innovación tecnológica, flexibilidad configuraciones
   - Desventajas: Menos track record específico litio que Saltworks

3. **BW Waters (Alemania/Chile)**
   - Tecnología: NF + UHPRO modular
   - Experiencia Chile: Adjudicado Taltal NF-UHPRO (Q4 2025)
   - Presión: 120 bar, capacidad 100 m³/h
   - Ventajas: Presencia local Chile, experiencia Antofagasta, Taltal como referencia cercana
   - Desventajas: Proyecto Taltal aún no operativo (validación pendiente)

4. **Fluence (Países Bajos/Global)**
   - Tecnología: NIROBOX (RO/UHPRO containerizado)
   - Experiencia: Múltiples plantas desalinización industrial
   - Ventajas: Modularidad, escalabilidad, presencia global
   - Desventajas: Menos experiencia específica en litio

5. **Aquatech (USA)** (opcional, 5to evaluado)
   - Tecnología: RO + Evaporadores/Cristalizadores
   - Proyecto: Sistema confidencial Sudamérica con objetivo 6% Li
   - Ventajas: Integración total proceso
   - Desventajas: Información limitada, posible vendor lock-in

#### 4.2 Componentes del TCO (10 años)

**CAPEX Inicial**:
- Precio equipos FOB
- Transporte a Antofagasta (marítimo + terrestre)
- Impuestos importación Chile (6% arancel + 19% IVA)
- Instalación y commissioning
- Ingeniería y diseño
- Spare parts iniciales
- Contingencias (10-20% según AACE)

**OPEX Recurrente** (anual x 10 años):
- Energía (kWh/m³ × tarifa eléctrica $120/MWh)
- Reemplazo membranas (ciclo 2-3 años)
- Químicos antiscalant ($/m³)
- Químicos CIP (frecuencia × costo)
- Mano de obra (operadores, supervisores)
- Mantenimiento preventivo (% CAPEX)
- Repuestos (bombas, válvulas, instrumentación)
- Seguros

**Costos Ocultos** (a menudo ignorados):
- Training del personal (inicial + refuerzo)
- Soporte técnico remoto (incluido o extra?)
- Upgrades tecnológicos (disponibilidad, costo)
- Penalidades por downtime (si aplican SLAs)
- Costo de oportunidad por menor disponibilidad

**Valor de Marca y Riesgo**:
- Track record: ¿Cuántas plantas similares operativas?
- Garantías: ¿Performance guarantees? ¿Duración?
- Soporte local: ¿Oficina en Chile? ¿Técnicos disponibles?
- Tiempo respuesta: ¿4 horas, 24 horas, 1 semana?
- Flexibilidad contractual: ¿Lock-in? ¿Exclusividad membranas?

#### 4.3 Matriz de Evaluación TCO

| Criterio | Peso | Saltworks | Gradiant | BW Waters | Fluence | Aquatech |
|----------|------|-----------|----------|-----------|---------|----------|
| **CAPEX Equipos** | 25% | $ | $ | $ | $ | $ |
| **OPEX 10 años** | 40% | $ | $ | $ | $ | $ |
| **Track Record Litio** | 15% | Score | Score | Score | Score | Score |
| **Soporte Local Chile** | 10% | Score | Score | Score | Score | Score |
| **Garantías Performance** | 5% | Score | Score | Score | Score | Score |
| **Flexibilidad Tecnológica** | 5% | Score | Score | Score | Score | Score |
| **TCO TOTAL (Weighted)** | 100% | **$X.XM** | **$X.XM** | **$X.XM** | **$X.XM** | **$X.XM** |

**Scoring**: 1-10 (1=peor, 10=mejor) para criterios cualitativos
**$**: Valores absolutos para CAPEX/OPEX

#### 4.4 Validación de Supuestos OPEX

- **Consumo energético real**: ¿4.71 kWh/m³ con ERDs es realista?
  - Validar con datos Taltal (cuando disponibles)
  - Solicitar data sheets específicos a proveedores
  - Comparar con plantas similares (CHN Energy: ¿kWh/m³?)

- **Vida útil membranas**: ¿2-3 años es conservador u optimista?
  - Pedir garantías escritas de proveedores
  - Casos de estudio con química similar
  - Protocolo CIP propuesto por cada proveedor

- **Costo reemplazo membranas**: ¿$342k/año para módulo 6×36 m³/h?
  - Cotizaciones directas de DuPont, LG Chem, Toray
  - Descuentos por volumen
  - Contratos largo plazo (ventajas/desventajas)

### Metodología Sugerida

1. **RFI (Request for Information)** estructurado:
   - Enviar mismo RFI a todos los proveedores
   - Incluir caracterización química preliminar (GAP #1 primero)
   - Solicitar:
     - Cotización indicativa CAPEX (±20%)
     - Estimación OPEX con breakdown
     - Casos de estudio relevantes
     - Garantías propuestas
     - Timeline implementación

2. **Site visits y referencias**:
   - Visitar planta Taltal (BW Waters) post Q4 2026
   - Solicitar contacto con clientes previos bajo NDA
   - Verificar referencias independientemente (no solo lista proveedor)

3. **Modelado TCO con sensibilidad**:
   - Modelo Excel/Python con variables:
     - Precio electricidad: $90-$150/MWh
     - Vida útil membranas: 18-36 meses
     - Uptime: 85%-95%
     - Precio Li: $10k-$30k/ton (para contexto, no impacta TCO directamente)
   - Análisis sensibilidad: ¿Qué variable tiene mayor impacto en TCO?

4. **Consultoría independiente** (CRÍTICO para evitar vendor lock-in):
   - Contratar consultor independiente con experiencia:
     - Licitación Taltal (conocimiento proceso local)
     - Sin conflicto de interés con proveedores
     - Protección intereses del cliente
   - Alcance consultor:
     - Evaluación técnica propuestas
     - Negociación comercial
     - Supervisión commissioning
     - Transfer know-how a equipo SQM

### Fuentes de Datos

- **RFI directo a proveedores**:
  - Saltworks: info@saltworks.com
  - Gradiant: contact@gradiant.com
  - BW Waters: info@bw-water.com
  - Fluence: info@fluencecorp.com

- **Cotizaciones membranas**:
  - DuPont Water Solutions: filmtec@dupont.com
  - LG Chem: nano.h2o@lgchem.com
  - Toray Membrane: toraywater@toray.com

- **Consultores independientes sugeridos**:
  - Buscar en LinkedIn: "desalination consultant" + "Chile"
  - Asociaciones profesionales: IDA (International Desalination Association)
  - Ex-empleados Nalco, Veolia, Suez (experiencia membranas + Chile)

- **Benchmarking costos**:
  - IDA Desalination Yearbook (datos CAPEX/OPEX global)
  - DesalData (base de datos proyectos desalinización)
  - Contactos industria minera Chile (Codelco, Antofagasta Minerals - proyectos ZLD)

### Entregables

- **Matriz TCO Comparativa** (Excel + Reporte PDF 20-30 páginas)
  - Comparación detallada 4-5 proveedores
  - Análisis de sensibilidad
  - Scoring ponderado con justificación
  - Recomendación de shortlist (2-3 finalistas)
  - Estrategia de negociación

---

### 🟡 PRIORIDAD ALTA (Durante FASE 0 - Piloto)

---

## ÁREA #5: ANÁLISIS FINANCIERO CON INCERTIDUMBRE (MONTE CARLO)

**Urgencia**: ALTA - Cuantificar riesgo real del proyecto
**Impacto**: MEDIO-ALTO - Decisión GO/NO-GO informada
**Plazo**: Q2 2026 (tras tener datos ÁREA #1-4)

### Preguntas de Investigación

#### 5.1 Identificación de Variables Estocásticas

**Variables con incertidumbre significativa**:

1. **CAPEX MVR Grande** (sin NF-UHPRO)
   - Distribución: Normal con sesgo positivo (Lognormal)
   - Media (μ): $95M
   - Desviación estándar (σ): $20M
   - Rango AACE Clase 5: $66M - $143M (-30% / +50%)
   - ¿Correlación con precio commodities (acero)?

2. **CAPEX Sistema NF-UHPRO**
   - Distribución: Normal
   - Media: $7.5M (Escenario A) o $63M (Escenario B)
   - Desviación estándar: $1.5M (Clase 4: ±20%)
   - Rango: $6M - $9M (A) o $53M - $79M (B)

3. **Vida Útil Membranas UHPRO**
   - Distribución: Lognormal (no puede ser <6 meses)
   - Media: 24 meses
   - Rango: 12-36 meses
   - Impacto OPEX: $171k-$684k/año

4. **Factor de Concentración Logrado** (Escenario B crítico)
   - Distribución: Triangular
   - Mínimo: 3.5x (52,500 ppm = 5.25% Li)
   - Más probable: 4.0x (60,000 ppm = 6.0% Li)
   - Máximo: 4.3x (64,500 ppm = 6.45% Li)
   - Impacto: CAPEX MVR residual ($30M vs $15M vs $10M)

5. **Precio Electricidad Antofagasta**
   - Distribución: Triangular
   - Mínimo: $90/MWh
   - Más probable: $120/MWh
   - Máximo: $150/MWh
   - Tendencia: Probable baja por mayor penetración renovables

6. **Uptime Sistema NF-UHPRO**
   - Distribución: Beta (limitada 0-100%)
   - Media: 92%
   - Rango: 85%-97%
   - Impacto: Producción efectiva de Li

7. **Precio Litio** (contexto, no driver principal)
   - Distribución: Lognormal con alta volatilidad
   - Rango histórico 2020-2025: $8k - $85k/ton
   - Escenario conservador 2026-2036: $10k - $30k/ton

#### 5.2 Simulación Monte Carlo

**Configuración de la simulación**:
- **Iteraciones**: 10,000 (mínimo para convergencia)
- **Método**: Latin Hypercube Sampling (más eficiente que random puro)
- **Correlaciones a modelar**:
  - Precio electricidad vs Precio Li (correlación débil positiva ~0.3)
  - CAPEX MVR vs Factor concentración (correlación negativa fuerte ~-0.85)
  - Vida útil membranas vs Uptime (correlación positiva moderada ~0.5)

**Métricas de salida**:
- **VAN (Valor Actual Neto) a 10 años**:
  - Media, mediana, desviación estándar
  - Percentiles: P10, P50, P90
  - Probabilidad VAN > 0 (viabilidad)

- **TIR (Tasa Interna de Retorno)**:
  - Distribución completa
  - Probabilidad TIR > WACC (típicamente 10-12% minería Chile)

- **Payback Period**:
  - Distribución
  - Probabilidad payback < 5 años

- **Ahorro Total 10 años**:
  - Media y rango intercuartil (IQR)
  - Value at Risk (VaR) al 95%: Peor escenario con 95% confianza

#### 5.3 Análisis de Sensibilidad (Tornado Diagram)

**Identificar las 3-5 variables que más impactan el VAN**:
- Cambiar cada variable ±20% manteniendo otras constantes
- Calcular impacto en VAN
- Ranking por magnitud de impacto
- ¿Es CAPEX MVR? ¿Vida útil membranas? ¿Factor concentración?

**Pregunta clave**: ¿En qué variable deberíamos enfocar esfuerzos de reducción de incertidumbre?

#### 5.4 Análisis de Escenarios

**Escenario Pesimista** (P10):
- CAPEX MVR: $120M (+26%)
- Vida útil membranas: 15 meses
- Factor concentración: 3.5x (Escenario B)
- Uptime: 87%
- ¿VAN sigue siendo positivo?

**Escenario Base** (P50):
- Valores medios de todas las variables
- ¿VAN esperado?

**Escenario Optimista** (P90):
- CAPEX MVR: $70M (-26%)
- Vida útil membranas: 32 meses
- Factor concentración: 4.2x
- Uptime: 95%
- ¿VAN máximo realista?

### Metodología Sugerida

1. **Herramientas de software**:
   - **@RISK** (Palisade) - Add-in Excel, industria standard
   - **Crystal Ball** (Oracle) - Alternativa a @RISK
   - **Python** (scipy.stats + numpy) - Open source, máxima flexibilidad
     ```python
     import numpy as np
     from scipy.stats import norm, lognorm, triang

     # Ejemplo: CAPEX MVR
     capex_mvr = lognorm.rvs(s=0.3, scale=95, size=10000)
     # Vida útil membranas
     vida_util = lognorm.rvs(s=0.4, scale=24, size=10000)
     # Factor concentración
     factor = triang.rvs(c=0.5, loc=3.5, scale=0.8, size=10000)

     # Cálculo VAN para cada iteración
     van = calcular_van(capex_mvr, vida_util, factor, ...)

     # Análisis
     print(f"VAN Medio: ${np.mean(van):.1f}M")
     print(f"VAN P10: ${np.percentile(van, 10):.1f}M")
     print(f"VAN P90: ${np.percentile(van, 90):.1f}M")
     print(f"Prob(VAN>0): {np.mean(van>0)*100:.1f}%")
     ```

2. **Validación del modelo**:
   - Sensitivity check: ¿Converge con más iteraciones?
   - Sanity check: ¿Resultados en rangos razonables?
   - Peer review: ¿Otro analista financiero valida supuestos?

3. **Visualización de resultados**:
   - Histograma VAN con percentiles marcados
   - Tornado diagram de sensibilidad
   - Scatter plots bivariados (e.g., CAPEX MVR vs VAN)
   - Cumulative distribution function (CDF) de VAN

### Fuentes de Datos

- **Software**:
  - @RISK: palisade.com (licencia ~$2k-5k)
  - Crystal Ball: oracle.com/crystalball (licencia similar)
  - Python: Gratuito (anaconda.org)

- **Distribuciones de probabilidad**:
  - Engineering Statistics Handbook (NIST)
  - "Risk Analysis: A Quantitative Guide" (David Vose)
  - Historical data de proyectos mineros Chile (si disponible vía consultoras)

- **Validación de rangos**:
  - AACE Cost Estimate Classification System (clases 1-5)
  - IPA (Independent Project Analysis) benchmarking database
  - Consultoras mineras (Wood Mackenzie, CRU Group)

### Entregables

- **Modelo Financiero Probabilístico** (Excel con @RISK o Python Jupyter Notebook)
  - Input: Distribuciones de todas las variables
  - Cálculo: VAN, TIR, Payback para 10,000 iteraciones
  - Output: Estadísticas descriptivas, gráficos, recomendación

- **Reporte de Análisis de Riesgo** (15-25 páginas)
  - Resumen ejecutivo con probabilidades clave
  - Tornado diagram: variables más críticas
  - Escenarios P10/P50/P90 detallados
  - Recomendaciones de mitigación de riesgo
  - Decisión GO/NO-GO cuantitativa

---

## ÁREA #6: VALIDACIÓN DE LÍMITES TERMODINÁMICOS

**Urgencia**: ALTA - Valida factibilidad técnica factor 4x
**Impacto**: ALTO - Determina si factor 4x es físicamente posible ≤120 bar
**Plazo**: Q1-Q2 2026

### Preguntas de Investigación

#### 6.1 Presión Osmótica Teórica

**Pregunta fundamental**: ¿Cuál es la presión osmótica de una solución de litio al 6% (60,000 ppm)?

- **Ecuación Van't Hoff** (aproximación):
  π = i × C × R × T
  - i = factor van't Hoff (disociación iónica)
  - C = concentración molar
  - R = constante gases ideales
  - T = temperatura (K)

- **Para LiCl en solución compleja Li-Mg-Ca-SO₄-Cl**:
  - ¿Cuál es el "i" efectivo (no ideal por interacciones iónicas)?
  - ¿Cómo se calcula para mezcla multicomponente?
  - ¿Impacto de iones comunes (Mg²⁺, Ca²⁺, SO₄²⁻)?

- **Presión operativa mínima**:
  - P_operación ≥ π + ΔP_driving_force + P_losses
  - Si π = 80 bar (hipotético), ¿es viable con membranas 120 bar límite?
  - Si π = 110 bar, ¿proyecto no viable?

#### 6.2 Modelado Termodinámico Riguroso

**Software especializado**:
- **OLI Systems (OLI Analyzer)**:
  - Modelo termodinámico más preciso para electrolitos
  - Incluye interacciones iónicas, actividades, no-idealidad
  - Input: Composición exacta salmuera (requiere GAP #1 resuelto)
  - Output: Presión osmótica, solubilidad sales, pH, especiación iónica

- **PHREEQC** (USGS, open source):
  - Alternativa gratuita a OLI
  - Base de datos Pitzer para alta fuerza iónica
  - Limitaciones en mezclas muy complejas

- **Aspen Plus** (con paquete electrolitos):
  - Usado en industria química
  - Modelo ELECNRTL para electrolitos

**Escenarios a modelar**:
1. **Salmuera post-silvinita @ 15,000 ppm Li** (entrada Escenario B)
   - ¿Presión osmótica a 25°C?
   - ¿Efecto temperatura (40°C, 60°C)?

2. **Concentrado objetivo @ 60,000 ppm Li (6%)**
   - ¿Presión osmótica teórica?
   - ¿A qué concentración Li se alcanza π = 120 bar?
   - ¿Hay un "plateau" donde más presión no concentra más?

3. **Eluato DLE @ 2,000 ppm Li** (entrada Escenario A)
   - ¿Presión osmótica baja permite fácilmente 1.75x?
   - ¿Factible 5x (10,000 ppm)?
   - ¿Por qué 30x (60,000 ppm) sería extremadamente desafiante?

#### 6.3 Solubilidad Límite de Litio

**Pregunta**: ¿Cuál es la concentración máxima de Li antes de precipitación de sales?

- **Sales de litio en juego**:
  - LiCl: Alta solubilidad (hasta 45% en peso en agua pura)
  - Li₂SO₄: Menor solubilidad (~26 g/100 mL a 0°C, aumenta con T)
  - LiF: Muy baja solubilidad (0.27 g/100 mL a 18°C)
  - Li₂CO₃: Baja solubilidad (1.3 g/100 mL a 20°C)

- **En salmuera compleja**:
  - Efecto ion común (Cl⁻, SO₄²⁻) reduce solubilidad
  - ¿A qué concentración Li precipita Li₂SO₄ en presencia de MgSO₄?
  - ¿Riesgo de precipitación en membranas?

#### 6.4 Efecto de Temperatura en Concentración

- **Temperatura operativa salmuera**: 25-40°C típico Antofagasta
- **Impacto en presión osmótica**: π aumenta ~0.3%/°C (lineal con T en Kelvin)
- **Impacto en viscosidad**: Disminuye con T (mejor flux)
- **Impacto en solubilidad sales**: Variable según sal
- **¿Hay temperatura óptima para minimizar presión y maximizar flux?**

#### 6.5 Comparación con Precedentes Comerciales

**Saltworks FusionRO**:
- TDS máximo alcanzado: >200,000 mg/L
- ¿Qué presión osmótica corresponde a 200,000 mg/L?
- ¿Operan cerca del límite 120 bar?
- ¿Química de salmuera similar a Li o diferente?

**CHN Energy Ningxia**:
- Aplicación: Desalinización industrial (no litio)
- Presión: 120 bar
- TDS: No especificado público
- ¿Flux alcanzado? ¿Recuperación?

**Qinghai**:
- Factor concentración total reportado: No claro
- ¿Operan en régimen alta presión osmótica?
- ¿Multi-etapa para evitar límite presión?

### Metodología Sugerida

1. **Fase 1: Modelado teórico** (semana 1-2)
   - OLI Systems: Contratar licencia temporal o consultor con licencia
   - PHREEQC: Modelado preliminar open source
   - Input: Composición asumida (luego refinar con GAP #1)

2. **Fase 2: Validación experimental** (semana 3-6, opcional)
   - Prueba de presión osmótica en laboratorio:
     - Celda de ósmosis reversa de banco
     - Medir presión mínima para flujo neto cero
     - Temperatura controlada
   - Prueba de solubilidad:
     - Evaporación controlada hasta precipitación
     - Identificar sales precipitadas (XRD)

3. **Fase 3: Comparación con literatura** (semana 1-8, paralelo)
   - Búsqueda papers: "osmotic pressure" + "lithium brine"
   - Datos experimentales publicados
   - Validación modelo OLI vs datos reales

### Fuentes de Datos

- **Software**:
  - OLI Systems: olisystems.com (licencia ~$10k-20k/año, o consultor con licencia)
  - PHREEQC: usgs.gov/phreeqc (gratuito)
  - Aspen Plus: aspentech.com (licencia corporativa)

- **Literatura científica**:
  - "Osmotic pressure of concentrated lithium chloride solutions" (Journal of Solution Chemistry)
  - "Thermodynamics of lithium brine systems" (Desalination journal)
  - Handbook of Chemistry and Physics (CRC) - Datos solubilidad

- **Laboratorios para validación experimental**:
  - Universidad de Chile, Facultad de Ciencias Químicas
  - Universidad Católica, Dept. Ingeniería Química
  - Laboratorios comerciales (SGS, ALS) - Pueden hacer pruebas custom

### Entregables

- **Reporte Termodinámico** (20-30 páginas)
  - Presión osmótica calculada para 3 concentraciones clave
  - Análisis solubilidad y riesgo precipitación
  - Efecto de temperatura
  - Comparación con límite tecnológico (120 bar)
  - Conclusión: ¿Factor 4x viable termodinámicamente? (SÍ/NO con fundamentos)

---

### 🟢 PRIORIDAD MEDIA (Durante implementación o paralelo)

---

## ÁREA #7: ANÁLISIS COMPETITIVO PROFUNDO

**Urgencia**: MEDIA - Contexto estratégico
**Impacto**: MEDIO - Posicionamiento SQM vs competencia
**Plazo**: Q2-Q3 2026

### Preguntas de Investigación

#### 7.1 Competidores Directos SQM (Productores Establecidos)

**Albemarle (Atacama, Chile)**:
- ¿Está evaluando tecnologías de membranas?
- ¿Qué innovaciones tecnológicas están implementando?
- ¿Cuál es su CAPEX/OPEX por tonelada Li vs SQM actual?
- ¿Expansiones planeadas próximos 5 años?
- ¿Ventajas competitivas (costos, calidad, contratos)?

**Tianqi Lithium (Chile, Australia, China)**:
- Tecnologías en Atacama (JV con SQM hasta 2030)
- Procesos en Greenbushes (Australia, hard rock)
- Integración vertical vs especialización

**Ganfeng Lithium (China, Argentina)**:
- Diversificación: Salares + hard rock + reciclaje
- Tecnologías de concentración/purificación
- Estrategia comercial (contratos largo plazo vs spot)

#### 7.2 Nuevos Entrantes DLE (Amenaza Disruptiva)

**Lilac Solutions (USA)**:
- Tecnología: Ion Exchange beads (resinas)
- Selectividad: >90% Li vs Mg
- Tiempo extracción: Horas vs 12-18 meses evaporación
- Ventaja: No requiere piscinas evaporación
- Clientes: Lake Resources (Argentina), Standard Lithium (Arkansas)
- Estado: Piloto comercial en construcción
- **Pregunta clave**: ¿Requieren concentración post-DLE con membranas?

**EnergyX (USA)**:
- Tecnología: SoLiS™ (Solvent and Lithium Selective extraction)
- Claim: 90% recuperación Li en <24 horas
- Presencia: Bolivia (MOU con YLB), USA
- Estado: Piloto en desarrollo
- **Pregunta**: ¿Química eluato compatible con NF-UHPRO?

**Summit Nanotech (Canadá)**:
- Tecnología: Direct Lithium Extraction con nanofiltración integrada
- Ventaja: Proceso integrado DLE+membranas desde diseño
- Estado: Piloto (Oil & Gas wastewater, aplicación litio en desarrollo)

**Sunresin (China)**:
- Tecnología: Adsorción (Lanke Lithium 30k tpa)
- Integración con membranas: Probada en Qinghai
- Ventaja: Costo bajo, escalado masivo China

**Koch Separation Solutions (USA)**:
- Tecnología: LSS™ (Lithium Selective Sorption)
- Cliente: Standard Lithium (Arkansas, 35M galones procesados)
- Estado: Tecnología comercial validada

#### 7.3 Tecnologías Alternativas de Concentración

**MVR Standalone (Baseline SQM)**:
- CAPEX: $95M (Clase 5)
- OPEX: $20.85M/año
- Ventajas: Tecnología probada, conocida
- Desventajas: Alto CAPEX, alto consumo energético, ciclo largo

**Evaporación Solar (Tradicional)**:
- CAPEX: Bajo ($10-20M en piscinas)
- OPEX: Muy bajo ($1-2M/año)
- Tiempo: 12-18 meses
- Desventajas: Ocupación terreno enorme, pérdidas evaporación, sensibilidad clima
- Ventajas: Probado 70+ años, simple

**Electrodiálisis (ED)**:
- Tecnología: Membranas intercambio iónico con corriente eléctrica
- Aplicación litio: Emergente (pocas plantas comerciales)
- Ventaja: Selectividad iónica
- Desventaja: Consumo eléctrico muy alto, costo membranas ED

**Cristalización Fraccionada**:
- Tecnología: Cooling/evaporative crystallization
- Objetivo: Separación Li₂CO₃ directa
- Integración con NF-UHPRO: Posible (concentrar pre-cristalización)
- Precedentes: Múltiples en industria química

#### 7.4 Análisis SWOT de NF-UHPRO vs Alternativas

**Fortalezas NF-UHPRO**:
- Reducción drástica CAPEX MVR (28-84% según escenario)
- Ahorro OPEX significativo (29-39%)
- Recuperación agua (crítico en Antofagasta)
- Reducción tiempo ciclo (months → weeks)
- Modularidad y escalabilidad

**Debilidades NF-UHPRO**:
- Tecnología relativamente nueva para litio (pocos años)
- Dependencia calidad pretratamiento (riesgo fouling)
- CAPEX membranas no trivial ($7.5M-$63M)
- Requiere personal especializado
- Membranas como consumible recurrente

**Oportunidades**:
- Integración con DLE de nueva generación (Lilac, EnergyX)
- Mejora continua tecnología membranas (nuevas membranas >120 bar en desarrollo)
- Regulaciones ambientales favorecen eficiencia agua
- Precio agua en Antofagasta al alza

**Amenazas**:
- DLE integrado con concentración (EnergyX, Summit) sin requerir etapa separada
- Breakthrough en electrodialysis que reduzca costos
- Competidores (Albemarle) implementan primero y aprenden
- Sobrecostos en implementación dañan reputación tecnología

### Metodología Sugerida

1. **Desktop research**:
   - Reportes anuales (10-K, 20-F) de empresas públicas
   - Comunicados de prensa y press releases
   - Sitios web corporativos (sección Technology/Innovation)

2. **Análisis de patentes**:
   - USPTO, EPO, WIPO: Búsqueda "lithium" + "membrane" + "concentration"
   - Identificar tendencias: ¿Aumento en patentes DLE+membranas?
   - Análisis de citas: ¿Quién cita a quién? (Red de innovación)

3. **Conferencias y networking**:
   - Fastmarkets Lithium Supply (próxima edición)
   - Benchmark Mineral Intelligence Lithium Forecast
   - Attended presentations: ¿Qué tecnologías presentan competidores?

4. **LinkedIn intelligence**:
   - Tracking contrataciones: "hired membrane engineer" en Albemarle, Tianqi
   - Job postings: ¿Qué habilidades buscan? (Indicador tecnologías futuras)

### Fuentes de Datos

- **Reportes corporativos**:
  - SEC filings (sec.gov): Albemarle, Livent, Lithium Americas
  - SEDAR (Canadá): Lithium Chile, Sigma Lithium
  - ASX (Australia): Pilbara Minerals, IGO

- **Bases de datos patentes**:
  - Google Patents (patents.google.com)
  - Espacenet (worldwide.espacenet.com)
  - Lens.org (análisis de patentes con IA)

- **Publicaciones industria**:
  - Benchmark Mineral Intelligence (benchmarkminerals.com)
  - Fastmarkets (fastmarkets.com/lithium)
  - Roskill (roskill.com/lithium)

- **Consultoras especializadas**:
  - Wood Mackenzie
  - CRU Group
  - McKinsey (occasional lithium reports)

### Entregables

- **Reporte de Inteligencia Competitiva** (30-40 páginas)
  - Landscape competidores con tecnologías
  - Análisis SWOT comparativo
  - Tendencias emergentes (DLE integrado, electrodiálisis)
  - Posicionamiento estratégico recomendado para SQM
  - Timeline: ¿Cuándo competidores podrían alcanzar ventaja NF-UHPRO?

---

## ÁREA #8: PROYECCIÓN MERCADO AGUA ANTOFAGASTA

**Urgencia**: MEDIA - Cuantifica valor no-monetario agua
**Impacto**: MEDIO - Justificación estratégica adicional
**Plazo**: Q3 2026

### Preguntas de Investigación

#### 8.1 Valor Actual del Agua

- **Precio derechos de agua 2025**: ¿$68M por L/s es actual o histórico?
- **Transacciones recientes**: ¿Qué precios en mercado secundario 2023-2025?
- **Disponibilidad**: ¿Cuántos L/s disponibles para compra?
- **Regulación DGA**: ¿Nuevas restricciones o permisos?

#### 8.2 Proyección Demanda vs Oferta

- **Demanda minería**: Proyectos en pipeline (Cu, Li) próximos 10 años
- **Oferta natural**: ¿Recarga acuíferos suficiente?
- **Desalinización**: ¿Cuántas plantas en operación/construcción?
- **Reciclaje**: ¿Tendencia a ZLD (Zero Liquid Discharge)?

#### 8.3 Valor del Agua Recuperada NF-UHPRO

**Escenario A**: 808,000 m³/año recuperados
- ¿Equivalente en derechos evitados?
- ¿Valor presente 10 años?

**Escenario B**: Mayor recuperación (por determinar)

### Metodología Sugerida

- Entrevistas DGA Antofagasta
- Análisis histórico transacciones agua
- Benchmarking proyectos mineros (Codelco, Antofagasta Minerals)

### Entregables

- **Reporte Mercado Agua** (15-20 páginas)
  - Proyección precio agua 2025-2035
  - Valorización agua recuperada NF-UHPRO
  - Análisis sensibilidad

---

## ÁREA #9: VALIDACIÓN REGULATORIA Y AMBIENTAL

**Urgencia**: MEDIA - Requisito para implementación
**Impacto**: MEDIO-ALTO - Puede retrasar proyecto
**Plazo**: Q2-Q3 2026

### Preguntas de Investigación

#### 9.1 Permisos Operación Piloto (Escenario B)

- ¿Requiere permiso ambiental separado?
- ¿Modificación RCA (Resolución de Calificación Ambiental) existente?
- ¿Plazo aprobación?

#### 9.2 Normativa Descarga Salmueras

- **DS 90/2000**: Límites aplicables
- **Rechazo NF-UHPRO**: ¿Clasificación residuo peligroso o industrial?
- ¿Opciones disposición: Reinyección, evaporación, descarga?

#### 9.3 Regulación Agua Recuperada

- ¿Puede reciclarse al proceso sin permiso adicional?
- ¿Calidad requerida para uso industrial?

### Metodología Sugerida

- Consultoría legal-ambiental especializada minería Chile
- Revisión EIA proyectos similares aprobados
- Contacto con SMA Antofagasta

### Entregables

- **Roadmap Regulatorio** (10-15 páginas)
  - Lista permisos requeridos
  - Timeline aprobaciones
  - Riesgos regulatorios identificados
  - Estrategia de cumplimiento

---

## ÁREA #10: HUELLA DE CARBONO COMPARATIVA (LCA)

**Urgencia**: BAJA - Criterio ESG creciente
**Impacto**: BAJO-MEDIO - Diferenciación comercial
**Plazo**: Q4 2026 - Q1 2027

### Preguntas de Investigación

#### 10.1 Inventario de Ciclo de Vida (LCA)

**Proceso Tradicional (Evaporación Solar + MVR Grande)**:
- Emisiones construcción piscinas
- Emisiones operación MVR (consumo eléctrico)
- Embodied carbon equipos MVR
- Transporte

**Proceso NF-UHPRO**:
- Emisiones fabricación membranas
- Emisiones operación sistema (menor consumo eléctrico)
- Embodied carbon equipos NF-UHPRO
- Reemplazo membranas (cada 2-3 años)

#### 10.2 Mix Energético Chile

- % Renovables Antofagasta 2025: ¿50%, 60%, 70%?
- Proyección 2035: ¿80%+ renovables?
- Factor emisión electricidad: kgCO₂e/kWh actual y futuro

#### 10.3 Comparativa kgCO₂e/ton LCE

- ¿Reducción de huella con NF-UHPRO vs tradicional?
- ¿Certificación CarbonNeutral factible?
- ¿Valor comercial Li "verde"?

### Metodología Sugerida

- Software LCA: SimaPro, GaBi, OpenLCA
- Base de datos: Ecoinvent, GHG Protocol
- Consultoría especializada: Carbon Trust, South Pole

### Entregables

- **Reporte LCA** (20-30 páginas)
  - Inventario completo ambos procesos
  - Comparativa kgCO₂e/ton LCE
  - Oportunidades reducción huella
  - Estrategia comunicación ESG

---

## PRIORIZACIÓN FINAL Y CRONOGRAMA

### Matriz Impacto vs Urgencia

| Área | Urgencia | Impacto | Prioridad | Plazo |
|------|----------|---------|-----------|-------|
| #1: Caracterización Química | 🔴 CRÍTICA | 🔴 ALTO | **1** | Q1 2026 |
| #2: Fouling/Scaling | 🔴 CRÍTICA | 🔴 ALTO | **2** | Q1-Q2 2026 |
| #3: Benchmarking Qinghai | 🟡 ALTA | 🔴 ALTO | **3** | Q1 2026 |
| #4: TCO Proveedores | 🔴 CRÍTICA | 🔴 ALTO | **4** | Q1 2026 |
| #5: Monte Carlo Financiero | 🟡 ALTA | 🟡 MEDIO-ALTO | **5** | Q2 2026 |
| #6: Límites Termodinámicos | 🟡 ALTA | 🔴 ALTO | **6** | Q1-Q2 2026 |
| #7: Análisis Competitivo | 🟢 MEDIA | 🟡 MEDIO | **7** | Q2-Q3 2026 |
| #8: Mercado Agua | 🟢 MEDIA | 🟡 MEDIO | **8** | Q3 2026 |
| #9: Regulatorio/Ambiental | 🟢 MEDIA | 🟡 MEDIO-ALTO | **9** | Q2-Q3 2026 |
| #10: Huella Carbono LCA | 🟢 BAJA | 🟢 BAJO-MEDIO | **10** | Q4 2026-Q1 2027 |

### Cronograma Sugerido (Gantt Simplificado)

```
Q1 2026: [#1 Caracterización] [#2 Fouling] [#3 Qinghai] [#4 TCO] [#6 Termodinámica]
         ██████████████████████████████████████████████████████

Q2 2026: [#2 Fouling cont.] [#5 Monte Carlo] [#6 Termodinámica cont.] [#7 Competitivo] [#9 Regulatorio]
         ████████████████████████████████████

Q3 2026: [#7 Competitivo cont.] [#8 Mercado Agua] [#9 Regulatorio cont.]
         ████████████████

Q4 2026: [#10 LCA]
         ████

Q1 2027: [#10 LCA cont.] + REPORTE FINAL INTEGRADO
         ████████
```

**Hito crítico**: Fin Q1 2026 - Decisión GO/NO-GO con resultados Áreas #1-4-6

---

## PRESUPUESTO ESTIMADO DE INVESTIGACIÓN

### Costos Directos

| Concepto | Proveedor/Recurso | Costo Estimado |
|----------|-------------------|----------------|
| **Caracterización Química** | SGS/ALS Chile (3 muestras × 3 tiempos) | $15,000 - $25,000 |
| **Modelado OLI Systems** | Licencia temporal o consultor | $10,000 - $20,000 |
| **Consultoría Independiente TCO** | Experto membranas/desalinización | $30,000 - $50,000 |
| **Software Monte Carlo** | @RISK licencia anual | $3,000 - $5,000 |
| **Benchmarking Qinghai** | Viaje + traducción + contactos | $10,000 - $20,000 |
| **Consultoría Regulatoria** | Abogado ambiental Chile | $15,000 - $25,000 |
| **LCA Especializado** | Consultor Carbon Trust/South Pole | $20,000 - $35,000 |
| **Subscripciones datos** | Benchmark, Fastmarkets (6 meses) | $5,000 - $10,000 |
| **Contingencias (15%)** | - | $16,000 - $28,500 |
| **TOTAL ESTIMADO** | - | **$124,000 - $218,500** |

### Costos Indirectos (Personal Interno SQM)

- Ingeniero de proyecto senior (50% dedicación, 9 meses): ~$60,000
- Analista financiero (25% dedicación, 6 meses): ~$20,000
- Químico/Metalurgista (25% dedicación, 6 meses): ~$20,000
- **Subtotal Personal**: $100,000

### Presupuesto Total Investigación

**Rango**: $224,000 - $318,500
**Promedio**: ~$270,000

**ROI de la investigación**:
- Inversión piloto potencial: $5M
- Ahorro potencial (si exitoso): $80M - $125M (10 años)
- **ROI investigación**: 300:1 - 450:1

**Justificación**: Invertir $270k en investigación rigurosa para informar decisión de $5M (piloto) con upside $80-125M es prudencia financiera elemental.

---

## ENTREGABLES FINALES CONSOLIDADOS

### 1. Reporte Técnico de Validación (100-150 páginas)

**Contenido**:
- Resumen ejecutivo (5 páginas)
- Caracterización química completa
- Validación termodinámica factor 4x
- Análisis fouling/scaling con mitigaciones
- Benchmarking Qinghai detallado
- Conclusión: Viabilidad técnica (GO/NO-GO)

### 2. Análisis Económico Integral (50-80 páginas)

**Contenido**:
- Matriz TCO comparativa proveedores
- Modelo financiero Monte Carlo
- Análisis sensibilidad y escenarios
- Value at Risk (VaR) cuantificado
- Recomendación proveedor shortlist (2-3 finalistas)

### 3. Roadmap de Implementación (20-30 páginas)

**Contenido**:
- Timeline detallado Q1 2026 - Q4 2027
- Hitos clave y decision gates
- Permisos y regulaciones
- Estrategia mitigación de riesgos
- Estructura de gobernanza proyecto

### 4. Reporte de Inteligencia Competitiva (30-40 páginas)

**Contenido**:
- Análisis competidores y tecnologías alternativas
- Posicionamiento estratégico SQM
- Tendencias emergentes
- Recomendaciones diferenciación

### 5. Executive Summary para C-Level (10-15 páginas)

**Contenido**:
- Síntesis hallazgos críticos
- Recomendación GO/NO-GO clara y fundamentada
- Próximos pasos inmediatos
- Recursos requeridos (presupuesto, personal, timeline)
- Riesgos principales y mitigaciones

### 6. Presentación para Directorio (20-30 slides)

**Contenido**:
- Contexto y objetivos
- Hallazgos técnicos clave (visuales)
- Análisis económico (VAN, TIR, sensibilidad)
- Comparativa proveedores
- Recomendación con data
- Q&A anticipado

---

## CRITERIOS DE ÉXITO DE LA INVESTIGACIÓN

### Criterios Técnicos

✅ **Caracterización química completa** obtenida con análisis de 3+ muestras temporales
✅ **Presión osmótica teórica calculada** y validada <115 bar para 6% Li
✅ **Benchmarking Qinghai** con datos de al menos 2 proyectos validados independientemente
✅ **Mecanismos fouling/scaling** comprendidos con estrategias mitigación cuantificadas
✅ **Factor 4x validado termodinámicamente** como factible a presión ≤120 bar

### Criterios Económicos

✅ **TCO comparativo** de 4+ proveedores con datos actualizados 2026
✅ **Modelo Monte Carlo** con 10,000+ iteraciones y distribuciones validadas
✅ **Probabilidad VAN>0** calculada (target >80% para GO)
✅ **Identificación de top 3 variables** que más impactan VAN
✅ **Presupuesto piloto refinado** de Clase 5 a Clase 4 (-30%/+50% → -15%/+30%)

### Criterios de Decisión

✅ **Recomendación GO/NO-GO clara** con fundamento cuantitativo
✅ **Shortlist proveedores** (2-3 finalistas) con justificación
✅ **Roadmap implementación** detallado Q1 2026 - Q4 2027
✅ **Riesgos principales** identificados y cuantificados con mitigaciones
✅ **Buy-in stakeholders** (técnicos, financieros, C-level) mediante presentaciones

---

## CONTACTOS CLAVE SUGERIDOS

### Proveedores Tecnología

- **Saltworks**: Dr. Ben Sparrow (CTO), info@saltworks.com
- **Gradiant**: Prakash Govindan (COO), contact@gradiant.com
- **BW Waters**: Contacto Chile (post-adjudicación Taltal)
- **Fluence**: Regional Manager LATAM, info@fluencecorp.com

### Expertos Académicos

- **Dr. Menachem Elimelech** (Yale): Membranas, fouling/scaling
- **Dr. Eric Hoek** (UCLA): Desalinización, UHPRO
- **Dr. Tzahi Cath** (Colorado School of Mines): Brine treatment

### Consultores Independientes

- **IDA (International Desalination Association)**: Directorio consultores
- **LinkedIn**: "desalination consultant" + "Chile" / "mining"

### Industria Litio

- **Sunresin (China)**: Casos Qinghai, contacto@sunresin.com
- **Standard Lithium**: Lessons learned Arkansas DLE
- **Fastmarkets / Benchmark**: Analistas mercado litio

### Regulatorio Chile

- **DGA Antofagasta**: Permisos agua
- **SMA Región Antofagasta**: Permisos ambientales
- **Abogados ambientales**: Búsqueda Chambers & Partners Chile

---

## REFERENCIAS Y FUENTES BIBLIOGRÁFICAS CLAVE

### Papers Científicos (Búsqueda Inicial)

1. "High-pressure reverse osmosis for brine concentration" - Desalination Journal
2. "Cation bridging mechanisms in NF membranes" - Journal of Membrane Science
3. "Thermodynamics of lithium chloride solutions" - Journal of Solution Chemistry
4. "Direct Lithium Extraction: Technologies and economics" - Minerals Engineering

### Reportes Industria

1. "Global Lithium Market Outlook 2025-2030" - Benchmark Mineral Intelligence
2. "Lithium Mine Production and Cost" - Wood Mackenzie
3. "Membrane Technology for Brine Treatment" - IDA Desalination Yearbook
4. "Cost Estimate Classification System" - AACE International

### Recursos Técnicos Fabricantes

1. DuPont FilmTec Technical Manuals (filmtec.com/technical-resources)
2. LG Chem NanoH2O Product Catalog
3. Toray Membrane Application Guides
4. Energy Recovery ERD Selection Guide

### Normativas y Estándares

1. DS 90/2000 - Norma Emisión Residuos Líquidos Chile
2. ASTM D4189 - Standard Test Method for Silt Density Index
3. AACE Cost Estimate Classification (Clases 1-5)
4. ISO 14040/14044 - Life Cycle Assessment

---

## CONCLUSIÓN Y PRÓXIMOS PASOS INMEDIATOS

### Resumen

Este prompt de investigación profunda cubre **10 áreas prioritarias** para validar la viabilidad técnica, económica y estratégica de implementar tecnología NF-UHPRO en SQM. Las áreas críticas (#1-4) deben completarse **antes de la decisión GO/NO-GO en Q1 2026**.

### Próximos Pasos Inmediatos (Semana 1-2)

1. **Aprobar presupuesto investigación**: ~$270k
2. **Asignar equipo core**:
   - Ingeniero proyecto senior (líder)
   - Analista financiero
   - Químico/Metalurgista
3. **Contratar recursos externos**:
   - Laboratorio caracterización química (SGS/ALS)
   - Consultor independiente TCO (experiencia Taltal)
   - Licencia OLI Systems o consultor termodinámico
4. **Iniciar Área #1**: Muestreo salmueras y envío a laboratorio
5. **Enviar RFI proveedores**: Saltworks, Gradiant, BW Waters, Fluence
6. **Kickoff benchmarking Qinghai**: Búsqueda documental + LinkedIn outreach

### Timeline Crítico

- **Fin Enero 2026**: Resultados caracterización química (Área #1)
- **Fin Febrero 2026**: RFI respondidos por proveedores (Área #4)
- **Fin Marzo 2026**: Validación termodinámica + Monte Carlo (Áreas #5-6)
- **Abril 2026**: **DECISIÓN GO/NO-GO PILOTO**
- **Mayo 2026**: Si GO → Orden equipos piloto
- **Julio 2027**: Inicio operación piloto (tras 14 meses fabricación)

### Decisión Final

Con los resultados de esta investigación profunda, SQM tendrá:

✅ **Certeza técnica**: Factor 4x es físicamente posible y comercialmente probado
✅ **Claridad económica**: VAN esperado, probabilidad éxito, riesgos cuantificados
✅ **Proveedor óptimo**: TCO comparativo riguroso, shortlist justificado
✅ **Roadmap claro**: Timeline, hitos, recursos, permisos
✅ **Mitigación riesgos**: Top 5 riesgos con planes de contingencia

**Recomendación**: Ejecutar esta investigación en su totalidad es inversión mínima ($270k) con retorno potencial masivo (16:1 a 450:1 según fase). La decisión de un proyecto de $5M-$80M no puede basarse en supuestos no validados.

---

**Fin del Prompt de Investigación Profunda**

---

## ANEXO: PLANTILLAS Y HERRAMIENTAS

### A1. Plantilla RFI (Request for Information) Proveedores

```
SUBJECT: RFI - NF-UHPRO System for Lithium Brine Concentration

Dear [Vendor],

SQM is evaluating NF-UHPRO technology for lithium concentration in Antofagasta, Chile.
We request your indicative proposal for the following:

**TECHNICAL SPECIFICATIONS**:
- Feed: [Composition from Area #1]
- Target concentration: 60,000 ppm Li (6%)
- Pressure: ≤120 bar
- Capacity: [m³/day]

**REQUESTED INFORMATION**:
1. Preliminary CAPEX (±20% accuracy, Clase 4 AACE)
2. OPEX breakdown (energy, membranes, chemicals, labor)
3. Membrane lifespan guarantee
4. Similar projects (references under NDA)
5. Lead time and delivery schedule
6. Local support in Chile

**TIMELINE**: Response by [Date]

Thank you,
[Contact]
```

### A2. Checklist Caracterización Química

- [ ] Li⁺ concentration (ICP-OES)
- [ ] Mg²⁺ concentration
- [ ] Ca²⁺ concentration
- [ ] SO₄²⁻ concentration (IC)
- [ ] Cl⁻ concentration
- [ ] Na⁺, K⁺ concentration
- [ ] SiO₂ (reactive + colloidal)
- [ ] pH, conductivity, temperature
- [ ] TDS total (gravimetric)
- [ ] SDI (ASTM D4189)
- [ ] Turbidity (NTU)
- [ ] TOC (Total Organic Carbon)
- [ ] Trace metals (Fe, Al, B)
- [ ] BPE experimental
- [ ] 3 temporal samples (summer, winter, transition)
- [ ] 3 replicates per sample

### A3. Template Modelo Monte Carlo (Python Pseudocode)

```python
import numpy as np
from scipy.stats import norm, lognorm, triang

# Define distributions
capex_mvr = lognorm.rvs(s=0.3, scale=95e6, size=10000)
capex_uhpro = norm.rvs(loc=7.5e6, scale=1.5e6, size=10000)
membrane_life = lognorm.rvs(s=0.4, scale=24, size=10000)  # months
conc_factor = triang.rvs(c=0.5, loc=3.5, scale=0.8, size=10000)
electricity_price = triang.rvs(c=0.5, loc=90, scale=60, size=10000)  # $/MWh

# Calculate NPV for each iteration
npv = np.zeros(10000)
for i in range(10000):
    savings_capex = capex_mvr[i] * (1 - conc_factor[i]/4.0) - capex_uhpro[i]
    opex_annual = calculate_opex(membrane_life[i], electricity_price[i])
    cashflows = [savings_capex] + [-opex_annual]*10
    npv[i] = np.npv(0.10, cashflows)  # 10% discount rate

# Results
print(f"NPV Mean: ${np.mean(npv)/1e6:.1f}M")
print(f"NPV P10: ${np.percentile(npv, 10)/1e6:.1f}M")
print(f"NPV P90: ${np.percentile(npv, 90)/1e6:.1f}M")
print(f"Probability NPV>0: {np.mean(npv>0)*100:.1f}%")
```

---

**Documento preparado por**: Claude AI (Sonnet 4.5)
**Para**: SQM - Proyecto NF-UHPRO
**Fecha**: Diciembre 2025
**Versión**: 1.0
**Páginas**: 35

*Este prompt de investigación es un documento vivo. Se recomienda actualizarlo a medida que se completen áreas de investigación y surjan nuevas preguntas.*
