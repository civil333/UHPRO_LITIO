# Blueprints de Presentaciones PPTX - SQM UHPRO v2.0

## Propósito

Este directorio contiene **blueprints detallados** para crear presentaciones PowerPoint profesionales sobre la evaluación de tecnología NF-UHPRO para SQM. Los blueprints son archivos Markdown que actúan como "guiones" completos, especificando:

- **Contenido textual completo** de cada lámina
- **Datos y cifras validadas** con fuentes trazables al reporte ejecutivo v2.0
- **Especificaciones de visuales** (gráficos, tablas, diagramas, iconografía)
- **Notas de diseño** (colores, layout, énfasis visual, tipografía)
- **Speaker notes** para el presentador

Los blueprints NO son presentaciones en sí mismos - son **instrucciones detalladas** para crear presentaciones PPTX usando herramientas de conversión, IA, o manualmente.

---

## Archivos Incluidos

### **ESCENARIO-A-BLUEPRINT.md** (27 KB, 15 láminas)
**Enfoque**: Consultoría especializada NF-UHPRO para DLE

**Contenido clave**:
- Modelo consultancy independiente
- CAPEX $68.5M, ahorro $26.5M vs alternativa
- TCO 10 años: $94M ahorro
- Benchmarking global Qinghai (20,000 tpa LCE)
- Validación académica MIT/Yale
- Fase 0 caracterización recomendada

**Audiencia**: SQM Investment Committee
**Duración**: 20-25 minutos

---

### **ESCENARIO-B-BLUEPRINT.md** (42 KB, 15 láminas)
**Enfoque**: Piloto validación post-silvinita UF-NF-UHPRO

**Contenido clave**:
- Inversión piloto $5M (Clase 5 AACE: $3.5M-7.5M)
- CAPEX planta $78M, ahorro $80M vs alternativa (-84%)
- Valor 10 años: $125.3M
- **⚠️ ADVERTENCIA CRÍTICA**: Li/Na ratio dependency
- **Fase 0 OBLIGATORIA**: $18-22k antes de aprobar piloto
- Decision tree Casos A/B/C según ratio Li/Na

**Audiencia**: SQM Investment Committee
**Duración**: 20-25 minutos

**Características especiales**:
- Láminas 5-6: Warnings prominentes (fondo rojo/amarillo)
- Mayor énfasis visual en validación incremental
- Roadmap gated (Fase 0 → Piloto → Scale-up)

---

## Cómo Usar estos Blueprints

Los blueprints pueden convertirse en presentaciones PPTX usando múltiples métodos. Elige el que mejor se adapte a tus herramientas y preferencias.

### **Opción 1: Claude Code Skill (Futuro - Recomendado)**

*Pendiente de desarrollo*

Un skill de Claude Code podría automatizar la conversión de blueprint → PPTX:
- Parseo automático de estructura Markdown
- Generación slides con diseño corporativo SQM/FEN UChile
- Inserción gráficos/tablas según especificaciones "Visual Recomendado"
- Aplicación paleta colores y tipografía automática

**Estado**: Concepto identificado, skill no desarrollado aún.

---

### **Opción 2: Microsoft Copilot for Office (Rápido)**

Microsoft Copilot puede generar presentaciones desde texto estructurado.

**Proceso**:
1. Abrir PowerPoint
2. Activar Copilot (panel lateral)
3. Copiar contenido de blueprint lámina por lámina
4. Prompt Copilot: "Crea una lámina con este contenido: [paste]"
5. Revisar y ajustar diseño según "Notas de Diseño" del blueprint
6. Agregar visuales según "Visual Recomendado"
7. Aplicar paleta corporativa (ver sección Guidelines)

**Ventajas**:
- Rápido (15-30 minutos por presentación)
- Integrado con PowerPoint
- Puede generar gráficos básicos

**Desventajas**:
- Requiere licencia Microsoft 365 Copilot
- Calidad variable (requiere revisión manual)
- Limitado control sobre diseño detallado

