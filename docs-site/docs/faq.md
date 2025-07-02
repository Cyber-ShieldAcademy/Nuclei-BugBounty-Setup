
---

### 📄 `docs/faq.md`

```markdown
# ❓ FAQ

### Q1: Why is my scan slow?

Check your internet speed, number of templates, and use `-c 50` to increase concurrency.

---

### Q2: Can I use custom templates?

Yes. Add them in `templates/` and point with `-t`.

---

### Q3: Where are results stored?

All scan results are stored under `results/` with a timestamped filename.

---

### Q4: How do I update templates?

```bash
nuclei -update-templates
