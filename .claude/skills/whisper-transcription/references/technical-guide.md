# Technical Guide - Whisper Transcription

## Installation

### Prerequisites

- macOS 11.0 (Big Sur) or later
- Apple Silicon (M1/M2/M3/M4)
- Homebrew package manager

### Step 1: Install whisper.cpp

```bash
brew install whisper-cpp
```

**Installed commands:**
- `whisper-cli` - Main transcription tool
- `whisper-bench` - Performance benchmarking
- `whisper-server` - HTTP server for integrations
- `whisper-stream` - Real-time streaming transcription

**Verification:**
```bash
which whisper-cli
# Expected: /opt/homebrew/bin/whisper-cli

whisper-cli --help
```

### Step 2: Download GGML Models

```bash
# Create models directory
mkdir -p ~/.whisper-models

# Download medium model (recommended, 1.4 GB)
curl -L -o ~/.whisper-models/ggml-medium.bin \
  "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-medium.bin"

# Verify download
ls -lh ~/.whisper-models/ggml-medium.bin
```

### Step 3: Make Scripts Executable

```bash
chmod +x scripts/*.sh
```

## Available Models

| Model | Size | Speed | Quality | Use Case |
|-------|------|-------|---------|----------|
| tiny | 75 MB | ~10x real-time | ⭐⭐ | Quick tests, demos |
| base | 142 MB | ~7x real-time | ⭐⭐⭐ | Simple transcriptions |
| small | 466 MB | ~4x real-time | ⭐⭐⭐⭐ | Speed/quality balance |
| **medium** | **1.4 GB** | **~5x real-time** | **⭐⭐⭐⭐⭐** | **✅ Recommended** |
| large | 2.9 GB | ~2x real-time | ⭐⭐⭐⭐⭐ | Maximum accuracy |
| large-v3 | 2.9 GB | ~2x real-time | ⭐⭐⭐⭐⭐ | Latest, best quality |

### Download Additional Models

```bash
# Tiny (very fast, lower quality)
curl -L -o ~/.whisper-models/ggml-tiny.bin \
  "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-tiny.bin"

# Large v3 (maximum quality)
curl -L -o ~/.whisper-models/ggml-large-v3.bin \
  "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-large-v3.bin"
```

## Advanced Parameters

### Language Codes

```bash
# Major languages
-l es    # Spanish
-l en    # English
-l pt    # Portuguese
-l fr    # French
-l de    # German
-l it    # Italian
-l ja    # Japanese
-l ko    # Korean
-l zh    # Chinese
-l auto  # Auto-detect (slower)
```

**Total supported:** 99+ languages

### Output Formats

```bash
-otxt    # Plain text (default, no timestamps)
-osrt    # SRT subtitles (with timestamps)
-ovtt    # WebVTT (HTML5 video)
-ocsv    # CSV (tabular data)
-oj      # JSON (basic metadata)
-ojf     # JSON (full metadata)
-olrc    # LRC format (karaoke/lyrics)
```

### Thread Optimization

```bash
# Check available cores
sysctl -n hw.ncpu    # Returns total CPU cores

# Thread recommendations:
-t 8     # Cores - 2 (recommended, keeps system responsive)
-t 10    # Maximum performance (may affect UI)
-t 4     # If running other heavy apps simultaneously
```

**Formula:** `threads = total_cores - 2`

### Beam Search Parameters

```bash
-bs N    # Beam size (default: 5)
         # Higher = more accurate but slower
         # Range: 1-10

-bo N    # Number of best candidates (default: 5)
         # Higher = more options explored
         # Range: 1-10
```

**Quality presets:**
- Fast: `-bs 3 -bo 3`
- Balanced: `-bs 5 -bo 5` (default)
- Accurate: `-bs 10 -bo 10`

### Temperature Sampling

```bash
--temperature N          # Sampling temperature (0.0-1.0)
--temperature-inc N      # Temperature increment on fallback

# Examples:
--temperature 0.0        # Deterministic (same result every time)
--temperature 0.5        # Balanced
--temperature 1.0        # More creative/varied
```

### Word Timestamps

```bash
-wt N    # Word timestamp probability threshold
         # Default: 0.01
         # Lower = more word timestamps

-et N    # Entropy threshold for timestamps
         # Default: 2.40
```

