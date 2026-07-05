## File Structure

- `cv.sty` is the shared style file used by all outer documents, holding packages, colors, page style, and the reusable macros shared across the documents
- `main-full.tex` is the full CV that appends the research plan, teaching experience, reflections on teaching, service, and the full lists of publications, projects, and presentations at the end
- `main-short.tex` is the short CV that appends only the teaching experience and leaves the research plan, full teaching portfolio, service, and full lists to the separate documents
- `list.tex` is a standalone document containing the full lists of publications, projects, and presentations, plus the service section
- `research-plan.tex` is a standalone document containing only the research plan
- `teaching-portfolio.tex` is a standalone document containing the teaching experience and reflections on teaching sections
- `cover-letter.tex` is a standalone cover letter, kept general with bracketed placeholders such as `[position]` and `[institution]` to fill in per application
- `comp/` holds reusable tex components included by the outer documents
    - `comp/body.tex` is the shared CV body, holding the header, summary, Education, Experience, and Research Experience sections, used by both `main-full.tex` and `main-short.tex`. It references the `\listsnote` and `\researchplannote` macros in its Research Experience section, which each outer document defines differently to point at either the appended sections or the separate documents
    - `comp/teaching-experience.tex` is the teaching experience section, with course teaching and student supervision subsections, labeled `sec:teaching-experience`. It is imported separately by `main-full.tex`, `main-short.tex`, and `teaching-portfolio.tex`, and references the `\teachingportfolionote` macro to point at either the reflections section or the separate document
    - `comp/pub.tex` is the full publications section, with primary and secondary subsections, labeled `sec:pub`
    - `comp/projects.tex` is the full projects section, with principal investigator and participant subsections, labeled `sec:projects`
    - `comp/presentations.tex` is the full presentations section, labeled `sec:presentations`
    - `comp/service.tex` is the service section, labeled `sec:service`, included by `main-full.tex` and `list.tex`
    - `comp/research-plan.tex` is the research plan section, labeled `sec:research-plan`, included by `main-full.tex` and `research-plan.tex`
    - `comp/teaching-reflections.tex` is the reflections on teaching section, with teaching philosophy, course development, supervision approach, and teaching plan subsections, labeled `sec:teaching-reflections`, included by `main-full.tex` and `teaching-portfolio.tex`
- `Makefile` for compiling the documents, with a target per document plus `all` and `clean`
