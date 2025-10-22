<div align="center">

# 🚀 Quantum Computing Lab

### *Explore quantum computing with Qiskit powered by Google Gemini AI*

[![Docker](https://img.shields.io/badge/Docker-Ready-2496ED?logo=docker&logoColor=white)](https://www.docker.com/)
[![JupyterLab](https://img.shields.io/badge/JupyterLab-F37626?logo=jupyter&logoColor=white)](https://jupyter.org/)
[![Qiskit](https://img.shields.io/badge/Qiskit-6929C4?logo=qiskit&logoColor=white)](https://qiskit.org/)
[![Gemini](https://img.shields.io/badge/Gemini_AI-8E75B2?logo=google&logoColor=white)](https://ai.google.dev/)

A production-ready Docker environment for quantum computing experiments combining **JupyterLab**, **Qiskit**, and **Google Gemini AI CLI**.

</div>

---

## 📋 Table of Contents

- [Prerequisites](#-prerequisites)
- [Getting Started](#-getting-started)
- [Gemini Authentication](#-gemini-authentication)
- [Accessing JupyterLab](#-accessing-jupyterlab)
- [Managing the Environment](#-managing-the-environment)
- [Troubleshooting](#-troubleshooting)
- [Documentation](#-documentation)

---

## 🔧 Prerequisites

### Docker Installation

<details>
<summary><b>🍎 macOS</b></summary>

<br>

#### Option 1: OrbStack (Recommended)
**Lighter and faster than Docker Desktop**

1. Visit **[OrbStack](https://orbstack.dev/)**
2. Download and install OrbStack
3. Launch OrbStack from Applications

#### Option 2: Docker Desktop

1. Visit **[Docker Desktop for Mac](https://www.docker.com/products/docker-desktop/)**
2. Download and install Docker Desktop
3. Launch Docker Desktop

</details>

<details>
<summary><b>🪟 Windows</b></summary>

<br>

#### Docker Desktop

1. Visit **[Docker Desktop for Windows](https://www.docker.com/products/docker-desktop/)**
2. Download Docker Desktop for Windows
3. Install Docker Desktop
4. ⚠️ **Important:** Ensure WSL 2 backend is enabled during installation
5. Launch Docker Desktop

</details>

---

## 🚀 Getting Started

### Step 1: Clone or Navigate to Repository

```bash
cd /path/to/quantum-computing-lab
```

### Step 2: Launch the Environment

Start JupyterLab in detached mode:

```bash
docker compose up -d
```

**What happens:**
- 📦 Pulls the Jupyter base notebook image
- 🛠️ Installs vim, curl, Node.js, and Gemini CLI
- 🌐 Starts JupyterLab on port `8888`

---

## 🔐 Gemini Authentication

### Configure Gemini CLI

Once inside JupyterLab, open a terminal and run:

```bash
gemini
```

### Authentication Flow

Follow these steps to authenticate:

1. **Copy the URL** provided by the CLI
2. **Open the URL** in your browser
3. **Authorize** the application with your Google account
4. **Copy the authorization code** back to the terminal

> 💡 **Visual Guide:** See the authentication flow below

![Gemini CLI Authentication Flow](docs/images/gemini-cli-auth.png)

---

## 🌐 Accessing JupyterLab

Open your browser and navigate to:

```
http://localhost:8888
```

### 🔑 Login Credentials

| Field | Value |
|-------|-------|
| **Token** | `token` |

### Quick Access URL

```
http://localhost:8888/?token=token
```

---

## 🎮 Managing the Environment

### Common Commands

| Action | Command |
|--------|---------|
| **Stop container** | `docker compose down` |
| **View logs** | `docker compose logs -f` |
| **Restart container** | `docker compose restart` |
| **Rebuild** | `docker compose up -d --build` |

---

## 🔍 Troubleshooting

### Port Already in Use

If port `8888` is already occupied:

```bash
# Edit docker-compose.yaml: change "8888:8888" to "8889:8888"
# Then access via http://localhost:8889
```

### Container Won't Start

Check the logs for errors:

```bash
docker compose logs jupyterlab
```

### Reset Everything

Nuclear option - complete reset:

```bash
docker compose down -v
docker compose up -d
```

---

## 📚 Documentation

### Official Resources

| Resource | Link |
|----------|------|
| **Gemini CLI** | [ai.google.dev/gemini-api/docs/cli](https://ai.google.dev/gemini-api/docs/cli) |
| **Qiskit** | [qiskit.org/documentation](https://qiskit.org/documentation/) |
| **Docker** | [docs.docker.com](https://docs.docker.com/) |
| **Docker Compose** | [docs.docker.com/compose](https://docs.docker.com/compose/) |
| **JupyterLab** | [jupyterlab.readthedocs.io](https://jupyterlab.readthedocs.io/) |
