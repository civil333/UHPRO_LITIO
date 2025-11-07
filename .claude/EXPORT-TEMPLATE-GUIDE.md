# Guía para Usar Esta Configuración .claude como Template Default

## 📋 Contenido de Tu Configuración Actual

Tu carpeta `.claude/` contiene:

```
.claude/
├── settings.local.json              # Configuración de permisos y output style
├── output-styles/
│   └── analitica-humana-v4-3.md    # Estilo de comunicación personalizado
└── skills/
    ├── skill-creator/               # Skill para crear nuevas skills
    ├── template-mba/                # Skill para documentos MBA
    └── whisper-transcription/       # Skill para transcripción audio/video
```

---

## 🎯 Métodos para Reutilizar Esta Configuración

### Método 1: Template Global (Recomendado)

Crea un template global que puedes copiar a cualquier proyecto nuevo.

#### Paso 1: Crear Template Base

```bash
# 1. Crear carpeta de templates en tu home
mkdir -p ~/claude-templates/default

# 2. Copiar tu configuración actual como template
cp -r "/Volumes/home/Documentos NAS/CURSOR/ANALISIS ESTADOS FINANCIEROS/.claude" \
      ~/claude-templates/default/
```

#### Paso 2: Limpiar Template (Opcional)

Elimina configuraciones específicas del proyecto actual:

```bash
cd ~/claude-templates/default/.claude

# Revisar y ajustar settings.local.json si tiene rutas específicas
# Por ejemplo, eliminar permisos muy específicos del proyecto
```

#### Paso 3: Usar Template en Nuevo Proyecto

```bash
# Ir a tu nuevo proyecto
cd /ruta/a/nuevo/proyecto

# Copiar template
cp -r ~/claude-templates/default/.claude .

# Verificar
ls -la .claude/
```

---

### Método 2: Script de Inicialización

Crea un script que configure automáticamente nuevos proyectos.

#### Crear el Script

```bash
# Crear script en tu home
nano ~/init-claude-project.sh
```

**Contenido del script:**

```bash
#!/bin/bash

# Script para inicializar proyecto con configuración Claude

# Colores
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}═══════════════════════════════════════${NC}"
echo -e "${BLUE}  Inicializando Proyecto con Claude${NC}"
echo -e "${BLUE}═══════════════════════════════════════${NC}"
echo ""

# Verificar que estamos en un directorio
if [ ! -d "$(pwd)" ]; then
    echo "Error: No se encontró directorio actual"
    exit 1
fi

# Verificar si ya existe .claude
if [ -d ".claude" ]; then
    echo "⚠️  Ya existe carpeta .claude en este proyecto"
    read -p "¿Sobrescribir? (y/n): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Operación cancelada"
        exit 0
    fi
    rm -rf .claude
fi

echo "📦 Copiando configuración Claude..."

# Copiar desde template
cp -r ~/claude-templates/default/.claude .

echo ""
echo -e "${GREEN}✅ Configuración Claude instalada${NC}"
echo ""
echo "Contenido:"
ls -la .claude/
echo ""
echo "Skills disponibles:"
ls -1 .claude/skills/
echo ""
echo -e "${GREEN}🚀 Proyecto listo para usar con Claude${NC}"
```

#### Dar Permisos y Usar

```bash
# Dar permisos de ejecución
chmod +x ~/init-claude-project.sh

# Crear alias para fácil acceso (agregar a ~/.zshrc o ~/.bashrc)
echo 'alias init-claude="~/init-claude-project.sh"' >> ~/.zshrc
source ~/.zshrc

# Usar en cualquier proyecto nuevo
cd /ruta/a/nuevo/proyecto
init-claude
```

---

### Método 3: Symlinks (Compartir Skills Globalmente)

Comparte las skills entre proyectos usando symlinks.

#### Configuración

```bash
# 1. Mover skills a ubicación global
mkdir -p ~/.claude-global/skills
cp -r "/Volumes/home/Documentos NAS/CURSOR/ANALISIS ESTADOS FINANCIEROS/.claude/skills/"* \
      ~/.claude-global/skills/

# 2. En cada proyecto nuevo, crear symlink
cd /ruta/a/nuevo/proyecto
mkdir -p .claude
ln -s ~/.claude-global/skills .claude/skills

# 3. Copiar solo settings y output-styles específicos
cp ~/claude-templates/default/.claude/settings.local.json .claude/
cp -r ~/claude-templates/default/.claude/output-styles .claude/
```

