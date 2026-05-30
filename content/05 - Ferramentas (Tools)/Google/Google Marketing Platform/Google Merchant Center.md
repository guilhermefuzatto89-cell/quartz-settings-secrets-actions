---
title: "1.2.4 - Google Merchant Center — Gestão de Feeds de Produtos"
aliases:
  - Google Merchant Center
  - GMC
  - Merchant Center
tags:
  - tools
  - google
  - merchant-center
  - e-commerce
created: 2026-05-25
status: 🌿 budding
dg-publish: true
---

[[Google|Google]]    [[1.4.1 - Google Ads|Google Ads]]    [[Google Marketing Platform|Google Marketing Platform]]

# 1.2.4 — Google Merchant Center (GMC)

> [!info] Conceito central
> O **Google Merchant Center (GMC)** é a plataforma administrativa do Google que permite a lojistas enviar, gerenciar e estruturar o catálogo de produtos de seu e-commerce para ser exibido em todo o ecossistema do Google, incluindo resultados orgânicos de pesquisa do Google Shopping e campanhas de anúncios pagos no Google Ads.

Parte do ecossistema [[Google|Google]].

---

## 📈 Integração com Google Ads e Campanhas de Performance

O Merchant Center funciona como o back-office de dados que alimenta a inteligência de mídia:

```
[Seu E-commerce] ──(Feed de XML/API)──> [Google Merchant Center] ──(Vinculação)──> [Google Ads]
                                                                                        │
                                                                           ┌────────────┴────────────┐
                                                                           ▼                         ▼
                                                                     [Shopping Ads]            [Performance Max]
```

* **Vinculação de Contas:** Para anunciar produtos em formato de imagem, preço e frete, a conta do GMC deve ser vinculada à propriedade do Google Ads.
* **Shopping Ads Clássico:** Campanhas voltadas a buscas de produtos específicas no Google Shopping baseadas em termos de busca.
* **Performance Max (PMax):** Campanhas inteligentes que usam a inteligência artificial do Google Ads para puxar imagens, preços e títulos do GMC e distribuí-los de forma dinâmica no YouTube, Gmail, Search e Maps.

---

## ⚙️ Funcionamento de Feeds de Produtos

O feed é o arquivo que carrega a listagem atualizada do seu catálogo de produtos.

### 📋 Atributos Obrigatórios do Feed (Especificação do Google)
Para que os produtos sejam aprovados, cada item deve conter atributos estruturados exatos:
* `id` - Identificador exclusivo de estoque (SKU).
* `title` - Nome do produto (deve ser claro, contendo marca, tamanho, cor e modelo).
* `description` - Descrição clara e rica em detalhes do item.
* `link` - URL de destino da página do produto no site.
* `image_link` - URL da imagem principal do produto (fundo branco, sem textos promocionais).
* `price` - Preço atual com código de moeda (ex: `150.00 BRL`).
* `availability` - Status do estoque (`in_stock`, `out_of_stock`, `preorder`).
* `brand` - Marca do produto.
* `gtin` ou `mpn` - Identificadores globais exclusivos de comércio (código de barras EAN/UPC e código do fabricante).

### 🛠️ Tipos de Feeds
1. **Feed Principal:** O catálogo de dados base que você envia via XML, API (Content API) ou planilha do Google Sheets.
2. **Feed Complementar:** Utilizado exclusivamente para injetar informações extras ou sobrescrever atributos do feed principal sem modificar o banco de dados do seu e-commerce (ex: adicionar etiquetas personalizadas/`custom_labels` para filtros de campanhas).

---

## 🚨 Políticas de Reprovação e Bloqueios Comuns

O Google realiza varreduras constantes nos feeds e páginas de checkout. Os principais erros que geram suspensão de produtos são:

1. **Inconsistência de Preço e Estoque:** O preço ou status de estoque informado no feed difere do exibido na página de destino do e-commerce. 
2. **Ausência de Identificadores de Produto (GTIN/EAN):** Produtos de marcas conhecidas enviados sem o GTIN correspondente são reprovados ou perdem drasticamente o alcance nos leilões.
3. **Imagens Fora da Diretriz:** Imagens com fundos poluídos, marcas d'água, textos promocionais (ex: "Frete Grátis") ou imagens de baixa qualidade.
4. **Checkout Inseguro ou Falta de Políticas Claros:** Falta de certificado SSL no fechamento de compra ou ausência de páginas de "Trocas e Devoluções" visíveis no site.

---

## 🔗 Conexões no vault

* [[1.4.1 - Google Ads|1.1.1 - Google Ads — Gestão de Campanhas]] (Consumo de feeds para anúncios)
* [[Google|1 - Google — Ecossistema Completo]] (Plataforma mãe)
* [[2.1.2 - E-commerce|2.1.2 - Ecommerce — Plataforma e Integração]] (Estrutura do site e banco de produtos)
