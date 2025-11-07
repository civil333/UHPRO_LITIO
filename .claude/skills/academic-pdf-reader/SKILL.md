---
name: academic-pdf-reader
description: Efficiently read and analyze large academic PDFs (case studies, textbooks, presentations, readings) through intelligent chunking, targeted section extraction, search capabilities, and structured summaries. Use when PDFs exceed direct reading capacity, when specific sections are needed, or when organized analysis of lengthy documents is required.
---

# Academic PDF Reader

## Purpose

This skill enables efficient analysis of large academic PDFs that exceed standard reading capacity. It employs adaptive strategies including intelligent chunking, targeted section reading, search-first approaches, and summary extraction to handle extensive case studies, textbook chapters, lecture presentations, and research papers.

Designed specifically for MBA finance coursework, this skill recognizes financial terminology in Spanish, extracts data tables, identifies case study structures, and creates organized summaries suitable for academic analysis.

## When to Use This Skill

Activate this skill when:
- User requests analysis of PDF files larger than ~150KB or >15 pages
- User needs specific sections or data from lengthy PDFs
- User asks to read files split into multiple parts (_parte 1, _parte 2)
- User wants to search for specific terms or concepts within PDFs
- User needs tables, annexes, or financial data extracted
- User requests summaries or structured notes from academic readings
- Error occurs: "PDF is too extensive to read"

## How to Use This Skill

### Step 1: Assess Document & User Needs

When user provides a PDF file path or requests PDF analysis:

1. **Check file size** using Read tool with limit parameter
2. **Ask clarifying questions** to determine strategy:
   - "Do you need the complete document or specific sections?"
   - "Are you looking for particular data, formulas, or concepts?"
   - "Would you like a summary or detailed analysis?"
3. **Detect multi-part files** by checking for "_parte 1" pattern

### Step 2: Select Reading Strategy

Choose the appropriate approach based on user needs:

**Strategy A - Complete Sequential Reading** (for thorough analysis):
```
For PDFs >15 pages:
1. Read pages 1-15 (introduction, context)
2. Note key themes, annexes mentioned
3. Read pages 16-30 (continue main content)
4. Read pages 31-45 (continue)
5. Synthesize findings across all chunks
```

**Strategy B - Targeted Section Reading** (for efficiency):
```
1. Read first 2-3 pages to understand structure
2. Identify section/annex locations
3. Jump directly to requested pages
4. Extract relevant content only
```

**Strategy C - Search-First Approach** (for specific queries):
```
1. Read table of contents or first pages
2. Make educated guess about data location
3. Read those specific pages
4. Expand search if needed
```

**Strategy D - Summary Extraction** (for overviews):
```
1. Read introduction (pages 1-3)
2. Read conclusions/recommendations
3. Scan section headers throughout
4. Review key tables/annexes
5. Synthesize without reading every word
```

### Step 3: Execute Reading with Proper Techniques

**For chunked reading:**
```
Read(file_path="path/to/file.pdf", offset=1, limit=15)
# Note key points
Read(file_path="path/to/file.pdf", offset=16, limit=15)
# Continue, maintaining context
```

**For multi-part files:**
```
Read "..._parte 1.pdf" completely
Read "..._parte 2.pdf" completely
Merge content, note page numbering
```

**For table extraction:**
```
Read page containing table
Convert to markdown table format
Preserve numerical formatting
```

### Step 4: Structure & Deliver Output

Organize extracted information using clear formats:

**For case studies:**
```markdown
## Case Context
[Summary from pages 1-3]

## Key Questions
[Identified from case]

## Financial Data
### Anexo 1: [Table name]
| Year | Sales | Profit |
|------|-------|--------|
[Data extracted]

## Analysis & Recommendations
[Synthesized from complete reading]
```

**For lecture slides:**
```markdown
## [Topic Name]

### Key Concepts
- Concept 1: [definition]
- Concept 2: [definition]

### Formulas
**WACC Formula:**
WACC = (1 - τ)r_D(D/V) + r_E(E/V)
Where: [parameter definitions]

### Examples
[Extracted from slides]
```

**For academic readings:**
```markdown
## Chapter Summary: [Title]

### Main Arguments
1. [Point 1]
2. [Point 2]

### Key Terminology
- **Término (ES)** = Term (EN): Definition

### Important Tables/Figures
[Extracted and described]

### Application to Course
[Relevance notes]
```

## Available Resources

### Scripts (`scripts/` directory)

- **pdf_page_extractor.py**: Extract specific page ranges from PDFs
  - Usage: `python pdf_page_extractor.py input.pdf output.pdf 10 25`
  - Returns: New PDF containing only pages 10-25

