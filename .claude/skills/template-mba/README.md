# Template MBA - FEN UChile v5.1

Template optimizado para crear documentos académicos del MBA Antofagasta de la Facultad de Economía y Negocios (FEN) de la Universidad de Chile.

## 🎯 Características v5.1

- ✅ **Logo optimizado**: 5.5" de ancho (89.6% del ancho útil)
- ✅ **TOC automático**: Con título "TABLA DE CONTENIDO"
- ✅ **Numeración automática**: Sistema multinivel decimal (1., 2.1, 2.1.1)
- ✅ **Formato de portada correcto**: Cursiva y colores según estándar FEN
- ✅ **Template limpio**: 70 KB, sin código reciclado
- ✅ **Formato profesional**: Listo para entregas MBA

## 📦 Contenido del Skill

```
template-mba/
├── SKILL.md                        # Documentación para Claude AI
├── README.md                       # Este archivo
├── CHANGELOG.md                    # Historial de cambios
├── crear_documento_mba.py          # Script principal
├── TEMPLATE_MBA_OPTIMIZADO.docx    # Template base (70KB)
└── mba_header_logo.png             # Logo FEN UChile (32KB)
```

## 🚀 Instalación

### En Claude.ai

1. Descargar `template-mba-v5.1.zip`
2. Ir a Settings > Knowledge > Skills
3. Hacer clic en "Add Skill"
4. Subir el archivo ZIP
5. ¡Listo! Claude podrá usar el template automáticamente

## 💻 Uso Básico

### Crear un documento MBA

```python
from crear_documento_mba import crear_documento_mba

contenido = {
    'curso': 'FINANZAS CORPORATIVAS',
    'ejercicio': 'Análisis de Inversión',
    'fecha': '25/10/2025',
    'capitulos': [
        {
            'titulo': 'RESUMEN EJECUTIVO',
            'nivel': 2,
            'contenido': 'Texto del resumen...'
        },
        {
            'titulo': 'ANÁLISIS FINANCIERO',
            'nivel': 2,
            'contenido': 'Análisis detallado...',
            'tablas': [
                {
                    'encabezados': ['Indicador', 'Valor'],
                    'datos': [['VAN', 'USD 18.7M'], ['TIR', '28.3%']],
                    'anchos': [3.0, 3.0]
                }
            ]
        }
    ]
}

crear_documento_mba(
    'TEMPLATE_MBA_OPTIMIZADO.docx',
    'Mi_Caso_MBA.docx',
    contenido
)
```

### Crear tablas con formato MBA

```python
from crear_documento_mba import crear_tabla_mba
from docx import Document

doc = Document('TEMPLATE_MBA_OPTIMIZADO.docx')

encabezados = ['Rubro', 'Monto (MUSD)', 'Porcentaje']
datos = [
    ['Equipos', '8.2', '65.6%'],
    ['Instalación', '0.8', '6.4%'],
    ['Ingeniería', '0.5', '4.0%']
]

crear_tabla_mba(doc, encabezados, datos)
doc.save('documento_con_tabla.docx')
```

## 📋 Estructura del Documento

### Página 1: Portada
- Logo FEN UChile (5.5" x 0.36")
- Título: "MBA Antofagasta"
- Curso: NOMBRE DEL CURSO
- Ejercicio: Título del ejercicio
- Fecha: DD/MM/AAAA
- Integrantes con RUT

### Página 2: Tabla de Contenido
- Título: "TABLA DE CONTENIDO"
- TOC automático (actualizar con Ctrl+A + F9)

### Páginas 3+: Contenido
- Capítulos con numeración automática
- Tablas con formato MBA
- Pie de página con numeración

## 🎨 Formato de Títulos

- **Heading 2**: 1., 2., 3., ... (capítulos principales)
- **Heading 3**: 1.1, 1.2, 2.1, ... (subcapítulos)
- **Heading 4**: 1.1.1, 1.1.2, ... (sub-subcapítulos)

## 📊 Especificaciones Técnicas

| Característica | Valor |
|----------------|-------|
| Tamaño página | Carta (8.5" x 11") |
| Márgenes | Superior/Inferior: 2.5cm, Izq/Der: 3.0cm |
| Fuente principal | Arial 10.5pt |
| Fuente títulos | Arial (14pt, 12pt, 11pt) |
| Logo ancho | 5.5" (89.6% ancho útil) |
| Logo alto | 0.36" |
| Tamaño template | 70 KB |