---

### **Opción 3: Herramientas de Conversión Markdown → PPTX**

Múltiples herramientas convierten Markdown a PowerPoint automáticamente.

#### **3A. md2pptx** (Recomendado para layouts complejos)
**GitHub**: https://github.com/MartinPacker/md2pptx

**Instalación**:
```bash
pip install md2pptx
```

**Uso**:
```bash
md2pptx ESCENARIO-A-BLUEPRINT.md -o ESCENARIO-A-PRESENTACION.pptx --template sqm-template.potx
```

**Ventajas**:
- Control fino sobre layouts
- Soporte templates (.potx) con branding corporativo
- Maneja tablas, listas, imágenes

**Desventajas**:
- Curva aprendizaje (sintaxis específica)
- Requiere template .potx pre-configurado

---

#### **3B. Pandoc** (Universal, básico)
**Website**: https://pandoc.org

**Instalación**:
```bash
# macOS
brew install pandoc

# Windows (Chocolatey)
choco install pandoc

# O descarga installer: pandoc.org/installing.html
```

**Uso**:
```bash
pandoc ESCENARIO-A-BLUEPRINT.md -t pptx -o ESCENARIO-A-PRESENTACION.pptx
```

**Ventajas**:
- Universal (convierte entre 40+ formatos)
- Sin dependencias adicionales
- Ideal para conversión rápida

**Desventajas**:
- Diseño muy básico (requiere edición manual extensa)
- Limitado control layouts complejos
- No soporta templates fácilmente

---

### **Opción 4: Creación Manual en PowerPoint** (Control Total)

Usar blueprints como guía para crear presentación manualmente.

**Proceso**:
1. Abrir PowerPoint, crear presentación nueva
2. Configurar slide master con branding SQM/FEN UChile
3. Aplicar paleta colores corporativa (ver Guidelines)
4. Para cada lámina en blueprint:
   - Crear slide nuevo
   - Copiar contenido "Contenido Principal"
   - Insertar datos "Datos y Cifras"
   - Crear visual según "Visual Recomendado"
   - Aplicar diseño según "Notas de Diseño"
   - Agregar speaker notes
5. Revisar consistencia diseño global
6. Exportar como PPTX

**Tiempo estimado**: 4-6 horas por presentación (15 láminas)

**Ventajas**:
- **Control total** sobre diseño y calidad
- Flexibilidad máxima para ajustes
- No requiere herramientas adicionales

**Desventajas**:
- Tiempo intensivo
- Requiere habilidades diseño PowerPoint
- Propenso a inconsistencias si no se sigue blueprint fielmente

---

## Guidelines de Diseño Visual

Para asegurar presentaciones profesionales y consistentes, sigue estas guidelines estrictamente.

### **Paleta de Colores**

#### **SQM Corporativo**
- **Primario**: `#003DA5` (Azul SQM oscuro)
  - Uso: Títulos principales, fondos header
- **Secundario**: `#00A3E0` (Azul SQM claro/tecnología)
  - Uso: Subtítulos, elementos tecnológicos
- **Acento**: `#E31937` (Rojo SQM)
  - Uso: Call-to-action, datos críticos (usar con moderación)

#### **FEN UChile (Academia)**
- **Primario**: `#003D7A` (Azul académico UChile)
  - Uso: Alternativa a SQM primario en contextos académicos
- **Secundario**: `#00A8CC` (Celeste UChile)
  - Uso: Detalles académicos, validación expertos

#### **Colores Semánticos** (Universales)
- **Success/Positivo**: `#28A745` (Verde)
  - Uso: Ahorros, beneficios, GO decisions, checkmarks ✅
- **Warning/Advertencia**: `#FFC107` (Amarillo)
  - Uso: Advertencias moderadas, revisar, warnings ⚠️
- **Danger/Crítico**: `#DC3545` (Rojo)
  - Uso: Riesgos altos, NO-GO, pérdidas, errores ❌