- **pdf_table_extractor.py**: Extract tables and convert to CSV/markdown
  - Usage: `python pdf_table_extractor.py input.pdf`
  - Returns: Structured table data

- **pdf_search.py**: Search for terms within PDF
  - Usage: `python pdf_search.py input.pdf "WACC"`
  - Returns: Page numbers and surrounding context

### References (`references/` directory)

- **financial-terms-es-en.md**: Spanish-English financial terminology mapping

### Assets (`assets/` directory)

- **extraction-template.md**: Structured template for case study analysis

## Best Practices

1. **Minimize Token Usage**: Read only what's necessary based on user's actual need
2. **Maintain Context**: When chunking, note key themes to carry forward
3. **Preserve Accuracy**: For financial data, maintain exact numbers and formatting
4. **Respect Copyright**: Note "NO COPIAR" warnings, explain without reproducing extensively
5. **Use Spanish Terms**: Maintain original terminology with English equivalents when helpful
6. **Structure Output**: Always organize findings clearly with headers and formatting
7. **Cross-Reference**: Link main text to relevant annexes and tables
8. **Validate Data**: Double-check numbers when extracting from tables

## Financial Analysis Specific Guidelines

### Formula Extraction
When encountering formulas:
1. Extract exact notation
2. Define all parameters
3. Note any specific context (e.g., "para división hostelería")
4. Provide example calculation if shown

### Table Processing
For financial tables:
1. Preserve column alignment
2. Maintain time-series order
3. Note units (millones, porcentaje, etc.)
4. Calculate growth rates if relevant

### Case Study Structure Recognition
Standard case components to identify:
- **Context**: Company background, situation, date
- **Decision Point**: What must be decided?
- **Data Annexes**: Financial statements, market data, comparables
- **Questions**: Explicit or implicit analysis required

### Spanish Financial Terminology
Common terms to recognize:
- Costo de capital = Cost of capital
- Apalancamiento = Leverage
- Recursos propios = Equity
- Rentabilidad = Return/Profitability
- Tasa de aceptación = Hurdle rate
- Prima de riesgo = Risk premium
- Flujos de caja = Cash flows
- Valor presente neto (VPN) = Net present value (NPV)

## Examples

### Example 1: Large Case Study (Complete Analysis)

**User Request:** "Analyze the complete Marriott case study including all annexes"

**Process:**
1. Read pages 1-6 (case context, company background, financial strategy)
2. Note: Annexes 1-5 contain financial data, need separate reading
3. Read pages 7-8 (Anexo 1: Financial history 1978-1987)
4. Read pages 9-10 (Anexos 2-3: Segment data, comparables)
5. Read pages 11-12 (Anexos 4-5: Market data, risk premiums)
6. Synthesize: Case is about calculating divisional WACC for three divisions

**Output:**
```markdown
## Marriott Corporation Case Analysis

### Case Context
- Date: April 1988
- Decision Maker: Dan Cohrs, VP Project Finance
- Task: Determine hurdle rates for three divisions

### Company Overview
- 1987 Sales: $6,500M (24% growth)
- ROE: 22%
- Three divisions: Hotels (41% sales), Contract Services (46%), Restaurants (13%)

### Financial Strategy Elements
1. Manage vs. own hotel assets
2. NPV-based project selection
3. Optimize debt usage (59% of capital)
4. Repurchase undervalued shares

### Key Data Extracted

#### Anexo 1: Financial History
| Year | Sales | EBIT | Debt | Equity | ROE |
|------|-------|------|------|--------|-----|
| 1987 | 6,522| 489  | 2,498| 810   | 22.2%|
[Full table...]

#### Table A: Divisional Parameters
| Division | Target D/V | Spread |
|----------|------------|--------|
| Hotels   | 74%        | 1.10%  |
| Services | 40%        | 1.40%  |
| Restaurants| 42%      | 1.80%  |

### Questions to Address
1. Calculate divisional cost of equity using CAPM
2. Calculate divisional cost of debt
3. Calculate divisional WACC
4. Compare to corporate hurdle rate

### Next Steps for Analysis
- Unlever comparable company betas (Anexo 3)
- Select appropriate risk-free rate (Table B: 30yr, 10yr, or 1yr)
- Choose risk premium period (Anexo 5)
- Calculate weighted average cost of capital for each division
```

### Example 2: Multi-Part Reading

**User Request:** "Read CAP 5 Costo de Capital - both parts"

