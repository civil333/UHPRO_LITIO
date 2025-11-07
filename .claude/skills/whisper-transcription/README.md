# Whisper Transcription - Apple Silicon Optimized

Professional audio/video transcription skill using Whisper AI with GPU acceleration for Apple Silicon.

## Overview

This skill provides optimized transcription capabilities for macOS with Apple Silicon (M1/M2/M3/M4), achieving **5x real-time speed** through Metal GPU acceleration.

### Key Features

- ✅ **5x faster** than CPU-only Python Whisper
- ✅ **GPU acceleration** via Metal Performance Shaders
- ✅ **Multi-format support** - MP3, WAV, FLAC, OGG, M4A, MP4
- ✅ **99+ languages** - Excellent with Spanish technical terminology
- ✅ **Multiple outputs** - TXT, SRT, VTT, CSV, JSON
- ✅ **Batch processing** - Handle multiple files automatically
- ✅ **Production-ready** - Used successfully for academic content

## Quick Start

```bash
# Transcribe audio file
./scripts/transcribir_optimizado.sh "audio.mp3" es

# Batch process multiple files
./scripts/batch_transcribe.sh folder/*.mp3

# Extract audio from video
./scripts/extract_audio.sh "video.mp4"

# Generate subtitles
whisper-cli -m ~/.whisper-models/ggml-medium.bin \
    -l es -f "video.mp4" -osrt
```

## Installation

### Prerequisites

- macOS 11.0 (Big Sur) or later
- Apple Silicon (M1/M2/M3/M4)
- Homebrew package manager

### Setup

```bash
# 1. Install whisper.cpp
brew install whisper-cpp

# 2. Download medium model (1.4 GB)
mkdir -p ~/.whisper-models
curl -L -o ~/.whisper-models/ggml-medium.bin \
  "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-medium.bin"

# 3. Make scripts executable
chmod +x scripts/*.sh

# 4. Verify installation
which whisper-cli  # Should be: /opt/homebrew/bin/whisper-cli
ls -lh ~/.whisper-models/ggml-medium.bin  # Should be: 1.4G
```

## Performance

### Benchmark (Apple M4)

| Audio Duration | Processing Time | Speed Ratio |
|----------------|-----------------|-------------|
| 30 seconds | 14 seconds | ~2x real-time |
| 40 minutes | 8-12 minutes | ~5x real-time |
| 60 minutes | 12-15 minutes | ~5x real-time |

### Comparison

| Feature | Python Whisper | whisper.cpp | Improvement |
|---------|----------------|-------------|-------------|
| Speed | ~1x real-time | ~5x real-time | **5x faster** |
| Hardware | CPU only | GPU + Metal | GPU acceleration |
| Memory | ~2GB RAM | Unified Memory | Optimized |

## Structure

```
whisper-transcription/
├── SKILL.md                           # Main skill documentation
├── README.md                          # This file
├── skill.json                         # Metadata and configuration
├── scripts/
│   ├── transcribir_optimizado.sh      # Main transcription script
│   ├── batch_transcribe.sh            # Batch processing
│   └── extract_audio.sh               # Video audio extraction
├── references/
│   ├── technical-guide.md             # Complete technical guide
│   ├── troubleshooting.md             # Problem solving
│   └── benchmarks.md                  # Performance data
└── assets/
    └── README-quickstart.md           # Quick start guide
```

## Documentation

- **[SKILL.md](SKILL.md)** - Complete skill documentation for Claude
- **[assets/README-quickstart.md](assets/README-quickstart.md)** - Quick start guide
- **[references/technical-guide.md](references/technical-guide.md)** - Detailed parameters and configuration
- **[references/troubleshooting.md](references/troubleshooting.md)** - Comprehensive problem solving
- **[references/benchmarks.md](references/benchmarks.md)** - Performance data and real examples

## Use Cases

### Academic Material
Transcribe financial lectures with excellent terminology capture:
- ✅ WACC, CAPM, Beta, DCF correctly transcribed
- ✅ Company names: Falabella, Cencosud, IPSA
- ✅ Concepts: correlación, portafolio, diversificación

**Example:**
```bash
./scripts/transcribir_optimizado.sh "finance_class.mp3" es
```

### Podcasts and Interviews
Fast, accurate transcription for conversational content.

### Conference Calls
Transcribe earnings calls and analyst presentations.

### Video Subtitling
Generate SRT/VTT subtitles for educational videos.

## Real Examples

### Financial Class Transcription