**Ventajas:**
- ✅ Skills compartidas entre proyectos
- ✅ Una actualización afecta todos los proyectos
- ✅ Ahorra espacio en disco

**Desventajas:**
- ⚠️ Cambios en skills afectan todos los proyectos
- ⚠️ Requiere mantener ~/.claude-global/ actualizado

---

### Método 4: Git Template Repository

Crea un repositorio Git para versionar tu configuración.

#### Configuración

```bash
# 1. Crear repositorio de template
mkdir ~/claude-config-template
cd ~/claude-config-template

# 2. Inicializar git
git init

# 3. Copiar configuración
cp -r "/Volumes/home/Documentos NAS/CURSOR/ANALISIS ESTADOS FINANCIEROS/.claude" .

# 4. Crear .gitignore
cat > .gitignore << 'EOF'
.DS_Store
*.log
EOF

# 5. Crear README
cat > README.md << 'EOF'
# Claude Configuration Template

Mi configuración personalizada de Claude Code con:
- Skills: skill-creator, template-mba, whisper-transcription
- Output style: analitica-humana-v4-3
- Permisos pre-configurados

## Uso

```bash
cd nuevo-proyecto
git clone ~/claude-config-template/.claude .
```
EOF

# 6. Commit inicial
git add .
git commit -m "Initial commit: Claude configuration template"
```

#### Usar en Nuevos Proyectos

```bash
# Opción A: Clonar completo
cd /ruta/a/nuevo/proyecto
git clone ~/claude-config-template/.claude .

# Opción B: Copiar sin .git
cd /ruta/a/nuevo/proyecto
cp -r ~/claude-config-template/.claude .
rm -rf .claude/.git
```

---

## 🔧 Personalización para Cada Proyecto

### 1. Ajustar Permisos en settings.local.json

Algunos permisos pueden ser específicos del proyecto:

```json
{
  "permissions": {
    "allow": [
      "Bash(find:*)",
      "Bash(ls:*)",
      "Bash(python3:*)",
      // Agregar permisos específicos del proyecto aquí
    ]
  }
}
```

### 2. Agregar/Remover Skills

```bash
# En el nuevo proyecto
cd .claude/skills

# Remover skill no necesaria
rm -rf whisper-transcription

# Agregar nueva skill específica del proyecto
cp -r ~/mi-skill-custom ./
```

### 3. Cambiar Output Style

```bash
# Crear nuevo output style
nano .claude/output-styles/mi-estilo.md

# Actualizar settings.local.json
{
  "outputStyle": "mi-estilo"
}
```

---

## 📦 Empaquetar y Distribuir

### Crear Package Distribuible

```bash
# Ir a tu proyecto base
cd "/Volumes/home/Documentos NAS/CURSOR/ANALISIS ESTADOS FINANCIEROS"

# Crear archivo tar.gz
tar -czf claude-config-template.tar.gz .claude/

# O crear zip
zip -r claude-config-template.zip .claude/

# Copiar a carpeta de templates
mv claude-config-template.tar.gz ~/claude-templates/
```

### Usar Package en Nuevo Proyecto

```bash
cd /ruta/a/nuevo/proyecto

# Extraer tar.gz
tar -xzf ~/claude-templates/claude-config-template.tar.gz

# O extraer zip
unzip ~/claude-templates/claude-config-template.zip

# Verificar
ls -la .claude/
```

---

## 🎯 Configuración Recomendada

### Estructura de Templates en Tu Home

```
~/
├── claude-templates/
│   ├── default/                    # Template base completo
│   │   └── .claude/
│   ├── minimal/                    # Template minimalista
│   │   └── .claude/
│   └── financial/                  # Template específico finanzas
│       └── .claude/
│
├── .claude-global/                 # Skills compartidas globalmente
│   └── skills/
│       ├── skill-creator/
│       ├── template-mba/
│       └── whisper-transcription/
│
└── init-claude-project.sh         # Script de inicialización
```

### Crear Templates Específicos

```bash
# Template minimalista (solo settings)
mkdir -p ~/claude-templates/minimal/.claude
cp .claude/settings.local.json ~/claude-templates/minimal/.claude/

# Template financiero (completo)
cp -r .claude ~/claude-templates/financial/

# Template desarrollo (sin whisper-transcription)
cp -r .claude ~/claude-templates/dev/.claude
rm -rf ~/claude-templates/dev/.claude/skills/whisper-transcription
```

