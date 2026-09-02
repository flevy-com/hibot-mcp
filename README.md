# HiBot MCP Server

Connect Claude and other AI assistants to [HiBot](https://hibot.com), which measures how AI answer engines like ChatGPT, Perplexity, Google, Claude, and Grok surface, recommend, and represent your brand, using the proprietary **ANSWER framework**.

> This is a **remote, hosted MCP server**. There is nothing to install or run from this repository; it documents the public endpoint.

HiBot runs two servers. This repo documents the **public** one, which is open and unauthenticated. There is also a **private** server (Bearer API key) that serves a customer's own delivered audit results to an AI agent.

## Public endpoint

```
https://hibot.com/mcp/public
```

- **Transport:** Streamable HTTP (JSON-RPC 2.0 over POST)
- **Auth:** none. All seven tools are free, read-only, and rate limited.
- **Docs:** https://hibot.com/developers

Every result links back to the page it came from on hibot.com.

## Tools

| Tool | What it returns |
|---|---|
| `get_answer_methodology` | The six ANSWER categories, rubric, weights, and score bands |
| `get_plans` | HiBot Pulse and Panorama pricing and what each report includes |
| `list_case_studies` | Published audits of real brands |
| `get_case_study` | One case study in full |
| `list_blog_articles` | Published research articles |
| `get_blog_article` | One article in full |
| `search_blog` | Search HiBot's articles |

Audits are run by human specialists in logged-out, neutral sessions. Nothing here queries an AI engine live, checks visibility in real time, or re-scores anything. Fresh numbers require a new audit.

## Connect from Claude Code

```
claude mcp add --transport http hibot-public https://hibot.com/mcp/public
```

Any MCP client that supports HTTP transport works the same way.

## The private server

Customers can also connect the authenticated server at `https://hibot.com/mcp` with a Bearer API key minted on the [API Keys page](https://hibot.com/account/api-keys). It serves your delivered audits as a dataset an agent can work from: scores and dimensions, the answers each engine gave, the hallucination log, citations, competitive standing, and trends across re-audits. A key reads only the account it belongs to.

## About

HiBot is an AI visibility audit platform. Not a customer yet? [Get your first audit](https://hibot.com).

Questions: support@hibot.com
