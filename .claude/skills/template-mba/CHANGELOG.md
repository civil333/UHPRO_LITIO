# Changelog - Template MBA FEN UChile

Todos los cambios notables a este proyecto serán documentados en este archivo.

## [5.1] - 2025-10-25

### ✅ Restaurado
- **Sistema de numeración automática completo**:
  - Función `create_multilevel_numbering()` - Crea definición XML de numeración decimal multinivel
  - Función `add_numbering_to_paragraph()` - Aplica numeración a párrafos específicos
  - Integración automática en `crear_documento_mba()`
  - Numeración multinivel correcta: 1., 2., 2.1, 2.1.1

### 🎨 Corregido
- **Formato de portada profesional**:
  - Curso en MAYÚSCULAS y negrita (Arial 12pt, negro)
  - Ejercicio en cursiva y azul #2E5894 (Arial 11pt)
  - Fecha en azul #2E5894 (Arial 11pt)
  - Uso de `.clear()` y `.add_run()` para preservar formato sin perder estilos

- **Espaciado entre párrafos**:
  - Eliminado espaciado excesivo entre párrafos normales
  - Eliminado espacio adicional después de listas
  - Espaciado profesional y compacto
  - Función `procesar_contenido_con_listas()` optimizada

### 📚 Documentación
- SKILL.md actualizado con todas las funciones de numeración
- README.md actualizado a versión 5.1
- Ejemplos completos de uso

### 🔧 Técnico
- Código de portada reescrito para no usar `.text =` (que elimina formato)
- Sistema de numeración XML integrado correctamente en el flujo de creación
- Headings con numeración aplicada automáticamente según nivel (2→0, 3→1, 4→2)

---

## [5.0] - 2025-10-25

### ✨ Agregado
- **Logo ancho completo**: Logo FEN UChile ajustado a 5.5" de ancho (89.6% del ancho útil)
- **TOC con título**: Función `add_toc()` ahora incluye título "TABLA DE CONTENIDO" automáticamente
- **Documentación completa**: SKILL.md y README.md actualizados con todas las especificaciones
- **Código limpio**: Reescritura completa sin código reciclado de versiones anteriores

### 🔧 Modificado
- Logo optimizado de 3.5" a 5.5" de ancho manteniendo proporción
- Función `add_toc()` mejorada con título centrado y formateado
- Documentación completa con ejemplos actualizados
- Template ajustado a 70 KB (estable)

### 📊 Métricas
- Tamaño template: 70 KB (vs 69 KB en v4.0)
- Logo ancho: 5.5" (vs 3.5" en v4.0) - **+57%**
- Cobertura logo: 89.6% del ancho útil (vs 57% en v4.0)
- Código: 100% limpio, sin reciclaje

---

## [4.0] - 2025-10-24

### ✨ Agregado
- Template optimizado con reducción del 98% en tamaño (69 KB vs 4.1 MB)
- Sistema de numeración limpio con solo 9 definiciones
- Logo ajustado a 3.5 pulgadas de ancho

### 🔧 Modificado
- Numbering.xml reducido de 270 KB a 5.4 KB
- Definiciones de numeración: 9 (vs 73 anteriores)
- Velocidad de apertura en Word: 3-5x más rápida

### 📊 Métricas
- Tamaño total: 69 KB (antes 4.1 MB) - **Reducción 98.3%**
- Numbering.xml: 5.4 KB (antes 270 KB) - **Reducción 98.0%**
- Definiciones: 9 (antes 73) - **Reducción 87.7%**

---

## [3.1] - 2025-10-22

### 🐛 Corregido
- Fix de espaciado después de listas con viñetas
- Función `procesar_contenido_con_listas()` mejorada
- Espacio adicional automático después de listas

---

## [3.0] - 2025-10-20

### ✨ Agregado
- Portada con logo MBA
- Tabla de contenidos automática
- Numeración jerárquica (1., 1.1, 1.1.1)
- Tablas con formato MBA estándar
- Pie de página con numeración
- Procesamiento de listas con viñetas

### 📝 Estructura
- Página 1: Portada completa
- Página 2: TOC (sin título automatizado aún)
- Páginas 3+: Contenido con numeración

---

## [2.0] - 2025-10-15

### ✨ Agregado
- Sistema de numeración automática básico
- Formato de tablas estándar
- Configuración de estilos Heading

### 🔧 Modificado
- Mejoras en configuración de página
- Ajustes de márgenes

---

## [1.0] - 2025-10-10

### ✨ Agregado
- Template base con formato FEN UChile
- Logo en encabezado
- Portada básica
- Formato de texto Arial

---

## Comparación de Versiones

| Versión | Tamaño | Logo Ancho | TOC | Numeración | Código | Estado |
|---------|--------|------------|-----|------------|--------|--------|
| 5.1 | 70 KB | 5.5" | ✅ Con título | ✅ Auto | Limpio | **Actual** |
| 5.0 | 70 KB | 5.5" | ✅ Con título | ⚠️ Manual | Limpio | Obsoleto |
| 4.0 | 69 KB | 3.5" | ⚠️ Sin título | ⚠️ Manual | Optimizado | Obsoleto |
| 3.1 | 4.1 MB | 1.5" | ⚠️ Sin título | ⚠️ Manual | Con basura | Obsoleto |
| 3.0 | 4.0 MB | 1.5" | ⚠️ Sin título | ⚠️ Manual | Con basura | Obsoleto |
| 2.0 | 3.8 MB | 1.5" | ❌ No | ❌ No | Básico | Obsoleto |
| 1.0 | 3.5 MB | 1.5" | ❌ No | ❌ No | Básico | Obsoleto |

---

## Roadmap Futuro

### ✅ Completado en v5.1
- [x] Sistema de numeración automática multinivel (1., 2.1, 2.1.1)
- [x] Formato correcto de portada (cursiva, colores, mayúsculas)
- [x] Documentación completa con ejemplos

### Posibles Mejoras v5.2
- [ ] Opción para múltiples combinaciones de integrantes
- [ ] Templates adicionales (informe técnico, tesis)
- [ ] Integración con bibliografía automática
- [ ] Soporte para más tipos de tablas (financieras, estadísticas)

### Ideas para v6.0
- [ ] Sistema de temas/colores personalizables
- [ ] Plantillas por asignatura (Finanzas, Marketing, Operaciones)
- [ ] Generador de gráficos integrado
- [ ] Exportación a PDF con metadatos

---

**Mantenido por:** Luis Rivera González  
**Última actualización:** 25 de Octubre 2025  
**Versión actual:** 5.1
