# Troubleshooting Guide

## GPU Not Being Used

### Symptoms

```
❌ whisper_init_with_params_no_state: use gpu = 0
```

The transcription runs but uses CPU only (very slow, ~1x real-time).

### Causes

1. Using Python Whisper instead of whisper.cpp
2. whisper.cpp not properly installed
3. Old version of whisper.cpp without Metal support

### Solutions

**Step 1: Verify you're using whisper-cli (not Python)**

```bash
which whisper-cli
```

**Expected output:**
```
/opt/homebrew/bin/whisper-cli
```

**If you see:**
```
/usr/local/bin/whisper          # ❌ Python version
whisper not found               # ❌ Not installed
```

**Step 2: Reinstall whisper.cpp**

```bash
# Uninstall if exists
brew uninstall whisper-cpp

# Clean any Python Whisper
pip3 uninstall openai-whisper

# Install fresh whisper.cpp
brew install whisper-cpp

# Verify
which whisper-cli
whisper-cli --help
```

**Step 3: Test GPU activation**

```bash
whisper-cli \
    -m ~/.whisper-models/ggml-medium.bin \
    -l es \
    -t 8 \
    -f test_audio.mp3 \
    -of test \
    -otxt \
    --print-progress
```

**Look for:**
```
✅ whisper_init_with_params_no_state: use gpu = 1
✅ ggml_metal_device_init: GPU name: Apple M4
✅ whisper_backend_init_gpu: using Metal backend
```

---

## Model Not Found

### Symptoms

```
error: failed to load model from '~/.whisper-models/ggml-medium.bin'
```

### Cause

Model file doesn't exist or path is incorrect.

### Solutions

**Step 1: Check if model exists**

```bash
ls -lh ~/.whisper-models/ggml-medium.bin
```

**Step 2: Download model if missing**

```bash
# Create directory
mkdir -p ~/.whisper-models

# Download medium model
curl -L -o ~/.whisper-models/ggml-medium.bin \
  "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-medium.bin"

# Verify download
ls -lh ~/.whisper-models/ggml-medium.bin
# Expected: 1.4G
```

**Step 3: Check file integrity**

```bash
# File should be ~1.4 GB
du -sh ~/.whisper-models/ggml-medium.bin

# If much smaller, download was incomplete - delete and re-download
rm ~/.whisper-models/ggml-medium.bin
# Then re-download
```

---

## Permission Denied on Scripts

### Symptoms

```bash
./scripts/transcribir_optimizado.sh audio.mp3
# zsh: permission denied: ./scripts/transcribir_optimizado.sh
```

### Cause

Scripts don't have execution permissions.

### Solution

```bash
chmod +x scripts/*.sh

# Verify
ls -l scripts/*.sh
# Should show: -rwxr-xr-x
```

---

## Incorrect Language Detection

### Symptoms

- Transcription in wrong language
- Mixed languages in output
- Gibberish text

### Causes

1. Wrong language code specified
2. Audio contains multiple languages
3. Poor audio quality

### Solutions

**Force specific language:**

```bash
# Spanish
./scripts/transcribir_optimizado.sh audio.mp3 es

# English
./scripts/transcribir_optimizado.sh audio.mp3 en
```

**Use auto-detection for mixed content:**

```bash
./scripts/transcribir_optimizado.sh audio.mp3 auto
```

**Provide context with prompt:**

```bash
whisper-cli \
    -m ~/.whisper-models/ggml-medium.bin \
    -l es \
    -f audio.mp3 \
    -otxt \
    --prompt "Esta es una clase de finanzas en español sobre WACC y valoración."
```

---

## Poor Transcription Quality

### Symptoms

- Many errors in text
- Missing words
- Wrong terminology

### Causes

1. Poor audio quality
2. Background noise
3. Multiple speakers overlapping
4. Model too small
5. Wrong language setting

### Solutions

**Use larger model:**

```bash
# Download large model
curl -L -o ~/.whisper-models/ggml-large-v3.bin \
  "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-large-v3.bin"

# Use it
whisper-cli \
    -m ~/.whisper-models/ggml-large-v3.bin \
    -l es \
    -t 8 \
    -f audio.mp3 \
    -otxt
```

**Increase beam search:**

```bash
whisper-cli \
    -m ~/.whisper-models/ggml-medium.bin \
    -l es \
    -t 8 \
    -f audio.mp3 \
    -otxt \
    -bs 10 \
    -bo 10
```

**Use context prompt:**

```bash
whisper-cli \
    -m ~/.whisper-models/ggml-medium.bin \
    -l es \
    -f audio.mp3 \
    -otxt \
    --prompt "Technical financial terminology: WACC, CAPM, Beta, ROE, EBITDA, DCF, valoración, flujos de caja."
```

**Pre-process audio:**

```bash
# Convert to optimal format with ffmpeg
ffmpeg -i input.mp4 \
    -vn \
    -acodec libmp3lame \
    -ab 40k \
    -ar 32000 \
    -ac 1 \
    output.mp3

# Then transcribe
./scripts/transcribir_optimizado.sh output.mp3 es
```

---

## Slow Performance

### Symptoms

- Transcription taking much longer than expected
- Not achieving 5x real-time speed

### Causes

1. GPU not being used (see "GPU Not Being Used" section)
2. Too few threads allocated
3. Running other heavy applications
4. Using large model unnecessarily

### Solutions

**Increase threads:**

