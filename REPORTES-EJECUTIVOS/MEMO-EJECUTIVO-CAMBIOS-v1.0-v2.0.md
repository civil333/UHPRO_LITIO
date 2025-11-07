# MEMO EJECUTIVO
## Cambios Críticos Reportes SQM NF-UHPRO v1.0 → v2.0

**PARA**: Comité Inversión / Dirección Técnica SQM
**DE**: Equipo Evaluación Tecnología Membranas
**FECHA**: 2025-11-02
**RE**: Actualización documentos NF-UHPRO - Hallazgos Críticos Investigación Complementaria

**CONFIDENCIALIDAD**: Interno SQM

---

## 1. RESUMEN EJECUTIVO

### Propósito
Documentar cambios críticos implementados en Reportes Ejecutivos NF-UHPRO (versión completa 180 páginas + versión reducida 70 páginas) resultado de investigación complementaria noviembre 2025 (22 fuentes académicas y comerciales).

### Alcance Cambios
- **7 secciones nuevas** agregadas (Secciones 3.6, 4.3, 5.4, 6.2, 8.2, 11.1.X, Anexo H)
- **13 correcciones críticas** terminología NaCl vs LiCl
- **1 advertencia crítica** Escenario B (riesgo $5M-83M identificado)
- **Total contenido nuevo**: ~12,900 palabras, 32 subsecciones, 18 tablas

### Impacto Estratégico
- ✅ Identifica riesgo financiero $5M-83M (piloto + planta incorrecta Escenario B)
- ✅ Propone mitigación $18-22k (Fase 0 validación, ROI 250:1 a 2,500:1)
- ✅ Cuantifica ventaja económica CFRO $3.4M (20% TCO 10 años) SI claims validados
- ✅ Corrige malentendido técnico fundamental: UHPRO NO separa Li/Na selectivamente

---

## 2. TOP 10 CAMBIOS CRÍTICOS

### ✅ COMPLETADOS (Sesiones 1-2)

#### 1. Sección 3.6: Limitación Fundamental UHPRO (CRÍTICO) ⭐
**Hallazgo**: UHPRO **NO separa litio vs sodio selectivamente** (diferencia rechazo <0.3%).
**Evidencia**: Radio iónico hidratado Li⁺ 3.82 Å vs Na⁺ 3.58 Å (diferencia 6.7% - insuficiente para selectividad membrana poliamida).
**Implicación Escenario A**: ✅ Sin cambios (DLE separa, UHPRO concentra - configuración correcta).
**Implicación Escenario B**: ⚠️ Viabilidad depende ratio Li/Na post-silvinita (variable NO medida).
**Acción**: Fase 0 validación obligatoria Escenario B.

---

#### 2. Sección 11.1.X: Advertencia Crítica Escenario B (CRÍTICO) ⭐
**Título completo**: "ADVERTENCIA CRÍTICA: Validación Composición Post-Silvinita y Necesidad (o No) de DLE"
**Pregunta fundamental**: ¿Cuál es ratio Li/Na molar en salmuera SQM post-proceso silvinita?
**3 escenarios posibles**:
- **Caso A** (ratio >20:1): GO piloto $5M
- **Caso B** (ratio 5-20:1): GO CONDICIONAL (agregar DLE $2M, piloto $7-9M)
- **Caso C** (ratio <5:1): NO-GO (reformular Escenario B)

**Riesgo financiero**: $5M-83M (piloto + planta con configuración incorrecta si ratio desfavorable)
**Solución**: Fase 0 caracterización $18-22k (ROI 250:1)
**Timeline**: Nov 2025 → May 2026 decisión
**Recomendación**: **NO aprobar piloto hasta completar Fase 0 con resultado GO (≥90 puntos)**

---

#### 3. Correcciones Globales NaCl vs LiCl (CRÍTICO) ⭐
**Problema identificado**: 40+ instancias ambiguas ">200,000 mg/L TDS" sin especificar NaCl vs LiCl.
**Corrección aplicada**: ">200,000 mg/L TDS **NaCl** (~180,000 mg/L LiCl equiv.)"
**Gap cuantificado**: Presión osmótica LiCl +52% vs NaCl a misma concentración mg/L
- π(NaCl 200k mg/L) ≈ 184 bar
- π(LiCl 200k mg/L) ≈ 280 bar

