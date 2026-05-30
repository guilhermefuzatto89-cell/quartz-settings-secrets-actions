---
title: "1.2 - Google Marketing Platform"
aliases:
  - Google Marketing Platform
  - GMP
  - DV360
  - SA360
  - CM360
  - Google Campaign Manager
tags:
  - tools
  - google
  - marketing-platform
  - dsp
  - programática
created: 2026-05-24
status: 🌿 budding
dg-publish: true
---

[[Google|1 - Google]]    [[1.9 - Deep Ads - Programática|1.4 - Deep Ads Programática]]    [[1.4- SEM|1.1 - SEM]]

# 1.2 — Google Marketing Platform (GMP)

> [!info] Conceito central
> O **Google Marketing Platform (GMP)** é a suíte de ferramentas enterprise unificada do Google que ajuda a planejar, comprar, medir e otimizar mídias digitais e experiências de clientes em um só lugar. Diferente das soluções self-serve (como o Google Ads e o GA4 gratuito), a GMP centraliza o faturamento, a governança de dados e a governança de usuários sob uma estrutura organizacional integrada para grandes agências e anunciantes enterprise.

Parte do ecossistema [[Google|1 - Google]].

---

## 🏢 Arquitetura e Organização da GMP

De acordo com o framework oficial do Google, a estrutura da GMP baseia-se em unificar produtos publicitários e de análise sob uma única entidade administrativa:

* **Organização (Organization):** Representa a sua empresa ou grupo de negócios dentro da plataforma. Funciona como o hub administrativo que reúne contas de produtos, usuários, permissões e informações de faturamento.
* **Página Inicial da GMP (Platform Home):** O portal centralizado que fornece uma visão geral de todos os produtos vinculados à organização, facilitando o acesso rápido.
* **Central de Integração (Integration Center):** A área dedicada à governança de dados, onde são gerenciados os fluxos de compartilhamento e compartilhamentos de audiência entre as ferramentas da suíte.

---

## 🛠️ Portfólio de Produtos da Suíte

A GMP é dividida entre produtos de publicidade (compra e veiculação de mídia) e produtos de análise (medição e personalização):

### 1. Ferramentas de Publicidade (Advertising Products)
Operam nativamente no nível de serviço **360 (Enterprise)**:
* **Display & Video 360 (DV360):** DSP enterprise para compra programática em larga escala em diversos inventários (vídeo, CTV, display, DOOH, áudio).
* **Search Ads 360 (SA360):** Console de gestão e otimização automatizada para campanhas de Search em múltiplos motores de busca (Google, Bing, Yahoo).
* **Campaign Manager 360 (CM360):** Ad server enterprise responsável pela veiculação de criativos, rastreamento unificado e atribuição cross-channel (baseada em Floodlights).

### 2. Ferramentas de Análise (Analytics Products)
Oferecem dois níveis de serviço: **Padrão (Standard - gratuito)** ou **360 (Enterprise - faturamento corporativo)**:
* **Google Analytics 360:** Coleta avançada de dados web/app sem limites de amostragem, com SLAs estritos e exportação diária contínua para o BigQuery.
* **Gerenciador de Tags do Google 360 (GTM 360):** Governança de tags corporativa com múltiplos contêineres e fluxos de aprovação de publicação.

---

## 🔄 A Central de Integração (Integration Center)

O principal diferencial competitivo da GMP está na capacidade de conectar dados nativamente sem a necessidade de APIs customizadas complexas. 

| Integração | Benefício Prático |
|---|---|
| **GA4 360 + DV360 / SA360** | Exportação direta de audiências preditivas e conversões do Analytics para direcionar campanhas publicitárias. Retorno de dados de custo e cliques publicitários no Analytics para relatórios de ROI de mídia. |
| **CM360 + DV360 / SA360** | Unificação de dados de conversão por meio de **tags Floodlight** compartilhadas. Permite evitar que o mesmo usuário seja contabilizado duas vezes quando exposto a canais diferentes (deduplicação cross-channel). |
| **SA360 + DV360** | Compartilhamento de audiências de busca (intenção ativa) para segmentar anúncios de remarketing visual/vídeo na DSP. |

---

## 💎 Nível de Serviço: Padrão vs 360 (Enterprise)

Para os produtos de análise, a GMP permite misturar e complementar níveis de serviço dentro da mesma Organização de acordo com a necessidade estratégica de cada propriedade:

* **Uso Misto:** Você pode utilizar uma propriedade do **Google Analytics 360** para a operação principal de e-commerce da empresa (garantindo volume de dados brutos e BigQuery), e manter contas **Standard (Padrão)** para testar novas configurações em ambientes de homologação sem custo extra.
* **Governança de Usuários:** As permissões são herdadas no nível da organização, permitindo que administradores concedam ou revoguem acessos em massa de funcionários ou agências terceirizadas a todos os produtos de publicidade e análise vinculados de forma centralizada.

---

## 🚨 Antipadrões e Cuidados em 2026

1. **Tratar a GMP como Google Ads individual:** Utilizar o DV360 sem conectá-lo ao CM360 e ao GA4 para atribuição de dados elimina a maior vantagem da ferramenta: a desduplicação de conversões.
2. **Utilizar o faturamento 360 para propriedades pequenas:** Mantenha propriedades satélites e de testes no plano Standard para otimizar os custos de consumo de eventos da organização.
3. **Não configurar a Central de Integração de forma centralizada:** Permitir que contas de mídia se conectem de forma desorganizada a propriedades do Analytics sem uma Governança de Organização clara cria divergência de dados e silos corporativos.

---

## 🔗 Conexões no vault

* [[Google|1 - Google — Ecossistema Completo]]
* [[1.9 - Deep Ads - Programática|1.4 - Deep Ads Programática]] (DV360 como DSP)
* [[1.4- SEM|1.1 - SEM]] (SA360 como console integrado de busca)
* [[4 - Traqueamento|4 - Traqueamento]] (GA4 e Floodlights para atribuição)
