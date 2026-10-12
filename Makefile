.PHONY: build run

VENV := .venv
PIP := $(VENV)/bin/pip
STREAMLIT := $(VENV)/bin/streamlit

build:
	test -d $(VENV) || python3 -m venv $(VENV)
	$(PIP) install -r requirements.txt

run: build
	$(STREAMLIT) run app.py