- **Info**: `#17A2B8` (Cyan)
  - Uso: Información neutral, datos adicionales
- **Neutro oscuro**: `#5A5A5A` (Gris)
  - Uso: Texto cuerpo, elementos neutrales
- **Neutro claro**: `#F5F5F5` (Gris muy claro)
  - Uso: Fondos, separadores sutiles

#### **Aplicación por Escenario**

**Escenario A** (Consultancy DLE + UHPRO):
- Paleta dominante: Azul SQM + Verde (success economics)
- Menor uso de amarillo/rojo (riesgos moderados)
- Diseño más "confianza" y "establecido"

**Escenario B** (Piloto Post-Silvinita):
- Paleta dominante: Azul SQM + Amarillo/Rojo (warnings)
- Mayor uso de amarillo/rojo (Fase 0 crítica, validación)
- Diseño más "caución" y "validación requerida"

---

### **Tipografía**

#### **Font Family**
- **Primaria**: **Arial** (universal, legible, profesional)
  - Si Arial no disponible: Helvetica, Calibri, sans-serif
- **Alternativa académica**: **Georgia** o **Times New Roman** (solo para documentos, NO presentaciones)

#### **Tamaños y Pesos**

| Elemento | Font | Tamaño | Peso | Uso |
|----------|------|--------|------|-----|
| **Títulos lámina** | Arial | 28-32pt | Bold | Título principal cada slide |
| **Subtítulos** | Arial | 20-24pt | Semibold | Secciones dentro de slide |
| **Cuerpo texto** | Arial | 16-18pt | Regular | Bullets, párrafos, descripciones |
| **Datos destacados** | Arial | 18-24pt | Bold | Cifras clave, métricas, ahorros |
| **Notas al pie** | Arial | 10-12pt | Regular | Fuentes, disclaimers, footnotes |
| **Warnings** | Arial | 20-28pt | Black/Extra Bold | Advertencias críticas (Escenario B) |

#### **Line Height / Interlineado**
- Títulos: 1.2x tamaño fuente
- Cuerpo: 1.4-1.5x tamaño fuente (mejor legibilidad)
- Bullets: Espaciado adicional 0.5-0.8x entre ítems

#### **Alineación**
- **Títulos**: Izquierda (o centrado si es portada/hero)
- **Cuerpo**: Izquierda (NUNCA justificado en presentaciones)
- **Datos**: Centrado si es cifra destacada, izquierda en tablas
- **Tablas números**: Alineación decimal

---

### **Layout y Márgenes**

#### **Formato Slide**
- **Aspect ratio**: 16:9 (widescreen) - OBLIGATORIO
  - NO usar 4:3 (formato antiguo)
- **Resolución**: 1920x1080 px (Full HD)

#### **Márgenes Estándar**
- **Top**: 1" (2.54 cm)
- **Bottom**: 1" (2.54 cm)
- **Left**: 1" (2.54 cm)
- **Right**: 1" (2.54 cm)

#### **Áreas Seguras**
- **Título**: Top 10-15% del slide
- **Contenido**: 20-80% vertical del slide
- **Footer**: Bottom 5-10% del slide

