# CLAUDE.md - Project Instructions

This file provides guidance to Claude Code and other Claude apps when working with this repository.

## Project Overview

This is a **SQM UHPRO Project Management Workspace** - a professional consulting and financial analysis project focused on lithium extraction technology evaluation for SQM (Sociedad Química y Minera). The project combines technical research, financial modeling, presentations, and document generation workflows.

**Project Type:** Consulting/Financial Analysis + Technology Evaluation  
**Primary Focus:** UHPRO (Ultra-High Pressure Reverse Osmosis) technology evaluation for lithium extraction  
**Domain:** Mining, water treatment, financial feasibility analysis  
**Language:** Spanish (primary), English (technical references)

## Technology Stack

### Core Technologies
- **Python 3.9+**: Primary scripting language for document generation and data processing
- **Bash**: Shell scripts for system automation and batch processing
- **HTML/CSS/JavaScript**: Interactive presentations and visualizations
- **Word/DOCX**: Document generation via `python-docx` library

### Key Libraries & Tools
- **python-docx**: Programmatic Word document creation and manipulation
- **whisper-cpp / OpenAI Whisper**: Audio transcription (Apple Silicon optimized)
- **FFmpeg**: Audio/video extraction and processing
- **Brew**: macOS package management

### Infrastructure
- **Apple Silicon (M4) Mac**: Development platform with GPU-accelerated transcription
- **Metal/Core ML**: Hardware acceleration for audio processing
- **Claude Code Skills Framework**: Task automation and specialized workflows

## Code Architecture

### Directory Structure

```
PROYECTO SQM-UHPRO-MBA/
├── .claude/                          # Claude Code configuration
│   ├── settings.local.json          # Permissions and output style configuration
│   ├── output-styles/               # Writing style guides
│   │   └── analitica-humana-v4-3.md # Professional analytical writing in Spanish
│   ├── skills/                      # Reusable task automation
│   │   ├── template-mba/            # MBA document generation
│   │   │   ├── SKILL.md
│   │   │   ├── crear_documento_mba.py
│   │   │   ├── TEMPLATE_MBA_OPTIMIZADO.docx (70KB)
│   │   │   └── README.md
│   │   ├── whisper-transcription/   # Audio/video transcription
│   │   │   ├── SKILL.md
│   │   │   ├── scripts/
│   │   │   │   ├── transcribir_optimizado.sh
│   │   │   │   ├── batch_transcribe.sh
│   │   │   │   └── extract_audio.sh
│   │   │   └── references/          # Technical guides
│   │   └── skill-creator/           # Skill development framework
│   │       └── scripts/
│   │           ├── init_skill.py
│   │           └── package_skill.py
│   ├── EXPORT-TEMPLATE-GUIDE.md     # Configuration reuse documentation
│   └── init-claude-project.sh       # Project initialization script
│
├── REPORTES-EJECUTIVOS/                   # Executive reports v2.0 (fuente de verdad)
│   ├── REPORTE-EJECUTIVO-NF-UHPRO-SQM.md             # Complete report (363 KB, v2.0)
│   ├── REPORTE-EJECUTIVO-REDUCIDO-NF-UHPRO-SQM.md   # Reduced report (145 KB, v2.0)
│   ├── MEMO-EJECUTIVO-CAMBIOS-v1.0-v2.0.md           # Change log v1→v2
│   └── RESUMEN-CORRECCIONES-v2.0-PROGRESO.md         # Corrections summary
│
├── PRESENTACIONES/                        # Presentation blueprints (NEW - Nov 2025)
│   ├── ESCENARIO-A-BLUEPRINT.md          # 15 slides blueprint Scenario A (53 KB)
│   ├── ESCENARIO-B-BLUEPRINT.md          # 15 slides blueprint Scenario B (75 KB)
│   └── README-BLUEPRINTS.md              # Complete usage guide (26 KB)
│
├── INVESTIGACION/                         # Research documents (4 files)
│   ├── Investigación Membranas UHPRO NaCl vs LiCl...md
│   ├── Investigación Tecnología NF-UHPRO Claude.md
│   ├── Investigación Tecnología NF-UHPRO Claude COMPLEMENTARIA.md
│   └── Investigación Tecnología NF-UHPRO GEMINI.md
│
├── MATERIAL-REFERENCIA/                   # Reference materials
│   ├── pdfs/                              # Technical PDFs
│   └── videos/                            # Multimedia presentations (62 MB)
│
├── ARCHIVO/                               # Archived versions
│   └── PRESENTACIONES-FINALES-LEGACY/    # Deprecated HTML/MD presentations
│       ├── PRESENTACION UHPRO ESCENARIO A.html
│       ├── PRESENTACION UHPRO ESCENARIO B.html
│       ├── PRESENTACION-ESCENARIO-A.md
│       ├── PRESENTACION-ESCENARIO-B.md
│       ├── executive-pitch-nf-uhpro.html
│       ├── sqm-process-flow-diagram.html
│       ├── membrane-projects-table.html
│       └── README-DEPRECATION.md
│
└── VERSIONES/                             # Version control

Key Files: ~1.9 MB documentation (reports + blueprints) + 50+ MB multimedia
```

