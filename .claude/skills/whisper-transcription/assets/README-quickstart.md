# Quick Start Guide - Whisper Transcription

System optimized for audio/video transcription with Whisper AI for Apple Silicon.

## Quick Start

### Transcribe Audio

```bash
./scripts/transcribir_optimizado.sh "audio.mp3" es
```

That's it! The script will:
- ✅ Detect optimal threads (CPU cores - 2)
- ✅ Use GPU acceleration (Metal)
- ✅ Generate `audio.txt` in the same directory
- ✅ Show statistics and first lines

---

## Performance (Apple M4)

| Audio Duration | Processing Time | Speed |
|----------------|-----------------|-------|
| 30 seconds | 14 seconds | ~2x real-time |
| 40 minutes | 8-12 minutes | ~5x real-time |

**5x faster** than Python Whisper (CPU-only)

---

## Requirements

### Installation

```bash
# Install whisper.cpp
brew install whisper-cpp

# Download medium model (1.4 GB)
curl -L -o ~/.whisper-models/ggml-medium.bin \
  "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-medium.bin"

# Make scripts executable
chmod +x scripts/*.sh
```

### Hardware

- Apple Silicon (M1/M2/M3/M4)
- macOS 11.0+
- 8 GB RAM minimum
- 2 GB free disk space

---

## Usage Examples

### Individual File

```bash
# Spanish (default)
./scripts/transcribir_optimizado.sh "clase.mp3" es

# English
./scripts/transcribir_optimizado.sh "lecture.mp3" en

# Auto-detect language
./scripts/transcribir_optimizado.sh "audio.mp3" auto
```

### Batch Processing

```bash
# All MP3 files in folder
./scripts/batch_transcribe.sh CLASES/*.mp3

# Multiple formats
./scripts/batch_transcribe.sh MATERIAL/*.{mp3,m4a,wav}
```

### Extract Audio from Video

```bash
./scripts/extract_audio.sh "video.mp4"
# Generates: video_audio.mp3

# Then transcribe
./scripts/transcribir_optimizado.sh "video_audio.mp3" es
```

### Generate Subtitles

```bash
# SRT format (standard subtitles)
whisper-cli -m ~/.whisper-models/ggml-medium.bin \
    -l es -t 8 -f "video.mp4" -of "video" -osrt

# WebVTT format (HTML5)
whisper-cli -m ~/.whisper-models/ggml-medium.bin \
    -l es -t 8 -f "video.mp4" -of "video" -ovtt
```

---

## Supported Formats

### Input

**Audio:** MP3, WAV, FLAC, OGG, M4A
**Video:** MP4 (extracts audio automatically)

### Output

**Text:** TXT (plain text)
**Subtitles:** SRT, VTT
**Data:** CSV, JSON

### Languages

**99+ languages supported**, including:
- Spanish (es) - Default, excellent with technical terminology
- English (en)
- Portuguese (pt)
- French (fr)
- German (de)
- Italian (it)
- Auto-detect (auto) - Slower but works with any language

---

## Available Models

| Model | Size | Speed | Quality | Use Case |
|-------|------|-------|---------|----------|
| tiny | 75 MB | ~10x | ⭐⭐ | Quick tests |
| base | 142 MB | ~7x | ⭐⭐⭐ | Simple transcriptions |
| small | 466 MB | ~4x | ⭐⭐⭐⭐ | Speed/quality balance |
| **medium** | **1.4 GB** | **~5x** | **⭐⭐⭐⭐⭐** | **✅ Recommended** |
| large | 2.9 GB | ~2x | ⭐⭐⭐⭐⭐ | Maximum accuracy |

**Current:** Medium model (optimal balance)

---

## Common Use Cases

### Academic Material

Transcribe financial lectures, classes, presentations:

```bash
./scripts/transcribir_optimizado.sh "finance_class.mp3" es
```

**Quality:** ⭐⭐⭐⭐⭐ Excellent with technical terminology
- Correctly captures: "WACC", "CAPM", "valoración", "flujos de caja"
- Company names: "Falabella", "Cencosud", "IPSA"
- Financial concepts: "correlación", "portafolio", "diversificación"

### Podcasts

```bash
./scripts/transcribir_optimizado.sh "podcast.mp3" es
```

### Conference Calls

```bash
./scripts/transcribir_optimizado.sh "earnings_call.m4a" en
```

### Video Subtitling