#### **Whitespace**
- NO llenar >80% del espacio disponible
- Dejar "respiro" entre elementos (mínimo 0.5" / 1.27 cm)
- Evitar slides "apretados" - mejor dividir en 2 slides

---

### **Elementos Visuales**

#### **Logos**
- **Logo SQM**: Superior derecha, tamaño 0.5" x 0.5" (12.7 x 12.7 mm)
- **Logo FEN UChile**: Inferior derecha, tamaño 0.5" x 0.5"
- **Alternativa**: Logo SQM solo (si espacio limitado)
- **Transparencia**: 90-100% opacidad (no ghosted)

#### **Iconografía**
- **Estilo**: Line icons, minimalista, profesional
  - Fuentes: Font Awesome, Material Icons, Feather Icons
  - Evitar: Icons 3D, sombras exageradas, colores gradientes
- **Tamaño**: 32-64px (proporcional al texto)
- **Color**: Monochrome (gris #5A5A5A) o acento sutil (según contexto)
- **Uso**: Máximo 3-4 icons por slide (no sobrecargar)

**Icons recomendados por concepto**:
- **Técnico/Proceso**: ⚙️ 🔧 🏭 (engranaje, herramienta, fábrica)
- **Económico**: 💰 📊 💵 (dinero, gráfico, dólar)
- **Estratégico/ESG**: 🌱 🌊 ♻️ (hoja, agua, reciclaje)
- **Riesgo/Warning**: ⚠️ ❌ 🛑 (advertencia, equis, stop)
- **Success/Aprobación**: ✅ ✔️ 👍 (checkmark, pulgar arriba)
- **Timeline/Cronograma**: ⏱️ 📅 🗓️ (reloj, calendario)

#### **Gráficos**
**Preferir (en orden)**:
1. **Gráficos de barras horizontales** - Comparaciones, rankings
2. **Gráficos de barras verticales** - Series temporales, categorías
3. **Gráficos de línea** - Tendencias, evolución temporal
4. **Tablas** - Datos precisos, múltiples variables
5. **Diagramas de flujo** - Procesos, secuencias
6. **Gráficos spider/radar** - Comparaciones multidimensionales (usar con moderación)

**Evitar**:
- **Pie charts** - Difíciles de leer si >4 segmentos
- **3D charts** - Distorsionan percepción, menos profesionales
- **Gráficos con >6 colores** - Confusos, difíciles de distinguir

**Especificaciones gráficos**:
- **Colores**: Usar paleta corporativa (max 4-5 colores por gráfico)
- **Leyenda**: Preferir etiquetas directas en barras/líneas vs leyenda aparte
- **Ejes**: Siempre etiquetados (unidades explícitas: USD Millones, %, años)
- **Gridlines**: Sutiles (gris claro), solo horizontales (evitar verticales salvo necesario)
- **Fuente datos**: Footnote pequeño (10-12pt) indicando fuente

#### **Tablas**
**Formato estándar**:
- **Header**: Fondo gris medio (#D9D9D9), texto negro bold, centrado
- **Filas datos**: Fondo blanco (alternating #F5F5F5 opcional), texto izquierda
- **Números**: Alineación decimal, formato financiero ($X.XM, X.X%)
- **Borders**: 1pt negro en header, 0.5pt gris (#CCCCCC) en celdas
- **Máximo**: 5 columnas x 8 filas (más allá, simplificar o dividir)

---

### **Footer y Metadata**

#### **Footer Estándar** (Cada slide excepto portada)
```
[Escenario A / Escenario B] - SQM UHPRO Evaluation - November 2025 | Confidencial
```

- **Posición**: Inferior centro o inferior izquierda
- **Tamaño**: 10-12pt Arial Regular
- **Color**: Gris oscuro (#5A5A5A) - NO negro (demasiado prominente)

#### **Número de Página**
- **Posición**: Inferior derecha
- **Formato**: "Página X de 15" o simplemente "X"
- **Tamaño**: 10-12pt Arial Regular
- **Color**: Gris oscuro (#5A5A5A)

---

### **Animaciones y Transiciones**

#### **Recomendación General**: **EVITAR ANIMACIONES**

Presentaciones ejecutivas para Investment Committee deben ser:
- **Profesionales**: Animaciones pueden verse "juguetes"
- **Eficientes**: Tiempo es valioso, animaciones ralentizan
- **Imprimibles**: PDFs de presentación no muestran animaciones

**Si se usan animaciones (opcional, con moderación)**:
- **Solo reveal builds**: Bullets apareciendo uno a uno (Fade o Wipe simple)
- **NO usar**: Fly in, Bounce, Spin, 3D effects, sonidos
- **Transiciones slides**: Fade simple (0.3-0.5 segundos), NO más complejas

---

## Comparación Escenario A vs Escenario B

### **Diferencias Clave de Contenido**

| Aspecto | Escenario A | Escenario B |
|---------|-------------|-------------|
| **Modelo de negocio** | Consultoría independiente | Piloto validación → Scale-up |
| **Aplicación** | Eluato DLE (2,000 ppm Li) | Salmuera post-silvinita (15,000 ppm Li) |
| **Factor concentración** | 1.75x (conservador) | 4.0x (ambicioso) |
| **CAPEX** | $68.5M (directo) | $5M piloto + $78M planta ($83M total) |
| **Ahorro CAPEX** | $26.5M (-28%) | $80M (-84%) - MAYOR |
| **Valor 10 años** | $94M | $125.3M - MAYOR |
| **Payback** | 4.4 años | 2.8 años - MEJOR |
| **TIR** | 22% | 28% - MAYOR |
| **Riesgo técnico** | Medio (dependencia DLE) | Alto (Li/Na ratio desconocido) |
| **Fase 0** | Recomendada ($18-22k) | **OBLIGATORIA** ($18-22k) |
| **Timeline total** | 24-30 meses | 44-50 meses (incl. validación) - MÁS LENTO |
| **Dependencia DLE** | Crítica (NO viable sin DLE) | Independiente (aplica proceso existente) |
| **Lámina crítica** | Lámina 10 (Fase 0) | **Láminas 5-6 (ADVERTENCIA + Fase 0)** |

### **Diferencias de Diseño Visual**

| Elemento | Escenario A | Escenario B |
|----------|-------------|-------------|
| **Paleta dominante** | Azul + Verde (éxito) | Azul + Amarillo/Rojo (warning) |
| **Uso warnings** | Moderado (1-2 láminas) | **Prominente (3-4 láminas)** |
| **Warning backgrounds** | Amarillo sutil | **Amarillo + Rojo sólidos (láminas 5-6)** |
| **Iconografía ⚠️** | Ocasional | **Frecuente (refuerzo Fase 0)** |
| **Decision gates** | 2 gates (consultoría, CAPEX) | **3 gates (Fase 0, Piloto, Planta)** |
| **Énfasis visual** | Economics atractivos | **Validación técnica crítica** |
| **Tone diseño** | Confianza / Establecido | Caución / Validación requerida |
| **Tabla casos** | NO aplica | **SÍ (Casos A/B/C Li/Na)** |
| **Roadmap** | Lineal (2 fases) | **Gated (3 gates con off-ramps)** |

### **Recomendaciones de Uso**

**Usar Escenario A si**:
- SQM ya decidió implementar DLE (Lilac o alternativo)
- Se busca menor OPEX largo plazo ($14.77M vs $31M)
- Timeline más rápido es prioritario (24-30 vs 44-50 meses)
- Menor complejidad técnica preferida (factor 1.75x vs 4x)

**Usar Escenario B si**:
- SQM busca mayor ahorro CAPEX ($80M vs $26.5M)
- Se prioriza independencia de DLE (aplica proceso existente)
- Se acepta timeline más largo para validación robusta
- Se valora mayor ROI (28% vs 22%) con validación previa

**Presentar AMBOS si**:
- Decision no pre-determinada (Investment Committee evalúa opciones)
- Se busca comparación directa trade-offs
- Estrategia puede ser secuencial (Escenario B corto plazo, A largo plazo)
- **Recomendación**: Presentar Escenario B primero (mayor upside), luego Escenario A (alternativa si B no viable)

---

## Fuente de Verdad

**TODOS los datos en ambos blueprints provienen de**:

📄 `REPORTES-EJECUTIVOS/REPORTE-EJECUTIVO-NF-UHPRO-SQM.md` **(v2.0, 363 KB)**

**Trazabilidad**:
- Cada dato incluye fuente explícita (ej. "Fuente: Sección 1.2, Resumen Ejecutivo")
- Si hay discrepancia entre blueprint y reporte v2.0: **reporte v2.0 prevalece**
- Ningún dato fue inventado - todos trazables a:
  - 4 documentos de investigación técnica
  - Referencias públicas verificables
  - Cálculos derivados documentados

**Validación**:
- Reporte v2.0 pasó auditoría técnica completa (Fase 3 development)
- 0 errores identificados en cross-reference con investigaciones
- Principio: **Conservative enrichment** - cuando en duda, descartado

---

## Versión y Mantenimiento

### **Versión Actual**
- **Blueprints**: v2.0 (Noviembre 2025)
- **Basados en**: REPORTE-EJECUTIVO-NF-UHPRO-SQM.md v2.0

### **Changelog**
- **2025-11-03**: Creación inicial blueprints Escenario A y B (v2.0)
  - Basados en reporte ejecutivo v2.0 completado 2025-11-02
  - 15 láminas cada escenario
  - Especificaciones completas contenido + diseño + speaker notes

### **Mantenimiento Futuro**

**Si se actualiza reporte ejecutivo a v3.0**:
1. Leer changelog reporte v3.0 (secciones modificadas)
2. Identificar láminas afectadas en blueprints
3. Actualizar contenido, datos, fuentes
4. Revisar consistency diseño
5. Incrementar versión blueprints a v3.0
6. Documentar cambios en este README

**Si se encuentran errores en blueprints**:
1. Verificar contra reporte v2.0 (fuente de verdad)
2. Corregir dato/fuente en blueprint
3. Documentar corrección en sección Errata (abajo)
4. Incrementar versión minor (v2.0 → v2.1)

### **Errata**
*Vacío - No se han identificado errores post-creación (2025-11-03)*

---

## FAQ - Preguntas Frecuentes

### **Q1: ¿Puedo modificar el contenido de los blueprints antes de generar PPTX?**
**A1**: Sí, pero con precaución. Los blueprints están diseñados para ser "completos y auto-contenidos". Si modificas datos o cifras, asegúrate de:
- Mantener trazabilidad a fuente válida
- Actualizar speaker notes si cambias narrativa
- Preservar consistency con otros datos relacionados
- Documentar modificaciones (ej. comentarios Markdown `<!-- MODIFICADO: razón -->`)

---

### **Q2: ¿Cuánto tiempo toma convertir un blueprint a PPTX?**
**A2**: Depende del método:
- **Copilot**: 15-30 minutos (rápido pero requiere revisión)
- **md2pptx**: 1-2 horas (setup template + conversión + ajustes)
- **Pandoc**: 30 minutos (conversión básica) + 2-3 horas (edición manual extensa)
- **Manual**: 4-6 horas (control total, mejor calidad)

**Recomendación**: Usar Copilot para draft rápido, luego refinar manualmente siguiendo "Notas de Diseño".

---

### **Q3: ¿Los blueprints incluyen imágenes/gráficos pre-hechos?**
**A3**: **NO**. Los blueprints especifican QUÉ visuales crear ("Visual Recomendado") pero NO incluyen los archivos gráficos. Debes:
- Crear gráficos según especificaciones (Excel, Python, Tableau, etc.)
- Usar datos de sección "Datos y Cifras"
- Seguir guidelines colores y tipografía de este README
- Insertar en PPTX manualmente o vía herramienta de conversión

**Futuro**: Un skill de Claude podría generar gráficos automáticamente desde datos.

---

### **Q4: ¿Qué hacer si una herramienta de conversión genera diseño feo/inconsistente?**
**A4**: Opciones:
1. **Crear template .potx** con branding SQM/FEN UChile y pasarlo a herramienta (md2pptx soporta)
2. **Usar Copilot** que tiene mejor integración PowerPoint
3. **Generar draft con herramienta → Refinar manualmente** siguiendo "Notas de Diseño"
4. **Crear manualmente** desde inicio (más tiempo pero control total)

---

### **Q5: ¿Puedo combinar ambos escenarios en una sola presentación?**
**A5**: **Sí**, pero con cuidado en la estructura. Sugerencias:
- **Opción 1 (Secuencial)**: Portada general → Escenario A completo (15 slides) → Transición → Escenario B completo (15 slides) → Comparación final (2-3 slides)
  - **Total**: ~33 slides
  - **Duración**: 40-50 minutos
- **Opción 2 (Intercalado)**: Por sección (ej. "Contexto A + B" → "Economics A + B" → etc.)
  - Más complejo estructurar
  - Puede confundir audiencia
  - NO recomendado para Investment Committee
- **Opción 3 (Resumen ejecutivo)**: Crear nueva presentación "resumen" con 8-10 slides destacando key comparisons
  - Usar lámina 14 de cada escenario (Resumen Ejecutivo) + tabla comparativa
  - Ideal para presentación corta (10-15 minutos)

**Recomendación**: Presentar escenarios por separado en sesiones diferentes, O usar Opción 3 (resumen) si tiempo limitado.

---

### **Q6: ¿Los blueprints están en inglés o español?**
**A6**: **Español**. El contenido textual está en español porque:
- Proyecto es para SQM Chile
- Audiencia: Investment Committee habla español
- Reporte ejecutivo v2.0 está en español

**Si necesitas versión inglés**:
- Traducir blueprint manualmente (recomendado: traductor profesional para precisión técnica)
- Usar herramienta MT (Machine Translation) como DeepL (mejor que Google Translate para español técnico)
- **NO traducir datos/cifras** - mantener números originales

---

### **Q7: ¿Qué hacer si encuentro un error en los datos de un blueprint?**
**A7**: Proceso de reporte:
1. Verificar contra reporte ejecutivo v2.0 (fuente de verdad): `REPORTES-EJECUTIVOS/REPORTE-EJECUTIVO-NF-UHPRO-SQM.md`
2. Si error está en blueprint pero reporte v2.0 es correcto: Corregir blueprint
3. Si error está en ambos (blueprint + reporte v2.0): Reportar a mantenedor del proyecto
4. Documentar en sección "Errata" de este README
5. Actualizar versión blueprint (v2.0 → v2.1 si es corrección menor)

**Contacto**: Luis Rivera González (luis@lrg-ingenieria.com) + Claude AI

---

### **Q8: ¿Puedo usar estos blueprints para otros proyectos (no-SQM)?**
**A8**: **Con adaptación**, sí. Los blueprints son específicos a SQM UHPRO, pero la ESTRUCTURA es reutilizable:
- Template de 15 láminas es estándar para presentaciones ejecutivas
- Secciones (Contexto, Tecnología, Economics, Riesgos, Roadmap, Recomendación) son universales
- Guidelines de diseño son aplicables a cualquier presentación técnico-financiera

**Para reutilizar**:
1. Copiar estructura láminas (títulos, secciones)
2. Reemplazar contenido específico SQM con tu proyecto
3. Mantener formato "Contenido Principal", "Datos y Cifras", "Visual Recomendado", "Notas de Diseño", "Speaker Notes"
4. Aplicar tu paleta corporativa (no SQM/FEN UChile)

**Licencia**: Ver sección abajo.

---

## Licencia y Uso

### **Propietario**
- **Cliente**: SQM (Sociedad Química y Minera de Chile)
- **Autor**: Luis Rivera González (L.R.G. Ingeniería SPA) + Claude AI
- **Programa**: MBA Antofagasta - FEN UChile
- **Curso**: Finanzas Corporativas

### **Uso Permitido**
✅ Uso interno SQM (presentaciones Investment Committee, análisis técnico, decisiones estratégicas)
✅ Uso académico FEN UChile (evaluación MBA, portafolio proyectos)
✅ Modificación y adaptación para propósitos SQM
✅ Generación múltiples versiones PPTX desde blueprints
✅ Compartir con consultores/vendors bajo NDA (confidencialidad)

### **Uso NO Permitido**
❌ Distribución pública (datos confidenciales SQM)
❌ Uso comercial por terceros sin autorización SQM
❌ Modificación datos técnicos sin validación vs reporte v2.0
❌ Remoción de atribución (autor, fuente, versión)

### **Confidencialidad**
🔒 **Clasificación**: Confidencial - SQM Internal Use Only
🔒 Footer requerido en PPTX: "Confidencial"
🔒 No compartir fuera SQM sin autorización VP Operaciones o CTO

---

## Contacto y Soporte

### **Para consultas técnicas sobre blueprints**:
- **Email**: luis@lrg-ingenieria.com
- **Teléfono**: +56-9-85877675
- **Empresa**: L.R.G. Ingeniería SPA

### **Para consultas sobre proyecto SQM UHPRO**:
- **Sponsor ejecutivo**: VP Operaciones SQM / CTO SQM
- **Contexto académico**: Profesor curso Finanzas Corporativas, MBA Antofagasta, FEN UChile

### **Para actualizaciones de blueprints**:
- Verificar carpeta `PRESENTACIONES/` para versiones actualizadas
- Revisar `REPORTES-EJECUTIVOS/` para nuevas versiones reporte (v3.0+)
- Changelog en este README será actualizado con cada versión

---

## Apéndice: Recursos Adicionales

### **Templates y Assets Recomendados**

**PowerPoint Templates**:
- Crear template `.potx` con branding SQM/FEN UChile (master slides)
- Incluir layouts: Portada, Contenido, Tabla, Gráfico, Comparación, Cierre
- Pre-configurar paleta colores corporativa en theme

**Icon Libraries**:
- Font Awesome (https://fontawesome.com) - Free tier suficiente
- Material Icons (https://fonts.google.com/icons) - Google, gratis
- Feather Icons (https://feathericons.com) - Minimalista, gratis

**Color Palette Tools**:
- Adobe Color (https://color.adobe.com) - Verificar combinaciones accesibles
- Coolors (https://coolors.co) - Generar paletas complementarias
- Verificar contraste WCAG AA (mínimo 4.5:1 ratio texto/fondo)

**Gráficos y Visualización**:
- Excel/Google Sheets - Gráficos básicos, rápido
- Tableau Public - Dashboards interactivos (gratis)
- Python (Matplotlib, Seaborn) - Control total, reproducible
- R (ggplot2) - Gráficos publication-quality

---

## Changelog Detallado

### **v2.0 - 2025-11-03 (Inicial)**
**Creado**:
- ESCENARIO-A-BLUEPRINT.md (27 KB, 15 láminas)
- ESCENARIO-B-BLUEPRINT.md (42 KB, 15 láminas)
- README-BLUEPRINTS.md (este archivo)

**Basado en**:
- REPORTE-EJECUTIVO-NF-UHPRO-SQM.md v2.0 (completado 2025-11-02)
- REPORTE-EJECUTIVO-REDUCIDO-NF-UHPRO-SQM.md v2.0

**Características**:
- Especificaciones completas contenido textual
- Datos y cifras con trazabilidad a fuente
- Especificaciones visuales detalladas (gráficos, tablas, diagramas)
- Notas de diseño (colores, layout, tipografía, énfasis)
- Speaker notes para presentador
- Guidelines de diseño corporativo SQM/FEN UChile
- Comparación Escenario A vs B

**Autor**: Luis Rivera González + Claude AI (Claude Sonnet 4.5)

---

**FIN README**

**Última actualización**: 2025-11-03
**Versión**: v2.0
**Mantenido por**: Luis Rivera González + Claude AI
**Proyecto**: SQM UHPRO Evaluation - MBA Antofagasta FEN UChile