**Process:**
1. Detect files: "CAP 5 Costo de Capital_parte 1.pdf" and "_parte 2.pdf"
2. Read parte 1 completely (pages 1-30)
3. Note: Ends mid-section on WACC calculation
4. Read parte 2 (pages 31-60)
5. Check for overlap at boundary
6. Merge into coherent summary

**Output:**
```markdown
## Capítulo 5: Costo de Capital (Complete)
*Source: Parte 1 (pp. 1-30) + Parte 2 (pp. 31-60)*

### Section 1: Introduction to Cost of Capital (pp. 1-5)
[Summary...]

### Section 2: WACC Formula (pp. 15-20)
**Formula:**
WACC = (1-τ)r_D(D/V) + r_E(E/V)

[Continues through all sections from both files...]

### Key Examples
1. Example 5.1 (p. 23): Corporate WACC calculation
2. Example 5.2 (p. 38): Divisional adjustments
[etc.]
```

### Example 3: Targeted Table Extraction

**User Request:** "Extract all comparable company data from Marriott Anexo 3"

**Process:**
1. Read case context to identify anexo location
2. Jump directly to page 9 (Anexo 3)
3. Extract table with company names, betas, leverage, revenues
4. Format as structured markdown

**Output:**
```markdown
## Anexo 3: Comparable Company Data

### Hotel Companies
| Company | Beta | Leverage (%) | Revenue ($B) | Description |
|---------|------|--------------|--------------|-------------|
| Hilton Hotels | 0.76 | 14 | 0.77 | Owns, manages, licenses hotels |
| Holiday Corp | 1.35 | 79 | 1.66 | Hotels/restaurants, casinos |
| La Quinta Motor Inns | 0.89 | 69 | 0.17 | Owns, operates motor inns |
| Ramada Inns | 1.36 | 65 | 0.75 | Hotels and restaurants |

### Restaurant Companies
| Company | Beta | Leverage (%) | Revenue ($B) | Description |
|---------|------|--------------|--------------|-------------|
| Church's Fried Chicken | 1.45 | 4 | 0.39 | Franchises, gaming |
| Collins Foods | 1.45 | 10 | 0.57 | KFC franchise |
| Frisch's Restaurants | 0.57 | 6 | 0.14 | Franchise restaurants |
| Luby's Cafeterias | 0.76 | 1 | 0.23 | Operates cafeterias |
| McDonald's | 0.94 | 23 | 4.89 | Franchise system |
| Wendy's | 1.32 | 21 | 1.05 | Franchise system |

### Analysis Notes
- Marriott Corporation: Beta = 1.11, Leverage = 41%, Revenue = $6.52B
- Hotel companies show higher leverage (avg ~57%) than restaurants (avg ~11%)
- Betas range from 0.57 (Frisch's) to 1.45 (Church's, Collins)
```

### Example 4: Lecture Presentation Search

**User Request:** "Find the explanation of beta apalancada vs desapalancada in Clase 2"

**Process:**
1. Read first 5 pages of Clase 2 PDF to understand structure
2. Search for keywords: "beta", "apalancad", "leverage"
3. Identify likely page range (e.g., pages 15-20)
4. Read those pages in detail
5. Extract formula and explanation

**Output:**
```markdown
## Beta Apalancada vs Desapalancada (Clase 2, pp. 17-19)

### Conceptos Clave

**Beta Desapalancada (βu - Unlevered Beta)**
- Refleja solo el riesgo del negocio (business risk)
- No incluye el efecto del apalancamiento financiero
- Útil para comparar empresas con diferentes estructuras de capital

**Beta Apalancada (βL - Levered Beta)**
- Refleja riesgo del negocio + riesgo financiero
- Incluye el efecto de la deuda
- Es el beta observado en el mercado para empresas con deuda

### Fórmulas de Conversión

**Desapalancar (Hamada 1972):**
βu = βL / [1 + (1-τ)(D/E)]

**Reapalancar:**
βL = βu × [1 + (1-τ)(D/E)]

Donde:
- τ = tasa impositiva corporativa
- D/E = ratio deuda/patrimonio (book o market value)

### Ejemplo Práctico
Una empresa comparable tiene:
- βL observado = 1.20
- D/E = 0.50
- τ = 30%

Desapalancar:
βu = 1.20 / [1 + (1-0.30)(0.50)]
βu = 1.20 / 1.35 = 0.89

Si nuestra empresa tiene D/E objetivo = 1.00:
βL = 0.89 × [1 + (0.70)(1.00)]
βL = 0.89 × 1.70 = 1.51
```

### Example 5: Quick Data Lookup

**User Request:** "What was UST Inc.'s operating margin in 1997?"