**Input:**
- File: `CLASE_15-10-25_audio.mp3`
- Size: 48 MB
- Duration: ~40 minutes

**Output:**
- Processing time: ~8-12 minutes
- Lines: 770
- Words: 9,071
- Quality: ⭐⭐⭐⭐⭐ Excellent

**Correctly captured terms:**
"correlación", "diversificación", "portafolio", "covarianza", "IPSA", "Falabella", "Cencosud", "frontera eficiente", "CAPM"

## Available Scripts

### transcribir_optimizado.sh

Main optimized transcription script.

**Usage:**
```bash
./scripts/transcribir_optimizado.sh FILE LANGUAGE
```

**Features:**
- Auto-detects optimal threads (cores - 2)
- Uses GPU Metal acceleration
- Shows real-time progress
- Displays statistics and preview

### batch_transcribe.sh

Process multiple files automatically.

**Usage:**
```bash
./scripts/batch_transcribe.sh file1.mp3 file2.mp3 ...
./scripts/batch_transcribe.sh folder/*.{mp3,m4a,wav}
```

**Features:**
- Sequential processing
- Detailed logging
- Error handling
- Progress tracking

### extract_audio.sh

Extract and optimize audio from videos.

**Usage:**
```bash
./scripts/extract_audio.sh video.mp4
```

**Output:**
- Format: MP3, 40kbps, 32kHz, Mono
- Optimized for Whisper
- ~90% size reduction

## Troubleshooting

### GPU Not Active

```bash
# Verify whisper-cli location
which whisper-cli
# Expected: /opt/homebrew/bin/whisper-cli

# Reinstall if needed
brew uninstall whisper-cpp && brew install whisper-cpp
```

### Model Not Found

```bash
# Verify model
ls -lh ~/.whisper-models/ggml-medium.bin

# Re-download if missing
curl -L -o ~/.whisper-models/ggml-medium.bin \
  "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-medium.bin"
```

See [references/troubleshooting.md](references/troubleshooting.md) for complete troubleshooting guide.

## Integration

This skill complements the **SISTEMA-DEFINITIVO** financial analysis methodology:
- Transcribes financial lectures and academic material
- Processes educational content about portfolio theory, valuation, WACC, CAPM
- Organizes transcriptions by topic in `3-MATERIAL-ACADEMICO/`
- Supports methodology development (e.g., portfolio construction section)

## Technical Specifications

### Supported Formats

**Input:**
- Audio: MP3, WAV, FLAC, OGG, M4A
- Video: MP4 (extracts audio automatically)

**Output:**
- TXT (plain text, no timestamps)
- SRT (standard subtitles)
- VTT (HTML5 video)
- CSV (tabular data)
- JSON (structured metadata)

### Languages

- **Total supported:** 99+
- **Default:** Spanish (es)
- **Recommended:** Force language for speed (don't use auto)
- **Quality:** Excellent with Spanish technical/financial terminology

### Models

| Model | Size | Speed | Quality |
|-------|------|-------|---------|
| tiny | 75 MB | ~10x | ⭐⭐ |
| base | 142 MB | ~7x | ⭐⭐⭐ |
| small | 466 MB | ~4x | ⭐⭐⭐⭐ |
| **medium** | **1.4 GB** | **~5x** | **⭐⭐⭐⭐⭐** |
| large | 2.9 GB | ~2x | ⭐⭐⭐⭐⭐ |

**Current:** Medium (optimal balance)

## Requirements

- **OS:** macOS 11.0+ (Big Sur or later)
- **Hardware:** Apple Silicon (M1/M2/M3/M4)
- **RAM:** 8 GB minimum, 16 GB recommended
- **Disk:** 2 GB free space (for model + processing)
- **Software:**
  - whisper.cpp v1.8.2+
  - Homebrew
  - ffmpeg (optional, for video extraction)

## License

Apache License 2.0

## Credits

- **Author:** Luis Rivera González
- **Created:** November 2, 2025
- **Version:** 1.0
- **Based on:**
  - whisper.cpp by Georgi Gerganov
  - Whisper by OpenAI
  - Metal Performance Shaders by Apple

## Resources

- **whisper.cpp:** https://github.com/ggerganov/whisper.cpp
- **OpenAI Whisper:** https://github.com/openai/whisper
- **Models:** https://huggingface.co/ggerganov/whisper.cpp
- **Metal:** https://developer.apple.com/metal/

---

**Status:** ✅ Production-ready
**Tested on:** Apple M4, macOS 11.0+
**Quality:** ⭐⭐⭐⭐⭐ Excellent for Spanish technical content
