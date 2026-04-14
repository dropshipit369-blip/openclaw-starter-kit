# OpenClaw Starter Kit

**A free, deployable 2-agent system for OpenClaw.** Orchestrator + Builder, pre-configured, one-command install.

Not a prompt pack. Not a PDF. A real multi-agent setup you can run in 60 seconds.

---

## Quick Start

```bash
git clone https://github.com/dropshipit369-blip/openclaw-starter-kit.git
cd openclaw-starter-kit
bash scripts/bootstrap.sh
```

That's it. The bootstrap script installs OpenClaw, copies configs, creates workspaces, and validates.

---

## What's Inside

```
openclaw-starter-kit/
  config/
    openclaw.json          # Gateway + agent config (loopback, token auth)
  workspaces/
    orchestrator/          # Routes tasks, delegates to builder
      AGENTS.md
      SOUL.md
      TOOLS.md
      memory/
    builder/               # Implements code, minimal safe changes
      AGENTS.md
      SOUL.md
      memory/
  scripts/
    bootstrap.sh           # 5-step install script (Linux)
```

**12 files. 2 agents. Runs on any machine with Node.js.**

---

## The 2 Agents

| Agent | Role | Model |
|-------|------|-------|
| **Orchestrator** | Front door. Routes coding tasks to Builder, handles everything else. | gpt-5.4-mini |
| **Builder** | Implements code. Minimal, safe changes. Flags broken assumptions early. | gpt-5.4-mini |

---

## Config Highlights

- **Gateway:** loopback-only binding (not exposed to the internet)
- **Auth:** token-based via `OPENCLAW_GATEWAY_TOKEN` env var
- **Port:** 18789
- **Max concurrent:** 4 agents
- **Heartbeat:** 30m

---

## Want More Agents?

This starter kit gets you running. The full kits add **hardened security, cost optimization, rescue profiles, and specialist agents** for specific workflows.

### Free vs. Paid Comparison

| Feature | Starter (Free) | Base Kit ($39) | All-5 Bundle ($49) |
|---------|:-:|:-:|:-:|
| Agents | 2 | 5 | **25** |
| Files | 12 | 56 | **200+** |
| Orchestrator | yes | yes | yes |
| Builder | yes | yes (sandboxed) | yes |
| Reviewer (read-only auditor) | - | yes | yes |
| Researcher (evidence gathering) | - | yes | yes |
| Ops (diagnostics + monitoring) | - | yes | yes |
| Niche variants (agency, creator, support, trading) | - | - | **all 4** |
| Hardened gateway config | basic | yes | yes |
| Cost controls (55m heartbeat, model routing) | - | yes | yes |
| Per-agent tool policies | - | yes | yes |
| Rescue profile (VPS recovery) | - | yes | yes |
| macOS + Linux bootstrap | Linux only | both | both |
| systemd + launchd service templates | - | yes | yes |
| Hardening checklist | - | yes | yes |
| Troubleshooting guide | - | yes | yes |
| VPS migration guide | - | yes | yes |
| Client handover docs | - | yes | yes |

### Get the Full Kits

| Kit | What's in it | Price | Link |
|-----|-------------|-------|------|
| **Base Kit** | 5 agents, 56 files, hardened config, cost controls | $39 | [Get it](https://dropshipper117.gumroad.com/l/fvdvo) |
| **Agency Variant** | Client delivery, project management, QA agents | $22 | [Get it](https://dropshipper117.gumroad.com/l/pjtpl) |
| **Creator Variant** | Content pipeline, platform-aware writing, brand voice | $22 | [Get it](https://dropshipper117.gumroad.com/l/opifj) |
| **Support Variant** | Ticket triage, escalation rules, SLA monitoring | $22 | [Get it](https://dropshipper117.gumroad.com/l/hyriv) |
| **Trading Variant** | Market analysis, risk framework, portfolio ops | $22 | [Get it](https://dropshipper117.gumroad.com/l/tvvhv) |
| **All-5 Bundle** | Everything above. 25 agents, 200+ files. | **$49** | [Get it](https://dropshipper117.gumroad.com/l/wibbdo) |

> The bundle saves 61% vs. buying separately ($127 -> $49).

---

## Architecture

```
User request
    |
    v
[Orchestrator] -- classifies + routes
    |
    v
[Builder] -- implements code, returns result
    |
    v
[Orchestrator] -- synthesizes + responds
```

In the full Base Kit, this expands to a 5-agent system with a Reviewer (read-only auditor), Researcher (evidence gathering), and Ops (diagnostics) — each with isolated tool policies and sandboxing.

---

## Requirements

- Node.js 18+
- npm
- Linux (macOS bootstrap included in paid kits)

---

## FAQ

**Is this a SaaS?**
No. You own every file. Run it on your machine, your VPS, your infrastructure. No accounts, no API keys to us, no lock-in.

**What's OpenClaw?**
An open-source AI agent framework. This kit configures it for multi-agent workflows with pre-built agent workspaces, routing, and security defaults.

**Can I modify the configs?**
Yes. Everything is plain JSON and Markdown. Change models, add agents, adjust routing — it's your system.

**What's the difference between this and the paid kits?**
This gets you running with 2 agents. The paid kits add specialist agents, hardened security, cost optimization, service templates, rescue profiles, and full documentation. See the comparison table above.

---

## Links

- [ClawRoom OS](https://clawroomos.com) — all products + blog
- [Twitter/X](https://x.com/clawroomos) — weekly threads on AI agent architecture
- [Free updates](https://buttondown.com/clawroomos) — new templates + config tips

---

## License

MIT. Use it, modify it, ship it.
