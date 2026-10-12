# Streamlit Hello App

A small Streamlit app that asks for your name and greets you with `Hello {name}!`.

## Prerequisites

- Python 3 (with `python3` on your PATH)
- [Make](https://www.gnu.org/software/make/) (optional; recommended for install and run)

## Install

### Option A: Make (recommended)

From the project root:

```bash
make build
```

This creates a local virtual environment in `.venv` (if it does not exist) and installs packages from `requirements.txt` (currently `streamlit` and its dependencies).

### Option B: Manual

```bash
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
```

On Windows (Command Prompt / PowerShell), use `.venv\Scripts\pip` instead of `.venv/bin/pip`.

## Run

```bash
make run
```

Open the URL Streamlit prints (typically http://localhost:8501), enter a name, and you should see the greeting.

Without Make:

```bash
.venv/bin/streamlit run app.py
```

## Make targets

| Target | Description |
|--------|-------------|
| `build` | Create `.venv` if needed and install dependencies from `requirements.txt` |
| `run` | Run `build`, then start the app with Streamlit |

## Project layout

- `app.py` — Streamlit UI
- `requirements.txt` — Python dependencies
- `Makefile` — `build` and `run` shortcuts
- `.venv/` — local virtual environment (created by install; listed in `.gitignore`)
