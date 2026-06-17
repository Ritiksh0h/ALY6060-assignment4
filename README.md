# ALY6060: Decision Support & Business Intelligence
## Assignment 4 — Implementing Embedded Analytics

**Course:** ALY6060 — Decision Support & Business Intelligence  
**Institution:** Northeastern University  
**Topic:** Industry 4.0 and the Future of Quality Management Analytics  
**Case Study:** Sanchez-Marquez et al. (2020), *Computers in Industry, 115*, Article 103183

---

## Project Overview

This project analyzes a real-world manufacturing case study through the lens of Industry 4.0, examining how advanced data analytics can transform quality management systems (QMS). The work consists of two parts:

- **Part 1** — A 1,000-word academic report answering three questions: how Industry 4.0 will affect the case study company, what the company is currently doing to prepare, and what BI tool recommendations would improve their analytics implementation.
- **Part 2** — A multidimensional, storytelling data visualization dashboard built in Python (Matplotlib) and HTML/JavaScript (Chart.js) that traces the full defect chain from factory floor to customer complaint and back.

---

## Repository Structure

```
.
├── README.md                          # This file
├── Assignment4_Complete.docx          # Full submission: Part 1 report + embedded dashboard
├── QMS_Dashboard.html                 # Standalone interactive dashboard (open in any browser)
├── dashboard.py                       # Python script to regenerate static dashboard charts
└── Dashboard_QMS_Analytics.png        # High-resolution static export (300 DPI)
```

---

## Dashboard Story — Four Acts

The dashboard is structured as a narrative, not a collection of charts. Each section answers a specific analytical question from the case study.

| Act | Question answered | Chart type |
|-----|------------------|------------|
| I | Where does quality break down? | Process flow + interactive regression simulator |
| II | Is the feedback loop fast enough? | Time series with lag visualization |
| III | Which KPIs actually matter? | Model strength matrix (all 7 regression relationships) |
| IV | Why do results vary by production model? | Grouped bar chart — pooled vs. per-model R² |

---

## Data Sources

All data is reconstructed directly from the published case study. No external datasets were used.

| Variable | Source | Value |
|----------|--------|-------|
| FTT → R1000 0MIS regression | Table 4, Fig. 7 | R²-pred = 76.86%, coeff = −0.197 |
| R1000 1MIS ↔ R1000 3MIS | Section 4.1.1 | R²-pred = 80%, ρ > 0.9 |
| D1000 → R1000 0MIS | Table 5, Fig. 8 | R²-pred = 56.71% |
| PA TGW B → R1000 0MIS (t−3) | Fig. 12 | R²-pred = 62% |
| Model A: EL D1000 → R1000 0MIS | Fig. 18 | R²-pred ≈ 60% |
| Model C: D1000 → R1000 0MIS | Fig. 20 | R²-pred ≈ 30% |
| Model D: ONLINE % → R1000 3MIS | Fig. 21 | R²-pred ≈ 21% |
| Feedback lag | Section 4.1.2 | 3 months (t−3) |
| Defect leak rate | Section 4.1.1 | 0.8–0.9% (Type II error) |

---

## How to Run

### Interactive Dashboard (recommended)
Open `QMS_Dashboard.html` directly in any modern browser. No installation required.

```bash
open QMS_Dashboard.html          # macOS
start QMS_Dashboard.html         # Windows
xdg-open QMS_Dashboard.html      # Linux
```

The dashboard includes a live FTT slider that uses the actual regression equation from the paper to simulate warranty repair predictions in real time.

### Static Python Dashboard
Requires Python 3.8+ with Matplotlib and NumPy.

```bash
pip install matplotlib numpy
python dashboard.py
```

Output: `dashboard.png` and `dashboard_hires.png` (300 DPI) in the working directory.

---

## References

Duan, L., & Xu, L. D. (2021). Data analytics in Industry 4.0: A survey. *Information Systems Frontiers, 24*(6), 1–17. https://doi.org/10.1007/s10796-021-10190-0

Escobar, C. A., McGovern, M. E., & Morales-Menendez, R. (2021). Quality 4.0: A review of big data challenges in manufacturing. *Journal of Intelligent Manufacturing, 32*(8), 2319–2334. https://doi.org/10.1007/s10845-021-01765-4

Sanchez-Marquez, R., Albarracín Guillem, J. M., Vicens-Salort, E., & Jabaloyes Vivas, J. (2020). Diagnosis of quality management systems using data analytics: A case study in the manufacturing sector. *Computers in Industry, 115*, Article 103183. https://doi.org/10.1016/j.compind.2019.103183

---

## Tools Used

| Tool | Purpose |
|------|---------|
| Python 3 + Matplotlib | Static dashboard chart generation |
| HTML + Chart.js 4.4.1 | Interactive dashboard |
| Microsoft Word (docx) | Academic report |
| Node.js + docx npm | Programmatic Word document generation |
