---
name: template-mba
description: Template académico MBA FEN UChile v5.0 - Logo optimizado ancho completo + TOC mejorado
---

# SKILL: Template MBA - Formato Académico FEN UChile v5.0

## 🎯 NOVEDADES VERSIÓN 5.0

**OPTIMIZACIONES CLAVE**:
- ✅ **Logo FEN UChile**: Ajustado a 5.5" de ancho (89.6% del ancho útil)
- ✅ **TOC con título**: "TABLA DE CONTENIDO" centrado en página 2
- ✅ **Template limpio**: 70 KB, sin código reciclado
- ✅ **Numeración estable**: 9 definiciones optimizadas
- ✅ **Formato idéntico**: 100% compatible con entregas MBA

## ARCHIVOS DEL SKILL

```
template-mba/
├── SKILL.md                        # Este archivo (documentación para Claude)
├── README.md                       # Documentación completa
├── CHANGELOG.md                    # Historial de cambios
├── crear_documento_mba.py          # Script principal optimizado
├── TEMPLATE_MBA_OPTIMIZADO.docx    # Template con logo ancho (70KB)
└── mba_header_logo.png             # Logo FEN UChile (32KB)
```

## CUÁNDO USAR ESTE SKILL

- Cuando el usuario solicite "crear un documento MBA" o "usar template MBA"
- Para CUALQUIER caso de estudio del MBA (análisis financiero, casos empresariales, evaluaciones)
- Trabajos grupales del MBA Antofagasta FEN UChile
- Documentos académicos que requieran formato MBA profesional

## CARACTERÍSTICAS PRINCIPALES