```bash
# Check available cores
sysctl -n hw.ncpu

# Use more threads (cores - 1)
whisper-cli \
    -m ~/.whisper-models/ggml-medium.bin \
    -l es \
    -t 9 \
    -f audio.mp3 \
    -otxt
```

**Use smaller model for speed:**

```bash
# Download small model if not present
curl -L -o ~/.whisper-models/ggml-small.bin \
  "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-small.bin"

# Use it (4x real-time, slightly lower quality)
whisper-cli \
    -m ~/.whisper-models/ggml-small.bin \
    -l es \
    -t 8 \
    -f audio.mp3 \
    -otxt
```

**Reduce beam search:**

```bash
whisper-cli \
    -m ~/.whisper-models/ggml-medium.bin \
    -l es \
    -t 8 \
    -f audio.mp3 \
    -otxt \
    -bs 3 \
    -bo 3 \
    -nf
```

---

## Out of Memory Errors

### Symptoms

```
error: failed to allocate memory
Killed: 9
```

### Causes

1. Model too large for available RAM
2. Too many threads
3. Other applications using memory

### Solutions

**Use smaller model:**

```bash
# Use small instead of medium
whisper-cli \
    -m ~/.whisper-models/ggml-small.bin \
    -l es \
    -t 8 \
    -f audio.mp3 \
    -otxt
```

**Reduce threads:**

```bash
whisper-cli \
    -m ~/.whisper-models/ggml-medium.bin \
    -l es \
    -t 4 \
    -f audio.mp3 \
    -otxt
```

**Close other applications:**

```bash
# Check memory usage
top -l 1 -s 0 | grep PhysMem

# Free up memory by closing apps
```

---

## File Format Not Supported

### Symptoms

```
error: failed to read WAV file
error: unknown file format
```

### Causes

1. Unsupported audio format
2. Corrupted audio file
3. DRM-protected file

### Solutions

**Convert to supported format with ffmpeg:**

```bash
# First, install ffmpeg if needed
brew install ffmpeg

# Convert any audio/video to MP3
ffmpeg -i input_file.xxx \
    -vn \
    -acodec libmp3lame \
    -ab 40k \
    -ar 32000 \
    -ac 1 \
    output.mp3

# Then transcribe
./scripts/transcribir_optimizado.sh output.mp3 es
```

**Or use the extract_audio script:**

```bash
./scripts/extract_audio.sh video.mp4
# Generates: video_audio.mp3

./scripts/transcribir_optimizado.sh video_audio.mp3 es
```

---

## Batch Processing Failures

### Symptoms

- Some files transcribe, others fail
- Script stops mid-batch
- Inconsistent results

### Solutions

**Use the batch script:**

```bash
./scripts/batch_transcribe.sh files/*.mp3
```

**Check log file:**

```bash
# Log file is created automatically
cat batch_transcription_*.log
```

**Manual batch with error handling:**

```bash
for file in *.mp3; do
    echo "Processing: $file"
    if ./scripts/transcribir_optimizado.sh "$file" es; then
        echo "✅ Success: $file"
    else
        echo "❌ Failed: $file"
    fi
done
```

---

## Subtitle Timing Issues

### Symptoms

- Subtitles out of sync with video
- Timestamps incorrect
- Missing subtitle segments

### Solutions

**Adjust word timestamp threshold:**

```bash
whisper-cli \
    -m ~/.whisper-models/ggml-medium.bin \
    -l es \
    -f video.mp4 \
    -osrt \
    -wt 0.005
```

**Increase beam search for better timing:**

```bash
whisper-cli \
    -m ~/.whisper-models/ggml-medium.bin \
    -l es \
    -f video.mp4 \
    -osrt \
    -bs 10 \
    -bo 10
```

---

## ffmpeg Not Found

### Symptoms

```
./scripts/extract_audio.sh video.mp4
# Error: ffmpeg no está instalado
```

### Solution

```bash
brew install ffmpeg

# Verify
which ffmpeg
ffmpeg -version
```

---

## Checking System Status

### Verify Complete Installation

```bash
# 1. Check whisper-cli
which whisper-cli
# Expected: /opt/homebrew/bin/whisper-cli

# 2. Check version
whisper-cli --help | head -5

# 3. Check model
ls -lh ~/.whisper-models/ggml-medium.bin
# Expected: 1.4G

# 4. Check scripts
ls -l scripts/*.sh
# All should have x permission

# 5. Test with sample
./scripts/transcribir_optimizado.sh test.mp3 es
```

### Monitor Active Processes

```bash
# Check if transcription is running
ps aux | grep whisper-cli

# Monitor CPU/GPU usage
top -l 1 | grep whisper

# Check system resources
vm_stat | perl -ne '/page size of (\d+)/ and $size=$1; /Pages\s+([^:]+)[^\d]+(\d+)/ and printf("%-16s % 16.2f Mi\n", "$1:", $2 * $size / 1048576);'
```

---

## Getting Help

If issues persist after trying these solutions:

1. **Check skill documentation:**
   - `SKILL.md` - Main overview
   - `references/technical-guide.md` - Detailed parameters
   - `references/benchmarks.md` - Performance examples

2. **Verify system requirements:**
   - macOS 11.0+
   - Apple Silicon (M1/M2/M3/M4)
   - 8GB+ RAM
   - 2GB+ free disk space

3. **Official resources:**
   - https://github.com/ggerganov/whisper.cpp
   - https://github.com/openai/whisper

4. **Common issues database:**
   - GitHub Issues: https://github.com/ggerganov/whisper.cpp/issues
