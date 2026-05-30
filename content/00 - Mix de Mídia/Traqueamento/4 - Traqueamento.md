---
title: "4 - Rastreamento e Atribuição"
aliases:
  - Rastreamento
  - Tracking
  - Atribuição
  - UTM
  - GA4
  - Pixel
tags:
  - growth
  - dados
  - traqueamento
  - atribuição
  - ga4
  - mix-de-midia
created: 2026-05-24
status: 🌱 seedling
dg-publish: true
---

[[1 - Mix de Mídia Manager]]    [[3 - Central de Custos Mídia On]]    [[2 - Coleta e Tratamento de Dados]]

# 4 — Rastreamento e Atribuição

> [!info] Conceito central
> **Rastreamento** é a infraestrutura que conecta cada ponto de contato do usuário (clique, visita, evento, compra) à sua origem — qual canal, campanha, criativo ou palavra-chave gerou aquela ação. **Atribuição** é o modelo que decide como distribuir o crédito pela conversão entre múltiplos touchpoints. Sem rastreamento, marketing é opinião. Com rastreamento, é ciência.

Parte de [[1 - Mix de Mídia Manager]].

---

## A cadeia de rastreamento

```
Anúncio clicado (UTM parâmetros na URL)
        ↓
Landing page carregada (GA4 + Pixel registram sessão e origem)
        ↓
Evento de conversão (compra, cadastro, lead)
        ↓
Dados enviados para plataformas (server-side via CAPI/GTM SS)
        ↓
Atribuição calculada por modelo
        ↓
Dashboard consolidado → decisão de budget
```

---

## UTM — Parâmetros de Rastreamento

**UTM (Urchin Tracking Module)** são parâmetros adicionados à URL para identificar a origem do tráfego no GA4.

| Parâmetro | Função | Exemplo |
|---|---|---|
| `utm_source` | A origem do tráfego | `google`, `meta`, `newsletter` |
| `utm_medium` | O tipo de mídia | `cpc`, `email`, `social`, `organic` |
| `utm_campaign` | Nome da campanha | `black-friday-2026` |
| `utm_content` | Variação de criativo ou link | `banner-vermelho`, `cta-compre-agora` |
| `utm_term` | Palavra-chave (SEM) | `tenis-nike-masculino` |

> [!tip] Padronização de UTMs é obrigatória
> Sem convenção de nomenclatura, GA4 fragmenta a mesma campanha em dezenas de linhas diferentes. Defina um padrão (ex: snake_case, sem acentos) e documente — toda a equipe deve seguir.

---

## Pixels e Tags

| Ferramenta | Função | Onde instalar |
|---|---|---|
| **Google Tag Manager (GTM)** | Container — gerencia todos os pixels e tags sem deploy de código | Site e app |
| **GA4** | Análise de comportamento e conversões web/app | Via GTM |
| **Meta Pixel + CAPI** | Rastreia eventos para otimização de campanhas Meta | Via GTM + server-side |
| **Google Ads Tag** | Conversões para Google Ads | Via GTM |
| **TikTok Pixel** | Eventos para TikTok Ads | Via GTM |
| **LinkedIn Insight Tag** | Eventos para LinkedIn Ads | Via GTM |

---

## Server-side tracking — o padrão de 2026

Com iOS 14.5+, ad blockers e cookies restringidos, o tracking client-side (pixel no browser) perde dados. **Server-side tracking** resolve isso enviando eventos diretamente do servidor para as plataformas — sem depender do browser do usuário.

| Tipo | Como funciona | Perda de dados |
|---|---|---|
| **Client-side (pixel)** | Browser envia evento para plataforma | 20–40% de dados perdidos (adblocker + iOS) |
| **Server-side (CAPI/GTM SS)** | Servidor envia evento — não depende do browser | < 5% de perda |

Implementações principais:
- **Meta CAPI** — Conversions API
- **Google GTM Server-Side**
- **TikTok Events API**

---

## Modelos de Atribuição

| Modelo | Lógica | Melhor para |
|---|---|---|
| **Last click** | 100% do crédito ao último canal | Canais de fundo de funil (SEM branded) |
| **First click** | 100% ao primeiro canal | Canais de awareness |
| **Linear** | Crédito igual para todos os touchpoints | Visão equilibrada |
| **Time decay** | Mais crédito para touchpoints próximos da conversão | Ciclos de compra curtos |
| **Data-driven (GA4)** | IA distribui crédito por dados reais | O mais preciso — exige volume |
| **MMM (Media Mix Model)** | Econometria — mede impacto incremental offline+online | Budget total acima de R$ 500k/mês |

---

## Google Analytics 4 — estrutura de eventos

GA4 é baseado em **eventos** — diferente do UA (sessões + pageviews). Eventos principais:

| Evento | Gatilho |
|---|---|
| `page_view` | Carregamento de página |
| `session_start` | Nova sessão iniciada |
| `first_visit` | Primeiro acesso do usuário |
| `purchase` | Compra concluída — evento mais importante |
| `add_to_cart` | Produto adicionado ao carrinho |
| `begin_checkout` | Checkout iniciado |
| `generate_lead` | Formulário de lead submetido |
| `sign_up` | Cadastro realizado |

---

## Fontes de dados consolidadas

| Fonte | Dados | Atualização |
|---|---|---|
| **GA4** | Sessões, eventos, conversões, funil | Tempo real (delay ~24h completo) |
| **Google Ads** | Cliques, impressões, CPC, conversões Google | Diário |
| **Meta Ads Manager** | Alcance, CPM, CPA Meta, ROAS Meta | Diário |
| **MMP (AppsFlyer)** | Atribuição mobile — [[1.9.8 - MMP]] | Tempo real |
| **Looker Studio / GA4** | Dashboard consolidado — todas as fontes | Configurável |

---

## Anti-padrões frequentes

1. **Não configurar eventos de conversão.** GA4 padrão registra pageviews mas não compras. Sem eventos de conversão configurados, não há dados de performance — só de tráfego.

2. **Confiar só no ROAS da plataforma.** Cada canal se auto-atribui a mesma venda. GA4 com atribuição data-driven + server-side é o árbitro neutro. O ROAS do Meta Ads Manager sempre será maior do que o ROAS real.

3. **UTMs inconsistentes ou ausentes.** Link sem UTM vira "direct / none" no GA4 — origem desconhecida. Tráfego de email, WhatsApp e social orgânico sem UTM é invisível para análise.

4. **Ignorar server-side em iOS.** Operação com produto mobile ou audiência Apple sem CAPI e server-side perde 30–40% dos dados de conversão — otimização fica cega.

---

## Conexões no vault

- [[Google Tag Manager]] — container que orquestra todos os pixels e tags deste fluxo
- [[Google Analytics]] — GA4, ferramenta de análise de eventos e atribuição data-driven
- [[Firebase]] — analytics e atribuição no ambiente de app/mobile
- [[3 - Central de Custos Mídia On]] — dados de rastreamento alimentam o dashboard financeiro
- [[1.9.8 - MMP]] — rastreamento específico de mobile
- [[1.9.6 - DMP]] — dados de rastreamento alimentam a CDP/DMP
- [[2 - Coleta e Tratamento de Dados]] — rastreamento como fonte primária de dados
- [[2.1 - Site]] — onde os pixels e GTM são instalados
- [[MOC — Stack de Mensuração]] — mapa transversal de toda a infraestrutura de dados