```bash
# Extract audio first
./scripts/extract_audio.sh "lecture_video.mp4"

# Generate subtitles
whisper-cli -m ~/.whisper-models/ggml-medium.bin \
    -l es -f "lecture_video_audio.mp3" -osrt
```

---

## Troubleshooting

### GPU Not Being Used

**Symptom:** Slow processing (~1x real-time)

**Solution:**
```bash
# Verify whisper-cli location
which whisper-cli
# Should be: /opt/homebrew/bin/whisper-cli

# Reinstall if needed
brew uninstall whisper-cpp
brew install whisper-cpp
```

### Model Not Found

**Symptom:** `error: failed to load model`

**Solution:**
```bash
# Verify model exists
ls -lh ~/.whisper-models/ggml-medium.bin

# Download if missing
mkdir -p ~/.whisper-models
curl -L -o ~/.whisper-models/ggml-medium.bin \
  "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-medium.bin"
```

### Permission Denied

**Symptom:** `permission denied: ./scripts/transcribir_optimizado.sh`

**Solution:**
```bash
chmod +x scripts/*.sh
```

### Poor Quality

**Symptom:** Many transcription errors

**Solutions:**
1. Use larger model (large-v3)
2. Add context prompt:
```bash
whisper-cli -m ~/.whisper-models/ggml-medium.bin \
    -l es -f "audio.mp3" -otxt \
    --prompt "Esta es una clase sobre finanzas corporativas, WACC, CAPM, valoración DCF."
```

---

## Output Example

After running transcription:

```
========================================
  WHISPER OPTIMIZADO PARA APPLE M4
========================================

📂 Archivo de entrada: clase.mp3
🌍 Idioma: es
🤖 Modelo: medium (optimizado)
💾 Salida: clase.txt

📊 Tamaño archivo: 48M
🔧 Usando: 8 threads de 10 disponibles

⏱️  Iniciando transcripción...

[Progress bar...]

✅ Transcripción completada exitosamente
⏱️  Tiempo total: 485s (8m 5s)
📄 Archivo generado: clase.txt
📊 Estadísticas: 770 líneas, 9071 palabras

📝 Primeras líneas:
──────────────────────────────────────
Un pequeño repaso. Voy a dejar la hojita en blanco aquí.
Voy poniendo las etapas que hay que hacer para poder crear un portafolio.
A ver, ¿se acuerdan de la clase pasada? Vimos en general que los activos
individualmente se comportan de acuerdo a sus retornos y sus riesgos.
──────────────────────────────────────
```

---

## Advanced Usage

For advanced parameters and options, see:
- **SKILL.md** - Complete skill documentation
- **references/technical-guide.md** - All parameters and configurations
- **references/troubleshooting.md** - Comprehensive problem solving
- **references/benchmarks.md** - Performance data and real examples

---

## Scripts Reference

### transcribir_optimizado.sh

Main transcription script with automatic optimization.

**Usage:**
```bash
./scripts/transcribir_optimizado.sh FILE LANGUAGE
```

**Parameters:**
- `FILE` - Audio/video file path
- `LANGUAGE` - es/en/auto (default: es)

### batch_transcribe.sh

Process multiple files automatically.

**Usage:**
```bash
./scripts/batch_transcribe.sh file1.mp3 file2.mp3 ...
./scripts/batch_transcribe.sh folder/*.mp3
```

**Features:**
- Processes files sequentially
- Creates detailed log file
- Shows progress and statistics
- Handles errors gracefully

### extract_audio.sh

Extract audio from video files.

**Usage:**
```bash
./scripts/extract_audio.sh video.mp4
```

**Output:**
- Format: MP3, 40 kbps, 32 kHz, Mono
- Optimized for Whisper transcription
- ~90% size reduction from video

---

## Tips

1. **Force language** - Don't use "auto" unless necessary (faster)
2. **Batch at night** - Process multiple files while sleeping
3. **Use context** - Add prompt for technical content
4. **Check GPU** - Verify Metal backend is active
5. **Medium model** - Best balance for most content

---

## Integration

This skill complements the financial analysis system:
- Transcribe finance lectures
- Process academic material
- Organize in topic folders
- Feed into analysis methodologies

---

## Support

For detailed help:
- Read SKILL.md for complete documentation
- Check references/ for technical guides
- Review benchmarks.md for real examples
- Open issue on GitHub if problems persist

---

**Version:** 1.0
**Last Updated:** November 2, 2025
**Optimized for:** Apple Silicon M1/M2/M3/M4
