#!/bin/bash
# ─────────────────────────────────────────────────────────────────────────────
# ALY6060 Assignment 4 — Git setup and push script
# Run this from the folder containing your project files.
# ─────────────────────────────────────────────────────────────────────────────

# ── STEP 1: Configure your identity (run once per machine) ───────────────────
git config --global user.name  "Your Full Name"
git config --global user.email "your@email.com"

# ── STEP 2: Initialize the repo ──────────────────────────────────────────────
git init
git branch -M main

# ── STEP 3: Create .gitignore ────────────────────────────────────────────────
cat > .gitignore << 'EOF'
# Python
__pycache__/
*.pyc
*.pyo
.env
venv/
.venv/

# OS
.DS_Store
Thumbs.db

# Jupyter
.ipynb_checkpoints/

# Large build artifacts
node_modules/
*.log
EOF

# ── STEP 4: Stage all project files ──────────────────────────────────────────
git add README.md
git add QMS_Dashboard.html
git add dashboard.py
git add Dashboard_QMS_Analytics.png
git add Assignment4_Complete.docx
git add .gitignore

# ── STEP 5: Initial commit ───────────────────────────────────────────────────
git commit -m "feat: ALY6060 Assignment 4 — QMS analytics dashboard and report

- Part 1: 1000-word APA report on Industry 4.0 and QMS analytics
  Case study: Sanchez-Marquez et al. (2020), Computers in Industry
  Citations: Duan & Xu (2021), Escobar et al. (2021)

- Part 2: Multidimensional storytelling dashboard
  - Interactive FTT regression simulator (live slider)
  - 3-month feedback lag time series visualization
  - Full model strength matrix (7 regression relationships)
  - Per-production-model R² comparison (Models A, B, C, D)
  - Standalone HTML (Chart.js) + Python/Matplotlib static export

Data reconstructed from published regression equations and figures."

# ── STEP 6: Add remote and push ──────────────────────────────────────────────
# Replace the URL below with your actual GitHub repo URL.
# Create the repo first at https://github.com/new (name it aly6060-assignment4)
# then paste the SSH or HTTPS URL here.

git remote add origin https://github.com/Ritiksh0h/aly6060-assignment4.git

git push -u origin main