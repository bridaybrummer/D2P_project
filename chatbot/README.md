# Chatbot setup

This folder holds everything you need to spin up a project-aware chatbot on the live site.

## Files

| File | Purpose |
|---|---|
| `knowledge_base.md` | Concatenated content of all `.qmd` files + the v3 parameter CSV. **Upload this to your chosen SaaS.** Regenerate with the command at the bottom of this file whenever content changes. |
| `system_prompt.md` | The instructions / persona / boundaries to paste into the chatbot's "system prompt" or "custom instructions" field. |
| `embed.html` | Placeholder for the embed snippet. Paste the SaaS's `<script>` tag here, then re-render and republish. |

## Recommended provider: Chatbase

1. Sign up free at https://www.chatbase.co/
2. **Create new chatbot** → **Files** tab → upload `knowledge_base.md`
3. **Settings** → **Model:** GPT-4o mini (free tier) | **Temperature:** 0.2
4. **Settings → System prompt:** paste the contents of `system_prompt.md`
5. **Settings → Chat interface:**
   - Initial message: *"Hi — I can answer questions about the D2P Project's surveillance, decision model, and costs. What would you like to know?"*
   - Suggested messages:
     - "What is the annual pesticide poisoning burden in South Africa?"
     - "What is Option 3 and how much does it cost?"
     - "Why are there 1,500–1,800 deaths per year and not 21?"
     - "Explain the difference between narrow and whole-system cost."
6. **Connect → Embed** → copy the `<script>` tag → paste into `embed.html`
7. From the project root: `quarto publish gh-pages --no-prompt --no-browser`

The chat bubble will appear in the bottom-right corner of every page.

## Alternatives

- **DocsBot** (https://docsbot.ai) — better source citations, smaller free tier (50 questions/mo)
- **GPT-trainer** (https://gpt-trainer.com) — more customisation, free tier limited
- **Custom (later)** — Cloudflare Worker proxying OpenAI/Anthropic with RAG. ~$0.001/query. Move to this if SaaS limits are hit.

## Regenerating the knowledge base

Run from the project root whenever `.qmd` content changes materially:

```bash
{ echo "# D2P Project Knowledge Base"
  echo ""
  echo "Concatenated content of all project documents. Generated $(date '+%Y-%m-%d')."
  echo ""
  for f in index.qmd one_pager.qmd glossary.qmd parameter_appraisal.qmd \
           analysis_report_v2.qmd posts/surveillance_concept_note.qmd \
           posts/decision_model.qmd posts/costing_analysis.qmd posts/policy_brief.qmd; do
    echo ""
    echo "================================================================"
    echo "## SOURCE: $f"
    echo "================================================================"
    echo ""
    cat "$f"
    echo ""
  done
  echo ""
  echo "================================================================"
  echo "## SOURCE: amua_import_parameters_v3.csv"
  echo "================================================================"
  echo ""
  cat amua_import_parameters_v3.csv
} > chatbot/knowledge_base.md
```

Then re-upload the file in your Chatbase dashboard (**Sources** → **Retrain**).

## Privacy & terms

- Chatbase free tier sends queries to OpenAI. Don't promise visitors confidentiality.
- Add a footer line in `embed.html` if you want to disclose: *"Powered by an AI assistant. Conversations are processed by a third-party provider."*
- For clinical questions, the system prompt redirects users to the Poisons Information Helpline (0861 555 777). Keep that in place.