### Context and Prompting

```bash
--prompt "text"          # Initial prompt for context
                         # Improves accuracy for specific terminology

# Example:
--prompt "Esta es una clase de finanzas corporativas sobre WACC, CAPM, Beta, valoración DCF, flujos descontados y análisis de ratios financieros."
```

### Audio Processing

```bash
-d N     # Duration to process (milliseconds)
         # 0 = entire file (default)

-ot N    # Offset time (milliseconds)
         # Skip first N milliseconds

--suppress-regex "pattern"  # Suppress specific tokens
```

### Translation Mode

```bash
--translate              # Translate to English (not just transcribe)

# Example:
whisper-cli -m ~/.whisper-models/ggml-medium.bin \
    -l es -f "spanish_audio.mp3" --translate -otxt
# Result: English translation of Spanish audio
```

### Diarization (Speaker Separation)

```bash
-di              # Enable stereo diarization
                 # Separates left/right channel speakers
                 # Requires stereo audio input
```

### Progress and Logging

```bash
--print-progress         # Show real-time progress
--print-colors           # Colorized output
--print-special          # Print special tokens
-nf                      # No fallback (disable temperature fallback)
```

### GPU Control

```bash
-ng              # No GPU (force CPU)
                 # Useful for debugging or old hardware
```

## Performance Comparison

### Python Whisper (CPU-only)

**Characteristics:**
- Uses CPU only
- FP32 precision
- ~1x real-time speed
- High RAM usage (~2GB+)
- Simple installation (`pip install openai-whisper`)

**Command:**
```bash
whisper "audio.mp3" --language Spanish --model medium --output_format txt
```

**40-minute audio:**
- Processing time: ~40+ minutes
- Result: 1x real-time (no speedup)

### whisper.cpp (GPU Metal)

**Characteristics:**
- Uses GPU via Metal
- FP16 optimized
- ~5x real-time speed
- Unified Memory optimization
- Requires Homebrew installation

**Command:**
```bash
whisper-cli -m ~/.whisper-models/ggml-medium.bin -l es -t 8 -f "audio.mp3" -otxt
```

**40-minute audio:**
- Processing time: ~8-12 minutes
- Result: 5x real-time speedup

### Performance Metrics (Apple M4)

| Metric | Python Whisper | whisper.cpp | Improvement |
|--------|----------------|-------------|-------------|
| Speed | ~1x real-time | ~5x real-time | **5x faster** |
| Hardware | CPU only | GPU M4 + Metal | GPU acceleration |
| Memory | ~2GB RAM | Unified Memory | Optimized |
| Precision | FP32 | FP16 | 50% memory reduction |
| 40 min audio | 40+ min | 8-12 min | 70-80% time reduction |

## Hardware Optimization

### Apple Silicon Features

**Your M4 Chip:**
- 10 CPU cores (6 performance + 4 efficiency)
- Integrated GPU with Metal Performance Shaders
- Unified Memory (shared CPU-GPU)
- Neural Engine (not used by Whisper currently)

**What whisper.cpp Uses:**
- ✅ GPU via Metal → 5x speedup
- ✅ Unified Memory → No CPU↔GPU copies
- ✅ Multi-threading optimized
- ⚠️ Neural Engine → Not supported yet

### Monitoring GPU Usage

During transcription, verify GPU is active:

```bash
whisper-cli -m ~/.whisper-models/ggml-medium.bin \
    -l es -t 8 -f "audio.mp3" -otxt \
    --print-progress
```

**Look for these lines:**
```
✅ whisper_init_with_params_no_state: use gpu = 1
✅ ggml_metal_device_init: GPU name: Apple M4
✅ whisper_backend_init_gpu: using Metal backend
```

**If GPU is NOT active:**
```
❌ whisper_init_with_params_no_state: use gpu = 0
```

### Performance Timings

The output shows detailed timings:

```
whisper_print_timings:     load time =  1565.95 ms   # Model loading
whisper_print_timings:      mel time =    11.16 ms   # Audio conversion
whisper_print_timings:   encode time =  1508.38 ms   # GPU encoding
whisper_print_timings:   decode time =    54.98 ms   # Decoding
whisper_print_timings:    total time =  6185.28 ms   # Total
```

## Complete Command Reference

### Basic Transcription

