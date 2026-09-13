# Reference papers

The PDFs in this directory are **deliberately not committed** (see
`.gitignore`). They are the published sources this project depends on, and the
repository should not redistribute them:

* the **DCG 2022** article is a Springer journal publication and is not freely
  redistributable;
* the SoCG 2020 version is LIPIcs (Creative Commons), and the CMUC article is
  open access, but a single consistent policy is simpler to defend than a
  per-file exception.

What *is* committed is everything needed to identify the exact versions audited,
so a referee can obtain byte-identical copies and reproduce the audit.

## Sources audited

| File | Paper | Obtain from |
|---|---|---|
| `cerny-2003.pdf` | J. Černý, J. Kára, D. Kráľ, P. Podbrdský, M. Sotáková, R. Šámal, *On the number of intersections of two polygons*, Comment. Math. Univ. Carolin. **44** (2003) 217–228. 12 pp. | <https://cmuc.karlin.mff.cuni.cz/pdf/cmuc0302/cerny.pdf> (open access) |
| `akr-dcg-2022.pdf` | E. Ackerman, B. Keszegh, G. Rote, *An almost optimal bound on the number of intersections of two simple polygons*, Discrete Comput. Geom. **68** (2022) 1049–1077. 29 pp. **AUTHORITATIVE for AKR.** | DOI [10.1007/s00454-022-00438-0](https://doi.org/10.1007/s00454-022-00438-0) |
| `akr-socg-2020.pdf` | Same authors, SoCG 2020 (LIPIcs). Retained for provenance and version comparison only. | SoCG 2020 proceedings; preprint arXiv:2002.05680 |

## SHA-256 of the audited copies

```
e8749e868809a403da3a43087bdb5ba5c4632ae0e71603cbcc2cf077154b5ad9  cerny-2003.pdf
f0ae336e03857766597e5760acaa9c0cc9dbe3ef86d6200334bfad7f8b9c548a  akr-dcg-2022.pdf
304f45fd69150114a9c986091ae48ada4f280d9e3128e3b400fc145cdb4bb975  akr-socg-2020.pdf
```

A different copy of the same article (different printing, different download)
will hash differently. The DOI and page numbers, not the hash, are the
authoritative identification; the hashes pin exactly which files were read
during the audit recorded in [`../docs/external-lemma-audit.md`](../docs/external-lemma-audit.md).

## Source hierarchy used in the audit

**The expanded DCG journal version controls.** The SoCG 2020 version is used
only to check whether statements, hypotheses or definitions changed between
versions. Where they differ, the journal version is authoritative, and the
difference is recorded in the audit.

The withdrawn Günther preprint (arXiv:1207.0996) claims the full conjecture and
**must not be cited**; see `../docs/literature-notes.md`.