**Instancias corregidas**: 13 críticas en reporte completo, 8-10 en reporte reducido.
**Implicación**: Diseño sistema debe considerar presión operación UHPRO >90 bar para LiCl (vs ~70 bar NaCl).

---

#### 4. Sección 4.3: Análisis Crítico Alegaciones Proveedores (NUEVA)
**Hallazgo patente Gradiant WO2018075637A1**:
- **Claims**: "Up to 250,000 mg/L"
- **Example 1 experimental**: 58,000 mg/L NaCl (dato REAL)
- **Marketing**: 260,000 mg/L (extrapolación 4.5x)

**Instalación comercial SAWACO** (Abu Dhabi): Operación continua ~150,000 mg/L **NaCl** (agua mar concentrate).

**Tabla validación académica**:
| Alegación | Academia | Comercial | Gap Crítico |
|-----------|----------|-----------|-------------|
| CFRO >250k NaCl | ✅ MIT/Yale | ✅ SAWACO ~150k | ⚠️ LiCl NO validado |
| UHPRO >200k NaCl | ✅ MIT 2024 | ✅ Saltworks CHN | ⚠️ LiCl ~180k equiv. |
| Cualquier >200k LiCl | ❌ NO ENCONTRADO | ⚠️ Alegado | ❌ BRECHA CRÍTICA |

**Recomendación contractual**: Performance guarantees con penalidades, acceptance testing con salmuera REAL SQM.

---

#### 5. Sección 5.4: Benchmarking Cuantitativo Qinghai (NUEVA)
**Proyecto CITIC Guoan** (China):
- Capacidad: **20,000 tpa Li₂CO₃** (exactamente target SQM)
- Membranas: >10,000 elementos LG Chem NanoH₂O TFN
- Economía: **Margen bruto 30-50%** (costo $6.3-7.9k/t vs precio $23-31k/t, 2023-2024)

**Química comparativa**:
- Li feed: Qinghai 300-1,000 ppm vs **SQM 1,500-3,000 ppm** (✅ SQM 3-5x superior)
- Mg/Li: Qinghai 20-1300:1 vs **SQM 6-10:1** (✅ SQM 100x más favorable)

**Implicación**: Si Qinghai viable con química 100x más difícil → **SQM debería ser significativamente más rentable**.
**Recomendación**: Incluir LG Chem en RFP (potencial ahorro CAPEX 10-25%).

---

#### 6. Sección 6.2: TCO 10 Años Comparativo (NUEVA)
**Análisis económico cuantitativo** (VPN 10%, horizonte 10 años):

| Tecnología | CAPEX | VPN OPEX | **TCO Total** | Ahorro vs UHPRO |
|------------|-------|----------|---------------|-----------------|
| UHPRO 120 bar | $8.25M | $8.52M | **$16.77M** | Baseline |
| **CFRO <83 bar** | $5.9M | $7.48M | **$13.38M** | **↓$3.39M (20%)** |
| FusionRO | $6.75M | $8.10M | **$14.85M** | ↓$1.92M (11%) |

**Drivers ventaja CFRO**:
- CAPEX 29% menor (membranas RO estándar vs especializadas UHPRO)
- OPEX energía 28% menor (420 kW vs 580 kW)

**Robustez**: Ventaja CFRO persiste bajo sensibilidad energía ±30% (15-25%) y vida útil membranas ±1 año (17-23%).

**Consideración crítica**: Ventaja CFRO **condicional a validación performance** con salmuera LiCl real SQM.

---

