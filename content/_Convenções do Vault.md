---
title: "Convenções do Vault — Taxonomia & Padrões"
aliases:
  - Convenções
  - Taxonomia
  - Padrões do Vault
  - Guia de Estilo
tags:
  - moc
  - referência
  - manual
created: 2026-05-29
status: 🌳 evergreen
dg-publish: true
---

[[Dashboard|🧭 Dashboard Central]]

# Convenções do Vault — Taxonomia & Padrões

> [!info] Para que serve esta nota
> Define o vocabulário controlado e os padrões de formatação do vault. Antes de criar nota ou tag nova, consulte aqui. O objetivo é manter o jardim **navegável e pesquisável** — tag duplicada e status inconsistente fragmentam a busca e quebram a correlação entre tópicos.

---

## Status da nota (vocabulário fechado)

Use **exatamente** um destes quatro valores no campo `status` do frontmatter. Não invente variações.

| Status | Significado | Quando usar |
|---|---|---|
| `🌱 seedling` | Broto — ideia inicial, rascunho | Nota recém-criada, ainda incompleta |
| `🌿 budding` | Brotando — em desenvolvimento | Conteúdo sólido, mas ainda crescendo |
| `🌳 evergreen` | Perene — madura e estável | Nota de referência, revisada e confiável |
| `⚠️ deprecated` | Obsoleta — mantida por histórico | Conteúdo superado; aponte para o substituto |

> [!warning] Erro comum
> Usar 🌿 (folha) para "evergreen". Evergreen é sempre 🌳 (árvore). A folha 🌿 é exclusiva de *budding*.

---

## Taxonomia de tags

Tags são **minúsculas, com hífen** para compostos (`tráfego-pago`, `social-ads`) e **com acento** quando a palavra tem (`aquisição`, `programática`, `atribuição`). Reaproveite uma tag existente antes de criar outra — sinônimos fragmentam a busca.

### Famílias de tags (vocabulário de referência)

| Família | Tags canônicas |
|---|---|
| **Áreas** | `growth` · `mix-de-midia` · `branding` · `dados` · `marketing` · `business-intelligence` · `office` · `ecossistema` |
| **Canais & mídia** | `aquisição` · `conversão` · `retenção` · `tráfego-pago` · `tráfego-orgânico` · `programática` · `social-ads` · `search` · `seo` · `sem` · `display` · `vídeo` · `mídia-tradicional` · `afiliados` · `referral` |
| **Ferramentas** | `tools` · `google` · `meta` · `tiktok` · `facebook` · `instagram` · `whatsapp` · `google-ads` · `google-cloud` · `ga4` · `gtm` · `bigquery` · `lookerstudio` · `powerbi` · `firebase` |
| **E-commerce & marketplace** | `e-commerce` · `marketplace` · `varejo-digital` · `amazon` · `shopee` · `shein` · `mercado-livre` · `cross-border` |
| **Dados & traqueamento** | `traqueamento` · `atribuição` · `analytics` · `métricas` · `kpis` · `first-party` · `privacidade` · `etl` · `dbt` · `modelagem` · `predição` · `machine-learning` · `forecasting` · `north-star` · `okr` |
| **Organização (C-suite)** | `c-suite` · `time` · `liderança` · `financeiro` · `operações` · `comercial` · `produto` · `pessoas` |
| **Branding** | `marca` · `posicionamento` · `identidade-visual` · `tom-de-voz` · `storytelling` · `guidelines` |
| **Meta / navegação** | `moc` · `dashboard` · `referência` · `manual` |

> [!tip] Exceção registrada
> `mix-de-midia` é mantida **sem acento** por já ser a forma dominante (43 notas) e internamente consistente. Não misture com `mix-de-mídia`.

### Sinônimos já consolidados (não reintroduzir)

`bi` → **`business-intelligence`** · `rastreamento` → **`traqueamento`** · `ecommerce` → **`e-commerce`** · `ai` → **`ia`** · `RTB` → **`rtb`** · e correções de acento (`metricas`→`métricas`, `visualizacao`→`visualização`, etc.).

---

## Padrões de nota

- **Frontmatter obrigatório**: `title`, `aliases`, `tags`, `created`, `status`, `dg-publish`.
- **Barra de links no topo**: logo após o frontmatter, 2–4 links para as notas "pai"/irmãs mais próximas — ex.: `[[1 - Mix de Mídia Manager]]    [[1.5 - Social Ads]]`.
- **Callout de conceito**: abrir a nota com `> [!info] Conceito central` resumindo a ideia em 2–3 linhas.
- **Seção "Conexões no vault"**: encerrar a nota com lista de links internos para notas relacionadas, cada um com um traço de contexto (`— por que se conecta`).
- **Links por basename**: prefira `[[1.3 - SEO]]` a `[[pasta/1.3 - SEO]]`. O Obsidian resolve pelo nome do arquivo quando ele é único — links por basename sobrevivem a mudanças de pasta.

---

## Conexões no vault

- [[Dashboard]] — hub central que indexa as 7 áreas
- [[MOC — Stack de Mensuração]] — mapa transversal de dados e tracking
- [[MOC — Ciclo de Vida do Cliente]] — mapa transversal de aquisição→retenção
- [[MOC — Marca & Estratégia]] — mapa transversal de marca e posicionamento