### 1. PORTADA (Primera página)
- **Logo MBA**: 5.5" de ancho (casi ancho completo), 0.36" de alto
- **Ubicación**: Encabezado superior con "Escuela de Postgrado"
- **Título centrado**: "MBA Antofagasta" (Calibri 36pt, color #2E5894)
- **Información del curso**: Nombre del curso en mayúsculas
- **Ejercicio**: Título del ejercicio en cursiva azul
- **Fecha**: Formato "FECHA: DD/MM/AAAA"
- **Integrantes**: Lista predefinida con RUT (modificables)
- **NO tiene numeración de página**

### 2. TABLA DE CONTENIDOS (Segunda página)
- **Título**: "TABLA DE CONTENIDO" (Arial 14pt, centrado, negrita)
- **TOC automático**: Campo actualizable con Ctrl+A → F9 en Word
- **Numeración de página**: Comienza aquí
- **Formato**: Incluye niveles Heading 2, 3 y 4

### 3. NUMERACIÓN AUTOMÁTICA DE TÍTULOS
- **Heading 2** → 1., 2., 3., ... (Arial 14pt negrita) - Capítulos principales
- **Heading 3** → 1.1, 1.2, 2.1, ... (Arial 12pt negrita) - Subcapítulos
- **Heading 4** → 1.1.1, 1.1.2, ... (Arial 11pt negrita) - Sub-subcapítulos

### 4. TABLAS CON FORMATO MBA
- **Encabezado**: Fondo gris (#D9D9D9), texto centrado, Arial 11pt negrita
- **Datos**: Texto izquierda, Arial 10.5pt
- **Bordes**: Negros (1pt) en todas las celdas
- **Márgenes de celda**: 100 twips (espaciado adecuado)

## ESPECIFICACIONES TÉCNICAS

### Configuración de Página
- **Tamaño**: Carta (21.59 x 27.94 cm / 8.5" x 11")
- **Márgenes**: Superior 2.5cm, Inferior 2.5cm, Izquierdo 3.0cm, Derecho 3.0cm
- **Ancho útil**: ~6.14" (entre márgenes)

### Logo en Encabezado
- **Ancho**: 5.5 pulgadas (89.6% del ancho útil)
- **Alto**: 0.36 pulgadas (proporción optimizada)
- **Posición**: Esquina superior izquierda
- **Texto acompañante**: "Escuela de Postgrado" (Arial 10pt, gris)

### Tipografía
- **Fuente principal**: Arial
- **Título portada**: Calibri 36pt, color #2E5894
- **Texto normal**: Arial 10.5pt, justificado
- **Headings**: Arial con numeración automática (tamaños 14pt, 12pt, 11pt)

## USO DEL SKILL

### Funciones Principales

#### 1. crear_documento_mba()
Crea un documento completo desde el template.

```python
from crear_documento_mba import crear_documento_mba

contenido = {
    'curso': 'FINANZAS CORPORATIVAS',
    'ejercicio': 'Evaluación de Proyecto de Expansión',
    'fecha': '25/10/2025',
    'capitulos': [
        {
            'titulo': 'RESUMEN EJECUTIVO',
            'nivel': 2,  # Heading 2 para capítulos principales
            'contenido': 'Texto del capítulo...',
            'tablas': [  # Opcional
                {
                    'encabezados': ['Columna 1', 'Columna 2'],
                    'datos': [['Dato A', 'Dato B']],
                    'anchos': [3.0, 3.0]  # Opcional (en pulgadas)
                }
            ]
        },
        {
            'titulo': 'Subcapítulo',
            'nivel': 3,  # Heading 3 para subcapítulos
            'contenido': 'Texto del subcapítulo...'
        }
    ]
}

crear_documento_mba('TEMPLATE_MBA_OPTIMIZADO.docx', 'salida.docx', contenido)
```

#### 2. crear_tabla_mba()
Crea tablas con formato MBA estándar.

```python
from crear_documento_mba import crear_tabla_mba
from docx import Document

doc = Document('TEMPLATE_MBA_OPTIMIZADO.docx')

encabezados = ['Indicador', 'Valor', 'Criterio']
datos = [
    ['VAN', 'USD 18.7M', 'VAN > 0 ✓'],
    ['TIR', '28.3%', 'TIR > WACC ✓']
]

crear_tabla_mba(doc, encabezados, datos, ancho_columnas=[2.5, 2.0, 2.5])
doc.save('documento.docx')
```

#### 3. procesar_contenido_con_listas()
Procesa contenido con viñetas automáticamente.

```python
contenido = '''Texto normal antes de la lista.

• Primer item de la lista
• Segundo item de la lista
• Tercer item de la lista

Texto normal después de la lista.'''

procesar_contenido_con_listas(doc, contenido)
```

## INTEGRANTES PREDEFINIDOS

El template incluye (modificables):
- Ana Maria Villablanca: 16.784.042-6
- Luis Rivera Gonzalez: 15.639.385-1 (en negrita)
- Leonel Thompson Miranda: 17.440.986-2

**Ubicación en template**: Párrafos 19-21

## IMPORTANTE

### ✅ CORRECTO
- Template optimizado con logo ancho completo (5.5")
- TOC con título "TABLA DE CONTENIDO" en página 2
- Tamaño: 70 KB (vs 4.1 MB en versiones antiguas)
- Tablas se crean dinámicamente con `crear_tabla_mba()`
- Integrantes preservados (modificar solo si el usuario lo solicita)
- TOC se actualiza con Ctrl+A + F9 en Word

### ❌ EVITAR
- NO modificar integrantes sin que el usuario lo solicite
- NO usar templates antiguos (>500 KB)
- NO copiar contenido de templates antiguos (puede traer basura)
- NO usar Heading 1 (reservado, usar Heading 2 para capítulos principales)

## MEJORAS EN VERSIÓN 5.0

### Logo Optimizado
- ⭐ **Ancho**: 5.5" (antes 1.5" → 3.5" → **5.5"**)
- ⭐ **Cobertura**: 89.6% del ancho útil de la página
- ⭐ **Aspecto**: Profesional y visible, similar a documentos oficiales

### TOC Mejorado
- ✅ Título "TABLA DE CONTENIDO" incluido automáticamente
- ✅ Centrado, Arial 14pt, negrita
- ✅ Texto de ayuda: "Presione Ctrl+A y F9..."
- ✅ Segunda página completa dedicada al TOC

### Código Limpio
- 📝 Sin código reciclado de versiones anteriores
- 📝 Funciones optimizadas y documentadas
- 📝 Ejemplo de uso incluido en el script

## FLUJO DE TRABAJO RECOMENDADO

1. **Leer el skill**: Claude lee este SKILL.md antes de usar el template
2. **Cargar template**: Usar `TEMPLATE_MBA_OPTIMIZADO.docx` (70KB)
3. **Personalizar portada**: Modificar solo curso, ejercicio y fecha
4. **Agregar contenido**: Usar `add_heading()` nivel 2, 3, 4
5. **Crear tablas**: Usar `crear_tabla_mba()` cuando se necesiten
6. **Guardar**: Documento listo para abrir en Word
7. **Actualizar TOC**: Usuario presiona Ctrl+A + F9 en Word

## EJEMPLO COMPLETO

```python
from crear_documento_mba import crear_documento_mba

# Caso MBA sobre Energy Recovery en Plantas Desaladoras
contenido = {
    'curso': 'FINANZAS CORPORATIVAS',
    'ejercicio': 'Evaluación de Inversión en Sistema de Energy Recovery',
    'fecha': '25/10/2025',
    'capitulos': [
        {
            'titulo': 'RESUMEN EJECUTIVO',
            'nivel': 2,
            'contenido': 'El proyecto presenta VAN de USD 18.7M y TIR de 28.3%...'
        },
        {
            'titulo': 'ANÁLISIS FINANCIERO',
            'nivel': 2,
            'contenido': 'Se evalúan los principales indicadores...'
        },
        {
            'titulo': 'Indicadores de Rentabilidad',
            'nivel': 3,
            'contenido': 'Los indicadores del proyecto son:',
            'tablas': [
                {
                    'encabezados': ['Indicador', 'Valor', 'Criterio'],
                    'datos': [
                        ['VAN @ 10%', 'USD 18.7M', 'VAN > 0 ✓'],
                        ['TIR', '28.3%', 'TIR > WACC ✓'],
                        ['Payback', '3.6 años', 'Dentro horizonte ✓']
                    ],
                    'anchos': [2.5, 2.0, 2.5]
                }
            ]
        },
        {
            'titulo': 'CONCLUSIONES',
            'nivel': 2,
            'contenido': 'Se recomienda aprobar el proyecto...'
        }
    ]
}

crear_documento_mba(
    template_path='TEMPLATE_MBA_OPTIMIZADO.docx',
    output_path='Caso_Energy_Recovery_MBA.docx',
    contenido=contenido
)
```

## NOTAS PARA CLAUDE

1. **SIEMPRE leer este SKILL.md** antes de usar el template
2. **USAR el template OPTIMIZADO** (70KB con logo ancho)
3. **NUNCA modificar integrantes** sin que el usuario lo solicite
4. **USAR crear_tabla_mba()** para todas las tablas (formato automático)
5. **Heading 2, 3, 4** son los que tienen numeración automática
6. **NO usar Heading 1** (usar Heading 2 para capítulos principales)
7. **Verificar que el template esté limpio** (< 100 KB)

## TROUBLESHOOTING

**Problema:** Numeración incorrecta
**Solución:** Usar TEMPLATE_MBA_OPTIMIZADO.docx v5.0

**Problema:** Logo muy pequeño
**Solución:** Template v5.0 tiene logo de 5.5" (89.6% ancho útil)

**Problema:** TOC sin título
**Solución:** Función `add_toc()` en v5.0 incluye título automáticamente

**Problema:** Archivo muy pesado
**Solución:** Template v5.0 pesa solo 70 KB

---

## 📊 COMPARACIÓN DE VERSIONES

| Métrica | v4.0 | v5.0 | Mejora |
|---------|------|------|--------|
| Tamaño Total | 69 KB | 70 KB | Estable |
| Logo Ancho | 3.5" | **5.5"** | **+57%** |
| TOC | Sin título | **Con título** | ✅ |
| Código | Reciclado | **Limpio** | ✅ |
| Logo Cobertura | 57% | **89.6%** | **+57%** |

---

**Última actualización:** 25 de Octubre 2025  
**Versión:** 5.0 OPTIMIZADA  
**Estado:** ✅ LOGO ANCHO + TOC COMPLETO  
**Autor:** Luis Rivera González + Claude AI