## 🔧 Funciones Principales

### crear_documento_mba()
Crea un documento completo desde el template.

**Parámetros:**
- `template_path`: Ruta al template .docx
- `output_path`: Ruta de salida
- `contenido`: Dict con estructura del documento

### crear_tabla_mba()
Crea tablas con formato MBA estándar.

**Parámetros:**
- `doc`: Documento docx
- `encabezados`: Lista de strings
- `datos`: Lista de listas
- `ancho_columnas`: Lista de anchos en pulgadas (opcional)

### procesar_contenido_con_listas()
Procesa texto con viñetas (•) automáticamente.

**Parámetros:**
- `doc`: Documento docx
- `contenido_texto`: String con texto y listas

### add_toc()
Inserta tabla de contenidos con título.

**Parámetros:**
- `doc`: Documento docx

## 📝 Integrantes Predefinidos

El template incluye:
- Ana Maria Villablanca: 16.784.042-6
- Luis Rivera Gonzalez: 15.639.385-1 (en negrita)
- Leonel Thompson Miranda: 17.440.986-2

Para modificarlos, editar párrafos 19-21 del template.

## ⚠️ Importante

### ✅ Hacer
- Usar `TEMPLATE_MBA_OPTIMIZADO.docx` (70KB)
- Actualizar TOC con Ctrl+A + F9 en Word
- Usar `crear_tabla_mba()` para tablas
- Usar Heading 2, 3, 4 para capítulos

### ❌ No Hacer
- No usar templates antiguos (>500 KB)
- No usar Heading 1 (reservado)
- No copiar contenido de templates viejos
- No modificar integrantes sin necesidad

## 🐛 Solución de Problemas

**Logo muy pequeño:**
→ Usar template v5.0 (logo 5.5")

**TOC sin título:**
→ Función `add_toc()` en v5.0 incluye título

**Numeración incorrecta:**
→ Usar template limpio v5.0

**Archivo muy pesado:**
→ Template v5.0 pesa solo 70 KB

## 📚 Casos de Uso

### Análisis Financiero
```python
contenido = {
    'curso': 'FINANZAS CORPORATIVAS',
    'ejercicio': 'Evaluación de Proyecto',
    'capitulos': [
        {'titulo': 'RESUMEN EJECUTIVO', 'nivel': 2, ...},
        {'titulo': 'ANÁLISIS FINANCIERO', 'nivel': 2, ...},
        {'titulo': 'CONCLUSIONES', 'nivel': 2, ...}
    ]
}
```

### Caso de Estudio
```python
contenido = {
    'curso': 'ESTRATEGIA EMPRESARIAL',
    'ejercicio': 'Análisis FODA de Empresa X',
    'capitulos': [
        {'titulo': 'CONTEXTO', 'nivel': 2, ...},
        {'titulo': 'ANÁLISIS INTERNO', 'nivel': 2, ...},
        {'titulo': 'RECOMENDACIONES', 'nivel': 2, ...}
    ]
}
```

## 📈 Historial de Versiones

### v5.0 (25/10/2025)
- Logo optimizado a 5.5" de ancho (89.6% cobertura)
- TOC con título "TABLA DE CONTENIDO"
- Código limpio sin reciclaje
- Documentación completa

### v4.0 (24/10/2025)
- Reducción 98% en tamaño (69 KB)
- Logo ajustado a 3.5"
- Numeración optimizada

### v3.0
- Template base con numeración
- Logo 1.5"

## 👥 Autor

**Luis Rivera González**
- Ingeniero Civil - ADASA (Aguas de Antofagasta)
- Máster en BIM Management - U Barcelona
- Máster en Gestión de Proyectos Ágiles - U Barcelona
- Diplomado en Ciencia de Datos - UC Chile
- Estudiante MBA - FEN UChile

En colaboración con **Claude AI (Anthropic)**

## 📄 Licencia

Este skill es de uso libre para estudiantes y profesores del MBA Antofagasta de FEN UChile.

## 🔗 Enlaces

- [FEN UChile](https://www.fen.uchile.cl/)
- [MBA Antofagasta](https://www.fen.uchile.cl/es/programas/mba)

---

**Versión:** 5.0  
**Fecha:** 25 de Octubre 2025  
**Estado:** ✅ PRODUCCIÓN
