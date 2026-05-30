---
title: "1.2.1 - Google Ads — Gestão de Campanhas"
aliases:
  - Google Ads
  - AdWords
  - Campanhas Google Ads
  - Tipos de Campanha Google
tags:
  - tools
  - google
  - google-ads
  - tráfego-pago
  - canais
created: 2026-05-25
status: 🌿 budding
dg-publish: true
---

[[Google|1 - Google]]    [[1.4.1 - Google Ads|Mídia: Google Ads Search]]    [[Google Marketing Platform|Google Marketing Platform]]

# 1.2.1 — Google Ads — Gestão de Campanhas

> [!info] Conceito central
> O **Google Ads** é a principal plataforma de publicidade self-serve do Google, permitindo que anunciantes de qualquer porte comprem tráfego e visibilidade no buscador do Google, YouTube, Google Maps, Gmail, Discover e em milhões de sites parceiros (Rede de Display). A gestão moderna de campanhas exige compreender a transição de lances e segmentações manuais para a automação baseada em IA e modelos preditivos do Google.

Parte do ecossistema [[Google|1 - Google]].

---

## 📋 Tipos de Campanha e Estrutura no Google Ads

De acordo com o framework oficial de suporte do Google, as campanhas são divididas por objetivos de marketing e formatos de exibição:

### 1. Campanhas de Maior Desempenho (Performance Max / PMax)
O formato unificado e automatizado por IA do Google Ads.
* **O que faz:** Veicula anúncios em todo o inventário do Google (Search, YouTube, Display, Discover, Gmail e Maps) a partir de uma única campanha.
* **Foco em Varejo:** Integra-se nativamente com o feed do **Google Merchant Center** para exibir anúncios dinâmicos de produtos.
* **Ativos:** Baseia-se em "grupos de recursos" (imagens, vídeos, títulos e descrições) que a IA do Google combina em tempo real.

### 2. IA Max para Campanhas de Pesquisa e Shopping (Recursos Emergentes)
A IA generativa aplicada para otimizar os formatos de busca e e-commerce tradicionais:
* **Expansão de URL Final na Pesquisa:** Permite que o Google substitua sua URL final por landing pages mais relevantes do seu site com base na intenção do usuário.
* **Diretrizes de Texto (Beta):** Modelos de IA generativa auxiliando na criação automatizada de copys e títulos dinâmicos.
* **IA Max para Shopping (Beta):** IA otimizando a distribuição e preços de ofertas de e-commerce na SERP de vendas.

### 3. Campanhas de Pesquisa (Search Campaigns)
O formato clássico baseado em intenção do usuário (palavras-chave).
* **Foco:** Captura de demanda qualificada no exato momento da busca.
* **Aprofundamento Estratégico:** Veja detalhes sobre leilão, Ad Rank, Quality Score e correspondências na nota dedicada de mídia: [[1.4.1 - Google Ads|Mídia: Google Ads Search]].

### 4. Campanhas de Geração de Demanda (Demand Gen)
Substitutas diretas do antigo formato *Discovery*.
* **O que faz:** Focadas em formatos visuais e imersivos (YouTube Shorts, in-stream, Discover e Gmail) para gerar consideração e intenção de compra antes de o usuário realizar a busca.
* **Públicos:** Forte uso de públicos semelhantes (*lookalike*) baseados em dados de clientes de primeira parte (first-party data).

### 5. Campanhas do Shopping e E-commerce
* **Standard Shopping:** Criação de anúncios de produtos com imagem, preço e frete, controlados de forma semi-automatizada.
* **Anúncios de Inventário Local:** Exibem produtos disponíveis na loja física mais próxima do usuário.
* **Anúncios de Veículos:** Formato focado em concessionárias para listagem de catálogo de carros na SERP.

### 6. Campanhas para Apps (UAC)
* **Objetivo:** Promover instalações ou engajamento em aplicativos móveis Android e iOS.
* **Canais:** Veiculação automática no Google Play, Busca, YouTube e Rede de Display.

### 7. Campanhas de Vídeo e Display
* **Vídeo (YouTube):** Anúncios in-stream (puláveis e não puláveis), bumper ads (6 segundos) e anúncios no feed para branding e engajamento.
* **Display:** Banners gráficos veiculados na rede de milhões de sites e blogs parceiros do Google (AdSense).

---

## 📊 Matriz de Decisão: Qual Campanha Escolher?

| Objetivo de Negócio | Tipo de Campanha Recomendado | Indicador de Sucesso Principal |
|---|---|---|
| Capturar leads de alta intenção comercial | **Pesquisa (Search)** | Custo por Lead (CPL) / Taxa de Conversão |
| Escalar vendas de E-commerce rapidamente | **Performance Max (PMax)** | ROAS / Custo por Aquisição (CPA) |
| Gerar desejo e engajamento de marca | **Geração de Demanda (Demand Gen)** | Custo por Engajamento / Visualizações |
| Reconhecimento de marca e alcance de massa | **Vídeo (YouTube) ou Display** | CPM / CTR / Custo por Visualização |
| Promover download de Aplicativo Mobile | **Campanha de App** | Custo por Instalação (CPI) |
| Atrair visitas para Lojas Físicas / Local | **Campanhas Inteligentes / Maps** | Cliques de rota / Ligações |

---

## ⚙️ Principais Status e Fases de Veiculação

Quando você cria ou edita uma campanha no Google Ads, ela passa por status críticos que afetam a performance:

* **Qualificada (Eligible):** A campanha está ativa e apta a participar de leilões.
* **Em Aprendizado (Learning):** Ocorre quando uma estratégia de lances automáticos (Smart Bidding) é ativada ou alterada significativamente. O algoritmo leva de **7 a 14 dias** para coletar dados e estabilizar os lances.
* **Pausada (Paused):** Veiculação interrompida. *Atenção:* Pausar campanhas com histórico consolidado reinicia a fase de aprendizado ao reativar.
* **Recusada (Disapproved):** Violação de políticas de publicidade do Google (ex: direitos autorais, saúde, promessas enganosas).

---

## 🚨 Antipadrões de Gestão de Campanhas

1. **Alterar orçamentos ou metas de CPA diariamente:** Mudanças acima de **20%** em orçamentos ou lances colocam a campanha de volta ao estado de **Aprendizado**, desestabilizando o leilão. Aguarde a janela de aprendizado fechar antes de novos ajustes.
2. **Ignorar os Recursos (Assets) de anúncios:** Deixar de configurar Sitelinks, Callouts e Imagens diminui o tamanho visual do seu anúncio na SERP e reduz o CTR esperado, o que prejudica diretamente o **Quality Score**.
3. **Ativar PMax sem dados de conversão históricos:** Lançar uma campanha de Performance Max em uma conta totalmente nova sem tags de conversão configuradas faz a IA gastar o orçamento otimizando para cliques irrelevantes. Use campanhas de Pesquisa para acumular conversões primeiro.

---

## 🔗 Conexões no vault

* [[Google|1 - Google — Ecossistema Completo]]
* [[Google Marketing Platform|Google Marketing Platform]] (SA360 e DV360)
* [[1.4.1 - Google Ads|Mídia: Google Ads Search]] (estratégias de palavras-chave)
* [[1.4- SEM|1.4- SEM]] (visão de search engine marketing)
