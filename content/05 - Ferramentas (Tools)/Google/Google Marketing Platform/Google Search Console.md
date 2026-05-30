---
title: "1.2.5 - Google Search Console — SEO e Indexação"
aliases:
  - Google Search Console
  - GSC
  - Search Console
  - Webmasters
tags:
  - tools
  - google
  - search-console
  - seo
created: 2026-05-25
status: 🌿 budding
dg-publish: true
---

[[Google|Google]]    [[1.3 - SEO|SEO — Busca Orgânica]]    [[Google Marketing Platform|Google Marketing Platform]]

# 1.2.5 — Google Search Console (GSC)

> [!info] Conceito central
> O **Google Search Console (GSC)** é uma ferramenta gratuita do Google que permite a proprietários de sites monitorar, analisar e manter a presença e a saúde de suas páginas nos resultados de pesquisa orgânica do Google. É a ponte oficial de comunicação técnica entre os webmasters e o algoritmo de rastreamento do Google (*Googlebot*).

Parte do ecossistema [[Google|Google]].

---

## 🔍 Áreas Chave de Diagnóstico e Otimização

O painel do Search Console é dividido em pilares técnicos e de conteúdo indispensáveis para SEO:

### 📈 Relatório de Desempenho (Performance)
Mapeia a visibilidade do seu site nos resultados de pesquisa por meio de quatro métricas fundamentais:
* **Cliques:** Número de vezes que um usuário clicou no seu site a partir de uma busca orgânica.
* **Impressões:** Quantidade de vezes que links do seu site foram exibidos nos resultados de busca (mesmo que sem clique).
* **CTR Médio (Click-Through Rate):** A porcentagem de impressões que geraram cliques orgânicos.
* **Posição Média:** A classificação média das páginas do seu site para as palavras-chave consultadas.

> [!tip] Filtros de Consulta
> O GSC permite segmentar essas métricas por **Consultas (Palavras-chave pesquisadas)**, **Páginas de Destino**, **Países** e **Dispositivos**, auxiliando na identificação de termos com alto tráfego potencial mas baixo CTR (oportunidades de melhoria de Title e Meta Description).

### 🛠️ Indexação e Rastreamento (Indexing)
* **Sitemaps:** Área para envio do mapa do site em formato XML. Ajuda o robô do Google a rastrear e descobrir novas páginas de forma inteligente e ágil.
* **Inspeção de URL:** Permite analisar uma página específica em tempo real para verificar se ela foi indexada, testar o carregamento da versão renderizada pelo Googlebot e solicitar a indexação manual de páginas recém-criadas ou atualizadas.
* **Erros de Indexação:** Identifica erros críticos que impedem páginas de serem mostradas na busca (como erros de servidor 5xx, erros de redirecionamento, URLs bloqueadas por robots.txt, canonicalização incorreta ou erros 404).

---

## ⚡ Experiência de Página e Sinais da Web (Core Web Vitals)

O GSC puxa os relatórios reais de uso do usuário (baseados no banco de dados Chrome UX Report) para avaliar a qualidade e a velocidade de carregamento técnico do site, que contam como fator oficial de rankeamento:

* **LCP (Largest Contentful Paint):** Mede o desempenho de carregamento do conteúdo principal (meta recomendada: até 2.5 segundos).
* **INP (Interaction to Next Paint):** Mede a responsividade do site a cliques e ações do usuário (meta recomendada: até 200 milissegundos).
* **CLS (Cumulative Layout Shift):** Mede a estabilidade visual da página durante o carregamento (meta recomendada: menor que 0.1).

---

## 🎯 Sinergia: Search Console + Google Ads

A integração do Search Console com o Google Ads permite cruzar dados pagos e orgânicos diretamente na interface do Ads.

### Benefícios estratégicos:
1. **Identificação de Canibalização:** Avaliar se você está pagando por cliques em palavras-chave institucionais/branded onde já domina o primeiro lugar absoluto do ranking orgânico de forma gratuita.
2. **Janelas de Oportunidade:** Descobrir termos que possuem excelente CTR e conversão orgânica e injetar orçamento em Search Ads pagos para esses mesmos termos para maximizar a captura de tráfego (dominação de SERP).
3. **Economia de CPC:** Otimizar campanhas pagas para cobrir lacunas orgânicas e vice-versa.

---

## 🔗 Conexões no vault

* [[1.3 - SEO|1.2 - SEO — Tráfego Orgânico]] (Principal framework de aplicação)
* [[Google ads|1.2.1 - Google Ads — Gestão de Mídia]] (Integração de busca paga e orgânica)
* [[Google|1 - Google — Ecossistema Completo]] (Plataforma mãe)