### Key Components

#### 1. **Template MBA Skill** (`template-mba/`)
- **Purpose**: Generate professional MBA-format documents with FEN UChile (Universidad de Chile) branding
- **Core Script**: `crear_documento_mba.py`
- **Features**:
  - Automatic table of contents with proper formatting
  - Logo integration (5.5" wide, optimized for full-width display)
  - Decimal numbering system (1., 1.1, 1.1.1)
  - Standard MBA table formatting
  - Page numbering and header/footer management
- **Template**: `TEMPLATE_MBA_OPTIMIZADO.docx` (70 KB, clean and optimized)
- **Version**: 5.1 - optimized logo width + TOC with title

#### 2. **Whisper Transcription Skill** (`whisper-transcription/`)
- **Purpose**: Fast audio/video transcription with Apple Silicon GPU acceleration
- **Core Tools**:
  - `whisper-cli` (whisper.cpp with Metal acceleration)
  - `batch_transcribe.sh` for processing multiple files
  - `transcribir_optimizado.sh` for individual transcription
- **Supported Formats**:
  - Input: MP3, WAV, FLAC, OGG, M4A, MP4
  - Output: TXT, SRT (subtitles), VTT, CSV, JSON
- **Performance**: ~5x real-time speed (40min audio = 8-12min processing)
- **Model**: ggml-medium.bin (1.4 GB, excellent Spanish support)

#### 3. **Skill Creator Framework** (`skill-creator/`)
- **Purpose**: Bootstrap and package new Claude Code skills
- **Scripts**:
  - `init_skill.py`: Initialize new skill structure
  - `package_skill.py`: Compress and distribute skills
- **Output**: Production-ready .zip files for Claude installation

#### 4. **Output Style Configuration** (`output-styles/`)
- **File**: `analitica-humana-v4-3.md`
- **Purpose**: Professional analytical writing guide for financial documents
- **Key Principles**:
  - Emulates natural human thought patterns
  - Avoids AI signature phrases ("surge la tensión", "paradoja aparente", etc.)
  - Emphasizes data traceability - NO invented figures
  - Asymmetrical structure (variable section lengths)
  - High lexical diversity + controlled sentence length (15-30 words avg)
  - Distinguishes between academic (formal) and consulting (frank) writing

#### 5. **Executive Reports** (REPORTES-EJECUTIVOS/)
- **REPORTE-EJECUTIVO-NF-UHPRO-SQM.md** (v2.0): Complete 363 KB executive report for SQM Investment Committee
- **REPORTE-EJECUTIVO-REDUCIDO-NF-UHPRO-SQM.md** (v2.0): Reduced 145 KB version for time-constrained reviewers
- **Key Features**:
  - Self-contained (auto-contenido): No meta-references to versions or development process
  - Technically accurate: All data traceable to 4 investigation documents
  - Investment focus: Evaluates $94M NF-UHPRO technology investment
  - Two scenarios: Scenario A (DLE + UHPRO) vs Scenario B (Post-Silvinita + UHPRO)
  - Critical findings: Phase 0 validation program ($18-22k, ROI 250:1 to 2,500:1)
- **Location**: `REPORTES-EJECUTIVOS/` (fuente de verdad validada)

#### 6. **Presentation Blueprints** (PRESENTACIONES/)
- **Purpose**: Detailed Markdown blueprints for generating professional PPTX presentations
- **Version**: v2.0 (November 2025)
- **Based on**: Executive Reports v2.0 (100% data traceability)

**ESCENARIO-A-BLUEPRINT.md** (53 KB, 15 slides):
- Focus: Consultancy approach (DLE + UHPRO)
- Investment: $68.5M CAPEX
- Value 10 years: $94M savings
- TIR: 22%, Payback: 4.4 years
- Each slide includes:
  - Complete text content
  - Data and figures with traceable sources
  - Visual specifications (charts, tables, diagrams)
  - Design notes (colors, layout, typography, emphasis)
  - Speaker notes

**ESCENARIO-B-BLUEPRINT.md** (75 KB, 15 slides):
- Focus: Pilot validation post-silvinita + scale-up
- Investment: $5M pilot + $78M plant ($83M total)
- Value 10 years: $125.3M savings
- TIR: 28%, Payback: 2.8 years
- Special features:
  - Slide 5: ⚠️ CRITICAL WARNING (Li/Na ratio dependency)
  - Slide 6: Phase 0 MANDATORY ($18-22k before pilot approval)
  - Slide 7: Decision tree Cases A/B/C

**README-BLUEPRINTS.md** (26 KB):
- Complete usage guide for blueprint → PPTX conversion
- 4 conversion methods: Copilot, md2pptx, Pandoc, Manual
- SQM/FEN UChile corporate design guidelines
- Color palette, typography, layout specifications
- FAQ and troubleshooting

**Conversion Options**:
1. Microsoft Copilot: 15-30 min (fastest)
2. md2pptx tool: 1-2 hours (template-based)
3. Pandoc: 30 min + 2-3 hours manual editing
4. Manual creation: 4-6 hours (total control)

#### 7. **Legacy Presentations** (ARCHIVO/PRESENTACIONES-FINALES-LEGACY/)
- **Status**: Deprecated (November 2025)
- **Reason**: Replaced by v2.0 blueprints
- **Contents**: 7 HTML/MD files archived with README-DEPRECATION.md
- **⚠️ DO NOT USE** for official presentations - contains outdated data and contradictory metrics

### Settings & Permissions

**File**: `.claude/settings.local.json`

Configured Bash permissions include:
- File operations: `find`, `ls`, `chmod`
- Package management: `pip3`, `brew`
- Audio processing: `whisper`, `ffmpeg`, Python3
- System tools: `kill`, `sysctl`, `system_profiler`
- Custom scripts: `transcribir_optimizado.sh`, `transcribir_video_optimizado.sh`

**Output Style**: `analitica-humana-v4-3` (professional analytical Spanish)

## Development Workflow

### Common Tasks

#### 1. Creating MBA Documents
```bash
# Use the template-mba skill
# Claude will invoke crear_documento_mba.py to generate Word documents
# Workflow:
# 1. Define content structure (title, chapters, tables)
# 2. Script processes template + content
# 3. Output: formatted .docx file ready for printing/submission
```

#### 2. Transcribing Audio/Video
```bash
# Use the whisper-transcription skill
# Bash script with Apple Silicon optimization

# Single file transcription
./scripts/transcribir_optimizado.sh audio.mp3 es

# Batch processing
./scripts/batch_transcribe.sh *.mp3

# Output: .txt file with full transcription
```

#### 3. Updating Presentations
**Process**:
1. Read `MODIFICAR PRESENTACION A.md` for correction guidelines
2. Verify technical data accuracy (UHPRO vs DLE vs RO technologies)
3. Update HTML presentations with new data
4. Test interactive elements in browser
5. Export to PDF if needed

#### 4. Document Structure Standards
- **Academic documents**: Formal language ("Este análisis reconoce...")
- **Consulting documents**: Frank language ("Corresponde ser franco...")
- **Technical accuracy**: All data must be traceable to source documents or public references
- **No invented figures**: Use placeholder notation if data unavailable
- **Spanish language**: Primary documentation language

### Build/Run/Test Commands

#### Document Generation
```bash
# Generate MBA document
python3 .claude/skills/template-mba/crear_documento_mba.py

# No external build required - uses template + python-docx
```

#### Transcription (Apple Silicon)
```bash
# Check whisper-cpp installation
whisper-cli --version

# Install if missing (via Homebrew)
brew install whisper-cpp

# Run transcription
bash .claude/skills/whisper-transcription/scripts/transcribir_optimizado.sh input.mp3 es

# Batch process
bash .claude/skills/whisper-transcription/scripts/batch_transcribe.sh *.mp3
```

#### Skill Management
```bash
# Initialize new skill
python3 .claude/skills/skill-creator/scripts/init_skill.py

# Package skill for distribution
python3 .claude/skills/skill-creator/scripts/package_skill.py

# Initialize project configuration
bash .claude/init-claude-project.sh
```

#### No testing framework configured
- Manual validation of documents (Word formatting, TOC generation)
- HTML presentation testing via browser (Chrome, Safari)
- Audio quality validation via manual spot-checking

### Key Patterns & Standards

#### Document Numbering (MBA)
- Heading 2 → Chapters (1., 2., 3.)
- Heading 3 → Sections (1.1, 1.2, 2.1)
- Heading 4 → Subsections (1.1.1, 1.1.2)
- **NEVER use Heading 1** (reserved for TOC generation)

#### Table Formatting
```python
# Always use crear_tabla_mba() function
# Automatic formatting:
# - Header: Gray background (#D9D9D9), centered, Arial 11pt bold
# - Data: Left-aligned, Arial 10.5pt
# - Borders: Black 1pt on all cells
```

#### Writing Style Requirements
- Asymmetrical structure (sections vary in length)
- Lexical diversity (avoid repetition: "revela" max 3x, "Sin embargo" max 3x)
- Sentence length: 15-30 words average (avoid >35-40 words)
- Data traceability: Every number must be traceable
- Professional tone balanced with clarity

#### Project Initialization
When creating new Claude Code projects, reuse this configuration:
```bash
# Copy entire .claude directory
cp -r ~/claude-templates/default/.claude .

# Or use initialization script
bash ./.claude/init-claude-project.sh
```

## Documentation

### Configuration Guide
**File**: `.claude/EXPORT-TEMPLATE-GUIDE.md`
- Comprehensive guide for reusing this configuration as a template
- Methods for scaling .claude setup across multiple projects
- Git template repository approach
- Global skills management via symlinks

### Version Control Documentation
**Files**:
- `MEMO-EJECUTIVO-CAMBIOS-v1.0-v2.0.md`: Detailed change log v1.0 → v2.0
- `RESUMEN-CORRECCIONES-v2.0-PROGRESO.md`: Progress tracking of v2.0 corrections
- Distinction between technologies: DLE vs UHPRO vs RO documented in reports
- Data validation rules applied throughout v2.0 development

### Skill Documentation
Each skill includes:
- **SKILL.md**: Primary Claude instructions (metadata + workflow guide)
- **README.md**: User-facing documentation
- **CHANGELOG.md**: Version history and improvements

### Output Style Guide
**File**: `analitica-humana-v4-3.md`
- Anti-patterns to avoid (99 specific examples)
- Sentence structure analysis (>80 words = AI marker)
- Academic vs. consulting tone differentiation
- Data verification protocol
- Lexical diversity requirements

## Key Workflows & Commands

### MBA Document Generation Workflow
1. **Prepare content** (outline with chapters/sections)
2. **Run Python script**: `python3 crear_documento_mba.py`
3. **Verify formatting**: Check logo size (5.5"), TOC generation, numbering
4. **Update TOC** in Word: Ctrl+A → F9
5. **Export**: Save as .pdf if needed for distribution

### Audio Transcription Workflow
1. **Prepare audio file** (MP3, M4A, MP4)
2. **Run script**: `./transcribir_optimizado.sh archivo.mp3 es`
3. **Verify output**: Check .txt file for quality
4. **Optional**: Generate SRT for video subtitles
5. **Archive**: Store transcriptions in project folder

### Presentation Update Workflow
1. **Verify data** against investigation documents (4 technical references)
2. **Update HTML** with corrected information
3. **Test rendering** in browser (check responsive design)
4. **Extract PDF** if needed for printing
5. **Backup original** HTML file before major revisions
6. **Document changes** in version control files

### Configuration Reuse Workflow
1. **For new projects**: Copy `.claude/` directory
2. **Customize**: Adjust `settings.local.json` permissions if needed
3. **Add skills**: Keep or remove skills as appropriate
4. **Update style**: Modify `output-styles/*.md` if needed
5. **Commit template**: Use `init-claude-project.sh` as distribution

### Executive Report Development Workflow (v1.0 → v2.0)
1. **Phase 1 - Technical Corrections**: Apply 6 critical section updates from investigation documents
2. **Phase 2 - Narrative Cleanup**: Remove meta-references, version markers, external document references (13 corrections)
3. **Phase 3 - Technical Audit**: Cross-reference all data against 4 investigation documents (0 errors target)
4. **Phase 4 - Content Enrichment**: Mine validated content from HTML presentations (conservative approach)
5. **Final Deliverable**: Self-contained report ready for Investment Committee presentation

**Key Principles**:
- Auto-contenido: Document must stand alone without external references
- Data traceability: Every figure must trace to source
- Conservative enrichment: When in doubt → DISCARD
- Version evolution: v1.0 (initial) → v2.0 (audited + enriched)

## Special Considerations

### Apple Silicon Optimization
- **Hardware**: M4 Pro/Max with unified memory
- **Tool**: whisper.cpp compiled for Metal acceleration
- **Performance**: 5x speedup vs Python Whisper
- **Model location**: `~/.whisper-models/ggml-medium.bin`

### Language-Specific Features
- **Spanish (es)**: Default language, excellent technical terminology support
- **English (en)**: Available for international presentations
- **Auto-detection**: Supported but slower than explicit language specification

### Data Integrity Rules
- ✅ All figures must be traceable to:
  - User-provided documents
  - Public reference materials
  - Industry databases
- ❌ NEVER invent:
  - Capacity figures
  - Project timelines
  - Performance metrics
- ⚠️ When uncertain:
  - Mark data with uncertainty markers (approx., ~, circa)
  - Cite source explicitly
  - Note confidence level

### Document Versioning
- **MBA Templates**: Version tracked in CHANGELOG.md
- **Current version**: 5.1 (logo optimized 5.5" + TOC with title)
- **Previous versions**: Documented, avoid reusing
- **Skills**: Semantic versioning (MAJOR.MINOR format)

## Existing Conventions

### File Naming
- **Presentations**: Uppercase "PRESENTACION", Spanish titles
- **Scripts**: snake_case for Python/Bash
- **Skills**: kebab-case for directories
- **Documents**: YYYYMMDD date format when versioned

### Code Organization
- **Skills follow structure**: SKILL.md + scripts/ + references/ + assets/
- **No external dependencies** required (except installed tools: whisper-cpp, ffmpeg)
- **Python scripts self-contained**: No pip install required (uses system python3)

### Version Control Considerations
- No git repository initialized
- `.claude/settings.local.json` contains system-specific paths
- Template-mba DOCX file is binary (70 KB, manageable)
- HTML files are editable text (easy version control)

## Quick Reference

| Task | Tool | Command |
|------|------|---------|
| Generate MBA document | Python + DOCX | `python3 crear_documento_mba.py` |
| Transcribe audio | Whisper.cpp | `./transcribir_optimizado.sh file.mp3 es` |
| Batch transcribe | Bash | `./batch_transcribe.sh *.mp3` |
| Initialize new skill | Python | `python3 init_skill.py` |
| Package skill | Python | `python3 package_skill.py` |
| Update TOC in Word | Word | Ctrl+A → F9 |
| Create new project | Bash | `bash init-claude-project.sh` |

| Create presentation blueprints | Markdown | Use blueprints in `PRESENTACIONES/` as guides |
| Convert blueprint to PPTX | Copilot/md2pptx/Pandoc | See `PRESENTACIONES/README-BLUEPRINTS.md` |

---

## Recent Updates

### **Session 2025-11-03b: Blueprint Style Refinement (Analitica-Humana)**
**Completed**:
- ✅ Style audit of both presentation blueprints against "analitica-humana-v4-3" principles
- ✅ Refined `ESCENARIO-A-BLUEPRINT.md` (~90 edits, compliance 75-80%)
- ✅ Refined `ESCENARIO-B-BLUEPRINT.md` (~110 edits, compliance 75-80%)
- ✅ Both blueprints ready for Investment Committee presentation

**Corrections Applied**:

**Priority 1 - Meta-references & Citations**:
- Removed all "Versión: 2.0" references → "Actualización: Noviembre 2025"
- Eliminated 176 "Fuente: Sección X.X" citations across both files
- Removed external document references (REPORTE-EJECUTIVO-NF-UHPRO-SQM.md)
- Result: Documents are now self-contained (auto-contenido)

**Priority 2 - Repetition & AI Patterns**:
- Reduced "crítico/CRÍTICO" usage 57-60% (47→20 in A, 67→29 in B)
- Reduced warning icons ⚠️ by 24-57% (especially Escenario B: 41→31)
- Replaced AI signature phrases:
  - "según estado del arte" → "con el conocimiento técnico actual"
  - "debería alcanzar" → "tiene fundamentos sólidos"
  - "validada" → "respaldada por evidencia" / "demostrado"
  - "crítico" → "esencial", "determinante", "fundamental", "obligatoria"

**Priority 3 - Tone Moderation**:
- Escenario A: Professional analytical tone maintained
- Escenario B: Moderated alarmist language:
  - "⚠️ DECISIÓN CRÍTICA: ... OBLIGATORIA" → "Nota: ... Requerida"
  - "NO APROBAR PILOTO HASTA..." → "Completar Fase 0 antes de aprobar..."
  - Warning banners made more discrete and professional

**Impact**:
- Compliance with analitica-humana style: 75-80% (target achieved)
- Natural human writing patterns: High lexical diversity, varied sentence structure
- Data traceability maintained: All figures remain accurate, sources implicit
- Professional tone: Suitable for executive Investment Committee presentation

**Files Modified**:
- `PRESENTACIONES/ESCENARIO-A-BLUEPRINT.md` (53 KB, ~900 lines)
- `PRESENTACIONES/ESCENARIO-B-BLUEPRINT.md` (75 KB, ~1,200 lines)

**Validation**:
- ✅ Zero "Fuente:" citations remaining
- ✅ Meta-references eliminated
- ✅ Repetition reduced to acceptable levels
- ✅ Professional analytical tone throughout
- ✅ Ready for PPTX conversion and presentation

---

### **Session 2025-11-03a: Presentation Blueprints Creation**
**Completed**:
- ✅ Project reorganization: Created `REPORTES-EJECUTIVOS/` and `PRESENTACIONES/` folders
- ✅ Archived legacy presentations to `ARCHIVO/PRESENTACIONES-FINALES-LEGACY/`
- ✅ Created `ESCENARIO-A-BLUEPRINT.md` (53 KB, 15 slides)
- ✅ Created `ESCENARIO-B-BLUEPRINT.md` (75 KB, 15 slides)
- ✅ Created `README-BLUEPRINTS.md` (26 KB) - Complete usage guide
- ✅ Updated `CLAUDE.md` with new structure

**Key Features**:
- Blueprints are detailed Markdown "scripts" for generating PPTX presentations
- 100% data traceability to Executive Reports v2.0
- Complete specifications: content, data, visuals, design notes, speaker notes
- 4 conversion methods documented (Copilot, md2pptx, Pandoc, manual)
- SQM/FEN UChile corporate design guidelines included

**Files Created** (154 KB total):
- `PRESENTACIONES/ESCENARIO-A-BLUEPRINT.md`
- `PRESENTACIONES/ESCENARIO-B-BLUEPRINT.md`
- `PRESENTACIONES/README-BLUEPRINTS.md`
- `ARCHIVO/PRESENTACIONES-FINALES-LEGACY/README-DEPRECATION.md`

**Next Steps**:
- ✅ Style refinement completed (Session 2025-11-03b)
- Convert blueprints to PPTX using preferred method
- Present to SQM Investment Committee
- Update blueprints if Executive Reports reach v3.0

---

**Last Updated**: 2025-11-03 (Session: Blueprint style refinement complete)
**Maintained By**: Luis Rivera González + Claude AI
**Framework**: Claude Code Skills v1.0
**Project Status**:
- Executive Reports v2.0: ✅ Completed (2025-11-02)
- Presentation Blueprints v2.0: ✅ Completed (2025-11-03)
- Ready for PPTX generation and Investment Committee presentation
**License**: Project-specific (see individual skill directories for details)