**Process:**
1. Identify file: "Caso Política de Deuda UST Inc 2025.pdf"
2. Read first 3 pages to locate financial data section
3. Find annexes or financial summary table
4. Extract specific data point
5. Provide context

**Output:**
```markdown
## UST Inc. Operating Margin (1997)

**Operating Margin: 42.8%**

**Context from Financial Data:**
- Sales (1997): $1,423 million
- Operating Income: $609 million
- Operating Margin: 42.8% (industry-leading)

**Comparison:**
UST's operating margin significantly exceeds tobacco industry average (~25-30%), reflecting:
- Premium product positioning (Copenhagen, Skoal brands)
- Market dominance (77% share in moist snuff category)
- Limited competition and strong pricing power
- Low production costs relative to cigarettes

**Source:** Anexo 2, Financial Statements 1994-1997
```

## Quality Standards

Before delivering output:
- [ ] All referenced page numbers are accurate
- [ ] Tables maintain proper formatting and alignment
- [ ] Financial data preserves exact numbers (no rounding errors)
- [ ] Spanish terminology is preserved with context
- [ ] Multi-part files are read completely without gaps
- [ ] Annexes and main text are properly cross-referenced
- [ ] Formulas are extracted with parameter definitions
- [ ] Copyright warnings ("NO COPIAR") are respected
- [ ] Output is structured with clear headers
- [ ] Context is maintained across reading chunks

## Common Pitfalls to Avoid

- ❌ **Reading entire large PDF at once**: Always chunk if file exceeds ~150KB
- ❌ **Losing context between chunks**: Maintain running notes of key themes
- ❌ **Ignoring multi-part files**: Check for "_parte 1/2" patterns
- ❌ **Misaligning table data**: Preserve column structure carefully
- ❌ **Translating unnecessarily**: Keep Spanish terms unless English is needed
- ❌ **Skipping annexes**: Financial cases depend heavily on data tables
- ❌ **Over-reading**: Don't read entire document if user needs specific section
- ❌ **Format confusion**: Note whether numbers use commas vs periods (Chilean format)

## Technical Implementation Notes

### PDF Reading Capacity
- Direct reading limit: ~150KB or ~15 pages per Read call
- Use `offset` and `limit` parameters for controlled chunking
- Example: `Read(file_path, offset=1, limit=15)` reads pages 1-15

### Multi-Part File Detection
Check for common patterns:
- `_parte 1.pdf` / `_parte 2.pdf`
- `_part 1.pdf` / `_part 2.pdf`
- `(1 of 2).pdf` / `(2 of 2).pdf`

When detected, read all parts sequentially and merge content.

### Table Extraction Best Practices
1. Tables in PDFs may have formatting challenges
2. Extract data row by row, preserving structure
3. Convert to markdown tables for clarity
4. Note any merged cells or complex structures
5. Verify numerical data accuracy

### Context Preservation During Chunking
When reading large PDFs in chunks:
1. After each chunk, note key themes/topics
2. Carry forward context to next chunk
3. Look for connections between sections
4. Maintain outline of document structure
5. Cross-reference when reassembling

### Chilean Number Format
Financial documents may use:
- **Periods** for thousands: 1.234.567
- **Commas** for decimals: 45,67
- Convert to markdown tables carefully to avoid confusion

## Performance Considerations

- **Token efficiency**: Reading in chunks consumes more tokens than single read
- **Time**: Sequential chunking takes longer than direct read
- **Balance**: Use targeted reading when possible to minimize both
- **Best for thoroughness**: Complete sequential reading
- **Best for speed**: Targeted section reading
- **Best for overview**: Summary extraction strategy

## Integration with Other Skills

### With template-mba skill:
1. Use academic-pdf-reader to extract case data
2. Analyze and perform calculations
3. Use template-mba to format final document

### With course materials:
- Complements existing CASO_UST_RESOLUCION markdown files
- Enables reading of CLASES/ presentations
- Facilitates access to LECTURAS/ chapters
- Supports analysis of TRABAJO GUIA y CASOS/ materials

## Future Enhancements

Potential additions:
- OCR support for scanned PDFs
- Automated table-of-contents generation
- Batch processing multiple PDFs
- Citation extraction for academic papers
- Figure/chart description and analysis
- Automatic quiz generation from readings
- Flashcard creation for key concepts

## License & Attribution

This skill is designed for academic use within the MBA Finance Management Course (Dirección de Finanzas) at Universidad de Chile, FEN. Respect copyright notices on course materials ("NO COPIAR").

---

**Version:** 1.0
**Last Updated:** 2025
**Author:** Created for CURSO DIRECCION DE FINANZAS