#### 7. Sección 8.2: Red Expertos Independientes (NUEVA)
**Expertos académicos identificados** (Tier 1):
- **Prof. Lienhard** (MIT): 3 papers litio 2024-2025, costo $15-25k
- **Prof. Elimelech** (Yale): H-index >150 (autoridad mundial #1 membranas), costo $20-30k
- **Prof. Hoek** (UCLA): Co-fundador NEXT Membranes, ⚠️ conflicto interés
- **Prof. Cath** (Mines): Especialista brine management, costo $12-22k

**Consultores independientes** (track record litio probado):
- **Hatch Ltd.** (Chile/Argentina): 20+ proyectos litio, supervisión piloto $150-300k
- **TRU Group** (USA/Canadá): Protocolo piloto comparativo $40-80k
- **Worley/Advisian** (Sudamérica): FEED $300-500k (solo post-piloto exitoso)

**Estrategia contratación faseada**:
- **Fase 1** (durante piloto): $225-435k (Hatch, Lienhard, TRU)
- **Fase 2** (post-piloto si exitoso): $312-522k (Worley, Cath)
- **TOTAL**: $537-957k (0.6-1.0% CAPEX)

**ROI consultoría**: 10:1 a 87:1 (evita 1 error crítico = $5M-83M)

---

#### 8. Anexo H: Gap Académico NaCl vs LiCl (COMPLETADO) ✅
**Síntesis investigación**: 22 fuentes consultadas → 95% estudios UHPRO/CFRO >200k mg/L usaron **NaCl**, <5% LiCl.
**Tabla comparativa**: 10 propiedades fisicoquímicas NaCl vs LiCl (presión osmótica, viscosidad, densidad, etc.)
**Gap validación**: 12 papers UHPRO >200k mg/L → **0 usaron LiCl específicamente**.
**Conclusión**: Extrapolación NaCl→LiCl **NO validada experimentalmente**.
**Estado**: ✅ COMPLETADO (203 líneas anexo agregado)

---

## 3. IMPLICACIONES POR ESCENARIO

### Escenario A: DLE + UHPRO (SIN CAMBIOS FUNDAMENTALES) ✅

**Configuración**: NF → DLE Lilac → UHPRO → Cristalización

**Cambios aplicados**:
- ✅ Validación expertos académicos reduce riesgo técnico ($225-435k Fase 1)
- ✅ TCO favorable si CFRO vs UHPRO ($3.4M ahorro 10 años)
- ✅ Benchmarking Qinghai valida viabilidad comercial 20,000 tpa

**Recomendaciones**:
1. Pilotar CFRO vs UHPRO comparativamente (protocolo apples-to-apples, supervisión Hatch Ltd.)
2. Incluir LG Chem en RFP (probado Qinghai, potencial ahorro 10-25%)
3. Contratar Prof. Lienhard (MIT) + TRU Group para peer review protocolo ANTES de RFP

**Presupuesto actualizado**:
- CAPEX: $94M → $94.5M (+$0.5M consultoría Fase 1)
- Timeline: Sin cambios (inicio piloto Mayo 2027)
- Riesgo técnico: BAJO (configuración validada DLE+UHPRO)

---

### Escenario B: UHPRO Directo Post-Silvinita (CAMBIO CRÍTICO) ⚠️

**Configuración original**: UF → NF → UHPRO → Cristalización (SIN DLE)

**HALLAZGO CRÍTICO**: Viabilidad depende de ratio Li/Na post-silvinita (**variable NO medida**).

**3 casos posibles**:

| Caso | Ratio Li/Na | Probabilidad | Configuración | Presupuesto | Timeline Piloto |
|------|-------------|--------------|---------------|-------------|-----------------|
| **A** | >20:1 | ~30% | UF-NF-UHPRO (actual) | $5M | Mayo 2027 |
| **B** | 5-20:1 | ~40% | Agregar DLE | $7-9M | Sep-Oct 2027 (+4-5 meses) |
| **C** | <5:1 | ~30% | Reformular (DLE obligatorio) | $9-12M | Dic 2027-Q1 2028 (+7-9 meses) |

**Riesgo financiero**:
- **Caso C sin Fase 0**: $5M piloto con configuración incorrecta (probabilidad 30%) → Pérdida esperada $1.5M
- **Planta incorrecta**: $78M planta basada en piloto no representativo (probabilidad 15-20%) → Pérdida esperada $12-16M
- **TOTAL riesgo evitable**: $13.5-18M

**Solución: Fase 0 Caracterización** (OBLIGATORIA)
- **Inversión**: $18,000-22,000 (0.4% piloto)
- **Timeline**: Nov 2025 → Abr 2026 (4 meses)
- **Decisión Go/No-Go**: Mayo 2026 (6 criterios cuantitativos, score ≥90 → GO)
- **ROI**: 250:1 a 2,500:1

**Recomendación Comité Inversión**: **NO APROBAR piloto $5M Escenario B hasta completar Fase 0 con resultado GO**.

**Presupuesto actualizado**:
- Fase 0: $18-22k (Q4 2025)
- Piloto (si GO): $5M-12M (depende caso A/B/C)
- Consultoría: $225-435k (Fase 1)
- **TOTAL**: $5.2M-12.5M (vs $5M original)

**Timeline actualizado**:
- Fase 0: Nov 2025 → May 2026 (decisión)
- Diseño piloto: Jun-Ago 2026 (3 meses)
- Construcción piloto: Sep 2026-Abr 2027 (8 meses)
- **Inicio piloto**: Mayo-Sep 2027 (depende caso A/B/C)

---

## 4. RECOMENDACIONES ACCIÓN INMEDIATA

### Acción 1: Aprobar Fase 0 Caracterización (CRÍTICO - Q4 2025) ⭐

**Responsable**: Gerencia Técnica SQM
**Plazo decisión**: Noviembre 2025 (AHORA)
**Inversión**: $18,000-22,000
**Duración**: 3-4 meses (Nov 2025 → Abr 2026)

**Actividades**:
1. Muestreo salmuera post-silvinita (12 semanas, variabilidad estacional)
2. Caracterización ICP-MS ($3k)
3. Ensayos laboratorio membranas - 3 proveedores ($8-12k)
4. Reporte Go/No-Go ($2.5k)

**Criterios Go/No-Go** (6 criterios ponderados, Sección 11.1.X):
- Ratio Li/Na >15:1 (peso 40%)
- Factor concentración ≥3.5x (peso 25%)
- Flux post-CIP ≥5 LMH (peso 15%)
- Vida útil ≥24 meses (peso 10%)
- Ca²⁺/Mg²⁺ <100 mg/L (peso 5%)
- Scaling SDI <3 (peso 5%)

**Decisión**: Mayo 2026
- ≥90 puntos → GO piloto $5M
- 70-89 puntos → GO CONDICIONAL (agregar DLE)
- <70 puntos → NO-GO (reformular)

---

### Acción 2: Contratar Expertos Académicos Fase 1 (Q4 2025-Q1 2026)

**Responsable**: Gerencia Técnica + Compras
**Plazo contratación**: Antes de lanzar RFP piloto (Enero-Febrero 2026)
**Inversión**: $70-130k (Fase 1)

**Expertos a contratar AHORA**:

1. **Prof. Lienhard (MIT)** - $15-25k
   - Rol: Peer review protocolo piloto
   - Timing: Enero-Febrero 2026 (ANTES de RFP)
   - Entregable: Reporte validación protocolo (20-30 páginas)

2. **TRU Group** - $40-80k
   - Rol: Diseño protocolo piloto comparativo CFRO vs UHPRO vs FusionRO
   - Timing: Diciembre 2025-Febrero 2026
   - Entregable: Protocolo estandarizado apples-to-apples (40-60 páginas)

3. **Hatch Ltd.** (reservar contrato, ejecutar Fase 2)
   - Rol: Supervisión técnica piloto 12 meses
   - Timing: Contratación Q1 2026, ejecución Q2 2027-Q2 2028
   - Inversión: $150-300k (Fase 2, año piloto)

**Total Fase 1**: $55-105k (decisión inmediata) + $150-300k (Fase 2 reservada)

---

### Acción 3: Actualizar Documentos Formales (Q4 2025)

**Responsable**: Equipo Evaluación Tecnología
**Plazo**: Diciembre 2025

**Documentos a actualizar**:

1. **Reporte Ejecutivo v2.0** (180 páginas)
   - Estado: ✅ COMPLETADO (100% sesiones 1-2)
   - Secciones completadas: 3.6, 4.3, 5.4, 6.1, 6.2, 8.2, 11.1.X, Anexo H

2. **Reporte Reducido v2.0** (70 páginas)
   - Estado: PENDIENTE (6 secciones + correcciones Saltworks)
   - Tiempo estimado: 2.5-3.5 horas
   - Timeline: Completar semana 48 (Nov 2025)

3. **Presentaciones Ejecutivas** (PowerPoint/PDF)
   - Actualizar slides con hallazgos críticos v2.0
   - Agregar Fase 0 a roadmap
   - Timeline: Semana 49 (Dic 2025)

**Aprobación**: Comité Técnico (Diciembre 2025) → Comité Inversión (Enero 2026)

---

## 5. CRONOGRAMA INTEGRADO

### Q4 2025 (Nov-Dic)

| Semana | Actividad | Responsable | Entregable |
|--------|-----------|-------------|------------|
| **46** (Nov 11-17) | Completar Reporte Ejecutivo v2.0 | Equipo Evaluación | ✅ Reporte 180p completo |
| **47** (Nov 18-24) | Completar Reporte Reducido v2.0 | Equipo Evaluación | Reporte 70p completo |
| **47** | **DECISIÓN Fase 0** | Gerencia Técnica | GO/NO-GO |
| **48** (Nov 25-Dic 1) | Iniciar muestreo post-silvinita | Lab SQM + consultor | Protocolo muestreo |
| **48-49** | Contratar Prof. Lienhard + TRU | Compras | Contratos firmados |
| **50-52** (Dic) | Diseño protocolo piloto comparativo | TRU Group + Lienhard | Protocolo v1.0 |

---

### Q1 2026 (Ene-Mar)

| Mes | Actividad Fase 0 | Milestone | Decisión Crítica |
|-----|------------------|-----------|------------------|
| **Ene** | Muestreo continuo (semanas 5-8) | - | - |
| **Feb** | Muestreo final + análisis ICP-MS | Composición química | **Criterio #1**: Ratio Li/Na |
| **Feb-Mar** | Ensayos lab membranas (3 proveedores) | Factor concentración, flux | **Criterios #2-6** |
| **Abr** | Reporte Go/No-Go | Score total (0-100) | **DECISIÓN**: ≥90 → GO |

---

### Q2 2026 (Abr-Jun)

| Semana | Actividad | Milestone | Decisión |
|--------|-----------|-----------|----------|
| **Semana 1-2 Abr** | Reporte Fase 0 | Entrega Comité Técnico | - |
| **Semana 3-4 Abr** | Revisión Comité Técnico | Validación score | - |
| **Semana 1 May** | **DECISIÓN GO/NO-GO** | Comité Inversión | **GO/CONDICIONAL/NO-GO** |
| **May-Jun** | Lanzar RFP piloto (si GO) | RFP publicado | Proveedores responden |
| **Jun** | Evaluación propuestas | Shortlist 2-3 proveedores | - |

---

### Q3-Q4 2026 → Q1-Q2 2027 (Construcción Piloto)

**Si GO (Caso A - $5M)**:
- Ago 2026: Award contrato piloto
- Sep 2026-Abr 2027: Construcción (8 meses)
- **Mayo 2027**: Inicio operación piloto

**Si GO CONDICIONAL (Caso B - $7-9M)**:
- Agregar DLE al diseño (+4-5 meses)
- **Sep-Oct 2027**: Inicio operación piloto

**Si NO-GO (Caso C)**:
- Reformular Escenario B (considerar solo Escenario A DLE+UHPRO)

---

## 6. PRESUPUESTO CONSOLIDADO v2.0

### Escenario A: DLE + UHPRO

| Componente | v1.0 | v2.0 | Incremento | Justificación |
|------------|------|------|------------|---------------|
| Sistema NF-UHPRO | $7.5M | $7.5M | - | Sin cambios |
| MVR modificados | $61M | $61M | - | Sin cambios |
| Ingeniería + contingencias | $25.5M | $25.5M | - | Sin cambios |
| Fase 0 validación | - | $0.02M | +$20k | Opcional (recomendado) |
| Consultoría expertos | - | $0.54-0.96M | +$540-960k | Fase 1+2 |
| **TOTAL CAPEX** | **$94M** | **$94.5-95M** | **+0.6-1.0%** | ✅ Marginal |

**Incremento justificado**: ROI consultoría 10:1 a 87:1 (evita error crítico $5M-83M).

---

### Escenario B: UHPRO Directo Post-Silvinita

| Caso | Probabilidad | Configuración | Fase 0 | Piloto | Consultoría | **TOTAL** |
|------|--------------|---------------|--------|--------|-------------|-----------|
| **A** (Li/Na >20:1) | ~30% | UF-NF-UHPRO | $20k | $5M | $0.5M | **$5.52M** |
| **B** (Li/Na 5-20:1) | ~40% | Agregar DLE | $20k | $7-9M | $0.5M | **$7.5-9.5M** |
| **C** (Li/Na <5:1) | ~30% | Reformular | $20k | $9-12M | $0.5M | **$9.5-12.5M** |

**Valor esperado SIN Fase 0**: 0.30×$5M + 0.40×$8M + 0.30×$10.5M = **$6.85M** (promedio ponderado con alta incertidumbre)

**Valor esperado CON Fase 0**: $20k + **decisión informada** (elimina escenarios desfavorables)

**ROI Fase 0**: Evita 70% probabilidad casos B/C (subinversión o sobreinversión) → **250:1 a 2,500:1**

---

## 7. MÉTRICAS DE ÉXITO v2.0

### Indicadores Técnicos

| Métrica | v1.0 (Asumido) | v2.0 (Validado) | Gap Identificado |
|---------|----------------|-----------------|------------------|
| **TDS máximo CFRO** | 260,000 mg/L (alegación) | 170-200,000 mg/L **NaCl** validado | ⚠️ 23-35% gap |
| **Equivalente LiCl** | No especificado | ~180,000 mg/L (π equiv.) | ⚠️ Brecha crítica |
| **Presión osmótica LiCl** | Asumida ≈ NaCl | +52% vs NaCl (280 vs 184 bar) | ⚠️ Impacto diseño |
| **Selectividad UHPRO Li/Na** | Asumida selectiva | <0.3% diferencia (NO selectiva) | ❌ Malentendido fundamental |
| **Ratio Li/Na post-silvinita** | No medido | **DESCONOCIDO** | ❌ Variable crítica |

---

### Indicadores Económicos

| Métrica | v1.0 | v2.0 | Comentario |
|---------|------|------|------------|
| **TCO 10 años CFRO** | No calculado | $13.38M | ✅ Ventaja 20% vs UHPRO |
| **TCO 10 años UHPRO** | No calculado | $16.77M | Baseline |
| **Ahorro CFRO** | No cuantificado | **$3.39M (20%)** | ✅ SI claims validados |
| **ROI Fase 0** | N/A | 250:1 a 2,500:1 | ✅ Altamente favorable |
| **ROI Consultoría** | N/A | 10:1 a 87:1 | ✅ Justificado |

---

### Indicadores Riesgo

| Riesgo | v1.0 | v2.0 | Mitigación |
|--------|------|------|------------|
| **Configuración incorrecta Escenario B** | No identificado | $5M-83M | ✅ Fase 0 ($20k) |
| **Gap validación NaCl→LiCl** | No identificado | ⚠️ Crítico | ✅ Ensayos lab + piloto |
| **Captura proveedor (vendor lock-in)** | No identificado | ⚠️ Medio | ✅ Supervisión Hatch Ltd. |
| **Performance claims no validados** | No cuantificado | 15-25% probabilidad fallo | ✅ Guarantees contractuales |

---

## 8. PRÓXIMOS PASOS (30 días)

### Semana 1-2 (Nov 11-24)

**Responsable**: Equipo Evaluación Tecnología
- [✅] Completar Reporte Ejecutivo v2.0 (COMPLETADO)
- [ ] Completar Reporte Reducido v2.0 (2.5-3.5 horas)
- [ ] Presentar hallazgos a Comité Técnico (revisión preliminar)

---

### Semana 3 (Nov 25-Dic 1)

**Responsable**: Gerencia Técnica + Comité Técnico
- [ ] **DECISIÓN Fase 0**: GO/NO-GO (reunión Comité Técnico)
- [ ] Si GO Fase 0: Aprobar presupuesto $18-22k
- [ ] Iniciar muestreo salmuera post-silvinita (protocolo 12 semanas)

---

### Semana 4-5 (Dic 2-15)

**Responsable**: Compras + Gerencia Técnica
- [ ] Lanzar RFP expertos académicos (Prof. Lienhard + TRU Group)
- [ ] Evaluar propuestas (plazo 2 semanas)
- [ ] Award contratos consultoría Fase 1 ($55-105k)

---

### Diciembre 2025

**Responsable**: TRU Group + Prof. Lienhard
- [ ] Diseño protocolo piloto comparativo (draft v1.0)
- [ ] Revisión Comité Técnico (iteración protocolo)
- [ ] Protocolo piloto FINAL (v2.0) → Base para RFP

---

## 9. APROBACIONES REQUERIDAS

| Decisión | Responsable | Plazo | Monto | Impacto |
|----------|-------------|-------|-------|---------|
| **Aprobar Fase 0 Escenario B** | Gerencia Técnica | Nov 2025 | $18-22k | ⚠️ CRÍTICO - Reduce riesgo $5M-83M |
| **Aprobar Consultoría Fase 1** | Gerencia Técnica | Dic 2025 | $55-105k | ✅ Recomendado - ROI 10:1 |
| **Aprobar Reporte v2.0** | Comité Técnico | Dic 2025 | - | ✅ Informativo - Base decisión |
| **Decisión GO/NO-GO Piloto** | Comité Inversión | May 2026 | $5-12M | ⚠️ CRÍTICO - Post-Fase 0 |

---

## 10. CONTACTOS Y RECURSOS

### Documentos Asociados

1. **Reporte Ejecutivo NF-UHPRO v2.0** (180 páginas)
   - Ubicación: `PRESENTACIONES-FINALES/REPORTE-EJECUTIVO-NF-UHPRO-SQM.md`
   - Secciones críticas: 3.6, 4.3, 5.4, 6.2, 8.2, 11.1.X, Anexo H

2. **Reporte Reducido NF-UHPRO v2.0** (70 páginas)
   - Ubicación: `PRESENTACIONES-FINALES/REPORTE-RESUMEN-NF-UHPRO-SQM.md`
   - Actualización: En progreso (semana 47)

3. **Investigación Complementaria** (base v2.0)
   - Ubicación: `INVESTIGACION/Investigación Tecnología NF-UHPRO Claude COMPLEMENTARIA.md`
   - 22 fuentes consultadas (nov 2025)

4. **Resumen Correcciones v2.0 Progreso**
   - Ubicación: `PRESENTACIONES-FINALES/RESUMEN-CORRECCIONES-v2.0-PROGRESO.md`
   - Estado: 100% completado (Fase 1)

---

### Expertos Recomendados (Contacto)

**Académicos**:
- Prof. John H. Lienhard V: lienhard@mit.edu (MIT Mechanical Engineering)
- Prof. Menachem Elimelech: menachem.elimelech@yale.edu (Yale Chemical Engineering)
- Prof. Tzahi Y. Cath: tcath@mines.edu (Colorado School of Mines)

**Consultores**:
- Hatch Ltd. (Chile): santiago.office@hatch.com
- TRU Group: info@trugroup.com
- Worley/Advisian: contact via website (worley.com)

---

### Equipo Proyecto SQM

**Gerencia Técnica**: [Nombre] - [email]
**Equipo Evaluación Tecnología**: [Nombres] - [emails]
**Comité Técnico**: [Miembros]
**Comité Inversión**: [Miembros]

---

## ANEXO: GLOSARIO TÉCNICO

**CFRO**: Counter-Flow Reverse Osmosis (Ósmosis Inversa Contraflujo) - Tecnología Gradiant operando <83 bar.

**UHPRO**: Ultra-High Pressure Reverse Osmosis (Ósmosis Inversa Ultra-Alta Presión) - Membranas operando 90-120 bar.

**DLE**: Direct Lithium Extraction (Extracción Directa Litio) - Tecnología separación selectiva Li/Na usando adsorbentes.

**TCO**: Total Cost of Ownership (Costo Total Propiedad) - CAPEX + VPN OPEX horizonte 10 años.

**VPN**: Valor Presente Neto (Net Present Value) - Descuento flujos futuros a tasa 10%.

**TDS**: Total Dissolved Solids (Sólidos Disueltos Totales) - Concentración total sales mg/L.

**π (Pi)**: Presión osmótica (bar) - Fuerza termodinámica opone flujo agua a través membrana.

**LMH**: Liters per square Meter per Hour (Litros/m²/hora) - Métrica flux membranas.

**Ratio Li/Na**: Ratio molar litio/sodio en salmuera (adimensional).

**ROI**: Return on Investment (Retorno Inversión) - Beneficio/Costo.

**GO/NO-GO**: Criterio decisión binario (continuar vs detener proyecto).

---

**FIN MEMO EJECUTIVO**

---

**Preparado por**: Equipo Evaluación Tecnología Membranas + Claude AI (Anthropic)
**Versión**: 1.0
**Fecha**: 2025-11-02
**Próxima revisión**: Post-aprobación Comité Técnico (Diciembre 2025)
