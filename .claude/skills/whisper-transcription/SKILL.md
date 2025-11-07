---
name: whisper-transcription
description: Transcripción de audio/video optimizada para Apple Silicon usando Whisper AI. Soporta MP3, WAV, FLAC, OGG, M4A, MP4 en 99+ idiomas con aceleración GPU Metal (5x velocidad). Ideal para transcribir clases, presentaciones, podcasts y generar subtítulos.
version: 1.0
author: Luis Rivera González
created: 2025-11-02
category: audio-processing
tags: [whisper, transcription, apple-silicon, gpu, audio, video, subtitles, m4]
---

# Whisper Transcription - Apple Silicon Optimized

## Cuándo Usar Esta Skill

Esta skill debe ser activada cuando el usuario:
- Necesita transcribir archivos de audio o video
- Quiere generar subtítulos para videos educativos
- Tiene material académico en audio (clases, conferencias)
- Necesita procesar múltiples archivos de audio por lotes
- Busca transcripción rápida con aceleración GPU
- Requiere transcripción en español u otros idiomas
- Tiene Mac con Apple Silicon (M1/M2/M3/M4)

## Capacidades Principales

### Formatos Soportados

**Entrada:**
- Audio: MP3, WAV, FLAC, OGG, M4A
- Video: MP4 (extrae audio automáticamente)

**Salida:**
- TXT (texto plano, sin timestamps)
- SRT (subtítulos con timestamps)
- VTT (WebVTT para HTML5)
- CSV (datos tabulares)
- JSON (formato estructurado con metadatos)

### Performance

**Hardware Actual:** Apple Silicon M4
- Velocidad: ~5x tiempo real
- Ejemplo: 40 minutos de audio → 8-12 minutos de procesamiento
- Aceleración: GPU Metal + Unified Memory
- Mejora vs Python Whisper: 5x más rápido

### Idiomas

- Español (es) - Configuración por defecto, excelente con terminología técnica
- Inglés (en)
- 99+ idiomas adicionales
- Auto-detección (auto) - más lento pero funciona con cualquier idioma

### Calidad

- Modelo en uso: **ggml-medium.bin** (1.4 GB)
- Calidad: ⭐⭐⭐⭐⭐ (excelente)
- Balance óptimo velocidad/precisión
- Captura perfecta de terminología financiera/técnica en español

## Workflows Esenciales

### 1. Transcripción Individual

```bash
# Usar el script optimizado (recomendado)
./scripts/transcribir_optimizado.sh "clase.mp3" es

# Salida: clase.txt en el mismo directorio
```

### 2. Procesamiento por Lotes

```bash
# Todos los MP3 de una carpeta
./scripts/batch_transcribe.sh CLASES/*.mp3

# Múltiples formatos
./scripts/batch_transcribe.sh MATERIAL/*.{mp3,m4a,wav}
```

### 3. Generar Subtítulos

```bash
# Subtítulos SRT (formato estándar)
whisper-cli -m ~/.whisper-models/ggml-medium.bin \
    -l es -t 8 -f "video.mp4" -of "video" -osrt

# Subtítulos WebVTT (HTML5)
whisper-cli -m ~/.whisper-models/ggml-medium.bin \
    -l es -t 8 -f "video.mp4" -of "video" -ovtt
```

### 4. Extraer Audio de Video

```bash
./scripts/extract_audio.sh "CLASE.mp4"
# Genera: CLASE_audio.mp3 optimizado (40kbps, 32kHz, mono)
```

### 5. Transcripción con Contexto

```bash
whisper-cli -m ~/.whisper-models/ggml-medium.bin \
    -l es -t 8 -f "clase_finanzas.mp3" -otxt \
    --prompt "Esta es una clase de finanzas corporativas sobre WACC, CAPM, Beta, valoración DCF."
```

## Requisitos

### Software Necesario

1. **whisper.cpp** (v1.8.2+)
```bash
brew install whisper-cpp
```

2. **Modelo GGML Medium** (1.4 GB)
```bash
mkdir -p ~/.whisper-models
curl -L -o ~/.whisper-models/ggml-medium.bin \
  "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-medium.bin"
```

3. **Permisos de ejecución**
```bash
chmod +x scripts/*.sh
```

### Hardware

**Mínimo:**
- Apple Silicon (M1 o superior)
- 8 GB RAM
- 2 GB espacio libre

**Óptimo:**
- Apple Silicon M4
- 16+ GB RAM
- 5 GB espacio libre

## Estructura de Archivos

```
whisper-transcription/
├── SKILL.md                           (este archivo)
├── scripts/
│   ├── transcribir_optimizado.sh      Script principal optimizado
│   ├── batch_transcribe.sh            Procesamiento por lotes
│   └── extract_audio.sh               Extracción de audio de video
├── references/
│   ├── technical-guide.md             Guía técnica completa
│   ├── troubleshooting.md             Solución de problemas
│   └── benchmarks.md                  Performance y ejemplos reales
└── assets/
    └── README-quickstart.md           Guía rápida para usuarios
```

## Troubleshooting Rápido

**GPU no detectada:**
```bash
which whisper-cli  # Debe ser /opt/homebrew/bin/whisper-cli
brew uninstall whisper-cpp && brew install whisper-cpp
```

**Modelo no encontrado:**
```bash
ls -lh ~/.whisper-models/ggml-medium.bin
curl -L -o ~/.whisper-models/ggml-medium.bin \
  "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-medium.bin"
```

**Permisos denegados:**
```bash
chmod +x scripts/*.sh
```

Para troubleshooting completo, ver: `references/troubleshooting.md`

## Referencias Extendidas

- **references/technical-guide.md** - Instalación completa, parámetros avanzados
- **references/benchmarks.md** - Performance detallado, casos de uso reales
- **references/troubleshooting.md** - Solución exhaustiva de problemas
- **assets/README-quickstart.md** - Guía rápida para empezar

## Notas Importantes

1. **SIEMPRE usar whisper-cli de Homebrew** - Asegura aceleración GPU Metal
2. **Modelo medium es el recomendado** - Balance óptimo velocidad/calidad
3. **Español por defecto** - Excelente con terminología técnica
4. **Threads óptimos = cores - 2** - Deja recursos para el sistema
5. **GPU Metal es clave** - 5x más rápido que CPU

---

**Versión:** 1.0
**Última actualización:** 02 de Noviembre 2025
**Autor:** Luis Rivera González
**Hardware optimizado:** Apple Silicon M1/M2/M3/M4
