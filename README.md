# 🏋️‍♂️ Armwrestling Training Planner

An intelligent training planner for armwrestling athletes. Designed to model and manage training loads, exercise selection, periodization, and review — fully integrated with Telegram for convenient interaction.

---

## 🚀 Features

- Modular training plan generation
- Customizable exercise definitions
- Load balancing with intelligent periodization
- Telegram bot integration (view plans, send feedback)
- CI/CD with GitHub Actions + systemd deployment
- Pre-commit hooks for code quality enforcement

---

## 🧑‍💻 Developer Quickstart

### 1. 📦 Clone the project
```bash
git clone git@github.com:<your-username>/armwrestling_training_planner.git
cd armwrestling_training_planner
```

### 2. 🐍 Create a virtual environment
```bash
python3 -m venv .venv
source .venv/bin/activate
```

### 3. 📥 Install dependencies
```bash
pip install -r requirements/dev.txt
```

### 4. ✅ Install Git hooks
```bash
pre-commit install
pre-commit install --hook-type commit-msg
```
> This will enable code formatting, linting, and commit message validation.

### 5. 🔍 (Optional) Run checks manually
```bash
pre-commit run --all-files
```

---

## ⚙️ Scripts

- `scripts/check_commit_msg.sh`: Validates commit messages against Conventional Commits

---

## 🧪 Testing & CI

- Tests and linting are run automatically via GitHub Actions (`test.yml`)
- Ensure your code passes `black`, `flake8`, and `pytest`

---

## 🗂 Structure (simplified)

```
project/
├── core/             # Business logic
├── telegram/         # Bot interface
├── config/           # YAML config files (exercises, env)
├── systemd/          # Deployment templates
├── .github/workflows # CI/CD logic
```

---

## 🧠 Notes

- Python 3.10+ is recommended
- Uses `black` (line length 79), `flake8`, and strict commit hygiene
- Compatible with GitHub Codespaces and Unix-like environments

---

_Train smart. Win strong._ 💪