---

## 🚀 Scripts de Conveniencia

### Script para Listar Templates

```bash
# ~/list-claude-templates.sh
#!/bin/bash

echo "Templates Claude disponibles:"
echo ""
for template in ~/claude-templates/*/; do
    name=$(basename "$template")
    echo "📦 $name"
    echo "   Ubicación: $template"
    if [ -d "$template/.claude/skills" ]; then
        echo "   Skills:"
        ls -1 "$template/.claude/skills/" | sed 's/^/      - /'
    fi
    echo ""
done
```

### Script para Actualizar Template

```bash
# ~/update-claude-template.sh
#!/bin/bash

echo "Actualizando template desde proyecto actual..."

# Copiar configuración actual al template default
cp -r .claude ~/claude-templates/default/

echo "✅ Template actualizado"
echo ""
echo "Para usar en nuevos proyectos:"
echo "  cd nuevo-proyecto && cp -r ~/claude-templates/default/.claude ."
```

---

## 💡 Mejores Prácticas

### 1. Mantener Templates Actualizados

Cuando mejores una skill o configuración:

```bash
# Actualizar template global
cp -r .claude/skills/mi-skill-mejorada ~/claude-templates/default/.claude/skills/
cp -r .claude/skills/mi-skill-mejorada ~/.claude-global/skills/
```

### 2. Documentar Cambios

Mantén un CHANGELOG en tu template:

```bash
echo "## $(date +%Y-%m-%d) - Updated whisper-transcription to v1.1" \
  >> ~/claude-templates/default/CHANGELOG.md
```

### 3. Versionamiento

```bash
# Crear versiones del template
cp -r ~/claude-templates/default ~/claude-templates/default-v1.0-backup
tar -czf ~/claude-templates/backups/default-v1.0-$(date +%Y%m%d).tar.gz \
  ~/claude-templates/default
```

### 4. Testing

Antes de actualizar el template global, prueba en proyecto de prueba:

```bash
# Crear proyecto test
mkdir ~/test-claude-config
cd ~/test-claude-config
cp -r .claude ~/test-claude-config/
# Probar que todo funciona
# Si está bien, actualizar template global
```

---

## 📚 Documentación Adicional

### Archivo README para Template

Crea `~/claude-templates/default/README.md`:

```markdown
# Claude Configuration Template

## Contenido

- **skills/skill-creator**: Crear nuevas skills profesionales
- **skills/template-mba**: Generar documentos Word MBA FEN UChile
- **skills/whisper-transcription**: Transcripción audio/video optimizada
- **output-styles/analitica-humana-v4-3**: Estilo de comunicación analítico
- **settings.local.json**: Permisos pre-configurados

## Instalación Rápida

```bash
cd tu-proyecto
cp -r ~/claude-templates/default/.claude .
```

## Versión

v1.0 - 2025-11-02
```

---

## ✅ Checklist de Exportación

Para exportar tu configuración actual:

- [ ] Crear carpeta de templates: `mkdir -p ~/claude-templates/default`
- [ ] Copiar `.claude`: `cp -r .claude ~/claude-templates/default/`
- [ ] Limpiar archivos temporales: `rm ~/claude-templates/default/.claude/.DS_Store`
- [ ] Crear README del template
- [ ] Crear script init-claude-project.sh
- [ ] Dar permisos: `chmod +x ~/init-claude-project.sh`
- [ ] Crear alias en ~/.zshrc
- [ ] Probar en proyecto de prueba
- [ ] Documentar skills incluidas
- [ ] Crear backup: `tar -czf template-backup.tar.gz ...`

---

## 🎉 Resultado Final

Una vez configurado, iniciar un nuevo proyecto con Claude será tan simple como:

```bash
cd nuevo-proyecto-financiero
init-claude

# O manualmente:
cp -r ~/claude-templates/default/.claude .
```

Y tendrás acceso inmediato a:
- ✅ Todas tus skills (skill-creator, template-mba, whisper-transcription)
- ✅ Tu output style personalizado
- ✅ Permisos pre-configurados
- ✅ Estructura profesional lista para usar

---

**Creado:** 2025-11-02
**Autor:** Luis Rivera González
**Proyecto Base:** ANALISIS ESTADOS FINANCIEROS
