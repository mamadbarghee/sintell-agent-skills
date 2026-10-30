# SINTELL Agent Skills

A curated, numbered collection of the open-source Claude Code skills, agents and tools we use at **[SINTELL](https://sintell.ir)**. Every entry is a **git submodule pointing to its original repository**: nothing is copied or renamed, each project keeps its authors, its license and its own updates. Our part is the selection, the order and the install helper.

مجموعه‌ای گزیده و شماره‌گذاری‌شده از اسکیل‌ها، ایجنت‌ها و ابزارهای متن‌باز Claude Code که در **[سینتل](https://sintell.ir)** استفاده می‌کنیم. هر مورد یک **git submodule به مخزنِ اصلیِ خودش** است: چیزی کپی یا تغییرنام داده نشده و هر پروژه نامِ سازنده، مجوز و به‌روزرسانی‌های خودش را دارد. سهمِ ما انتخاب، ترتیب و اسکریپتِ نصب است.

| # | Folder | What it is | Author | License |
|---|---|---|---|---|
| 01 | `01-anthropic-skills` | Official Agent Skills examples (documents, design, development) | [Anthropic](https://github.com/anthropics/skills) | Per skill, see each folder |
| 02 | `02-claude-seo` | SEO skill with sub-skills and sub-agents | [AgriciDaniel](https://github.com/AgriciDaniel/claude-seo) | MIT |
| 03 | `03-prompt-master` | Writes precise prompts for any AI tool | [nidhinjs](https://github.com/nidhinjs/prompt-master) | MIT |
| 04 | `04-agency-agents` | A full set of specialist agents (engineering, marketing, security…) | [msitarzewski](https://github.com/msitarzewski/agency-agents) | MIT |
| 05 | `05-graphify` | Turns a codebase into a queryable knowledge graph | [Graphify-Labs](https://github.com/Graphify-Labs/graphify) | Apache-2.0 |
| 06 | `06-instagram-agent-skill` | 13 skills that run an Instagram account | [Jakeschincariol](https://github.com/Jakeschincariol/instagram-agent-skill) | MIT |
| 07 | `07-day-trader-skill` | 11 day-trading skills: scan, size, risk, alerts | [Jakeschincariol](https://github.com/Jakeschincariol/day-trader-skill) | MIT |
| 08 | `08-n8n-workflows` | A large collection of n8n workflows | [Zie619](https://github.com/Zie619/n8n-workflows) | MIT |
| 09 | `09-bot-studio` | Telegram Bot API explorer and request builder | [telefunction](https://github.com/telefunction/bot-studio) | GPL-3.0 |
| 10 | `10-free-claude-code` | Run Claude Code and similar CLIs with other providers | [Alishahryar1](https://github.com/Alishahryar1/free-claude-code) | See the repository |
| 11 | `11-omniroute` | One AI gateway endpoint for many providers | [cheaper-inference](https://github.com/cheaper-inference/OmniRoute) | MIT |
| 12 | `12-court-skill` | Puts an idea on trial: prosecutor, defense, a jury of up to 12 Claudes and a judge | [Alex Chen](https://github.com/alexyc9381/court-skill) | MIT |

Full credits and license notes: [CREDITS.md](CREDITS.md).

## Install / نصب

```bash
git clone --recurse-submodules --shallow-submodules https://github.com/mamadbarghee/sintell-agent-skills.git
cd sintell-agent-skills
bash install.sh            # copies every folder that has a SKILL.md into ~/.claude/skills (skips names you already have)
```

- Agents (04) and tools (05, 08–11) have their own setup; follow the README inside each folder.
- `install.sh` never overwrites a skill that already exists, so you do not end up with duplicates.
- To update everything to the latest upstream: `git submodule update --remote --depth 1`.

- ایجنت‌ها (۰۴) و ابزارها (۰۵ و ۰۸ تا ۱۱) نصبِ خودشان را دارند؛ راهنمای داخلِ همان پوشه را دنبال کنید.
- `install.sh` اسکیلی را که از قبل دارید بازنویسی نمی‌کند، پس تکراری نصب نمی‌شود.

## License of this repository

Only the files written for this collection (this README, CREDITS.md, install.sh) are under the MIT license in [LICENSE](LICENSE). Each submodule is governed **only by its own license**; using a project means accepting its terms.

---
Curated by **SINTELL** · [sintell.ir](https://sintell.ir)