```bash
# Minimum required parameters
whisper-cli -m MODEL -l LANG -f INPUT -of OUTPUT -otxt

# Full example
whisper-cli \
    -m ~/.whisper-models/ggml-medium.bin \
    -l es \
    -t 8 \
    -f "audio.mp3" \
    -of "output" \
    -otxt \
    --print-progress
```

### Maximum Quality

```bash
whisper-cli \
    -m ~/.whisper-models/ggml-large-v3.bin \
    -l es \
    -t 10 \
    -f "audio.mp3" \
    -of "output" \
    -otxt \
    -bs 10 \
    -bo 10 \
    --print-progress
```

### Maximum Speed

```bash
whisper-cli \
    -m ~/.whisper-models/ggml-small.bin \
    -l es \
    -t 10 \
    -f "audio.mp3" \
    -of "output" \
    -otxt \
    -bs 3 \
    -bo 3 \
    -nf
```

### Balanced (Recommended)

```bash
# Use the optimized script
./scripts/transcribir_optimizado.sh "audio.mp3" es
```

### Subtitles Generation

```bash
# SRT format (standard)
whisper-cli \
    -m ~/.whisper-models/ggml-medium.bin \
    -l es \
    -t 8 \
    -f "video.mp4" \
    -of "video" \
    -osrt

# WebVTT format (HTML5)
whisper-cli \
    -m ~/.whisper-models/ggml-medium.bin \
    -l es \
    -t 8 \
    -f "video.mp4" \
    -of "video" \
    -ovtt
```

### With Context Prompt

```bash
whisper-cli \
    -m ~/.whisper-models/ggml-medium.bin \
    -l es \
    -t 8 \
    -f "financial_class.mp3" \
    -of "output" \
    -otxt \
    --prompt "Esta es una clase de finanzas corporativas sobre WACC, CAPM, Beta, valoración DCF, flujos descontados, análisis de ratios financieros, teoría de portafolios Markowitz, correlación y diversificación." \
    --print-progress
```

## Utility Commands

### Benchmarking

```bash
# Test model performance
whisper-bench -m ~/.whisper-models/ggml-medium.bin
```

### HTTP Server

```bash
# Start transcription server
whisper-server \
    -m ~/.whisper-models/ggml-medium.bin \
    -l es \
    -p 8080

# Use via HTTP POST:
curl -X POST -F "file=@audio.mp3" http://localhost:8080/transcribe
```

### Stream Processing

```bash
# Real-time transcription from microphone
whisper-stream \
    -m ~/.whisper-models/ggml-medium.bin \
    -l es \
    -t 8
```

## Best Practices

1. **Always use GPU** - Verify Metal backend is active
2. **Medium model is sweet spot** - Best balance speed/quality
3. **Spanish as default** - Excellent with technical terminology
4. **Optimal threads = cores - 2** - Keeps system responsive
5. **Use context prompts** - Improves accuracy for specialized content
6. **Batch processing** - Use scripts for multiple files
7. **Monitor output** - Check for GPU usage confirmation

## Advanced Use Cases

### Financial/Technical Content

```bash
whisper-cli \
    -m ~/.whisper-models/ggml-medium.bin \
    -l es \
    -t 8 \
    -f "clase_finanzas.mp3" \
    -otxt \
    --prompt "Clase sobre WACC, CAPM, Beta, DCF, ratios financieros, ROE, EBITDA, flujos de caja libre." \
    --temperature 0.0 \
    --print-progress
```

### Multi-Language Content

```bash
# Auto-detect language
whisper-cli \
    -m ~/.whisper-models/ggml-medium.bin \
    -l auto \
    -t 8 \
    -f "multilang_audio.mp3" \
    -otxt
```

### Long-Form Content (>1 hour)

```bash
# Use large model for best accuracy
whisper-cli \
    -m ~/.whisper-models/ggml-large-v3.bin \
    -l es \
    -t 8 \
    -f "long_lecture.mp3" \
    -otxt \
    --print-progress
```

## Resources

- **Official Repository:** https://github.com/ggerganov/whisper.cpp
- **Models:** https://huggingface.co/ggerganov/whisper.cpp
- **OpenAI Whisper:** https://github.com/openai/whisper
- **Metal Performance Shaders:** https://developer.apple.com/metal/
