# Amazon Ads & KDP Audit Reference

> **Updated:** 2026-04-29
> **Used by:** ads-amazon module, audit-amazon agent

## Amazon A10 Algorithm Rules
Unlike Google Search, Amazon's A10 algorithm cares far more about **conversion velocity** and **purchase intent** than keyword density. If a user searches "marriage advice book" and buys your book, your rank increases. If they click but don't buy, your rank actively drops.

## KDP Listing Best Practices
1. **Backend Keyword Boxes**: You are given 7 boxes. Each box is limited to 50 bytes (approx 50 characters). Do NOT exceed this or the entire box is ignored by Amazon.
2. **Prohibited Terms**: Do NOT use the word "book" in keywords (KDP prohibits category-common terms). Do NOT use celebrity names in backend keywords (TOS risk).
3. **HTML Descriptions**: The description has a 4,000 character limit WHICH INCLUDES HTML tags. KDP only supports `<h4>` through `<h6>` tags (no `<h1>` to `<h3>`).
4. **Title Policy**: The book title on KDP MUST exactly match what is printed on the physical cover. Subtitles are optimizable if the cover is not yet finalized.
5. **Category Limits**: KDP allows selection of 3 categories.

## The Two-Lane Traffic System
For authors/brands driving external traffic (Meta, TikTok, Email) to Amazon:

- **Lane A (Low/Mid Intent)**: E.g., Meta Ads targeting broad interests. **Never send this traffic directly to Amazon.** It will lower your conversion rate and destroy your A10 ranking. Send them to a **Bridge Page** (a landing page that presells the book and filters out non-buyers).
- **Lane B (High Intent)**: E.g., Email list subscribers. These can go directly to Amazon via an Amazon Attribution Link.

## Amazon Attribution
**Amazon Attribution** is required for tracking off-platform ad spend. Always generate a unique Attribution Tag for Meta Ads, TikTok Ads, and Google Search campaigns so you can track external ROAS directly inside the Amazon Ads console.

## PPC Campaign Architecture
- **Discovery (Auto)**: Low bids, designed to harvest new search terms.
- **Exploration (Broad/Phrase)**: Moderate bids on seed keywords.
- **Scaling (Exact)**: High bids, aggressive Top-of-Search modifiers on proven converting search terms.
- **Defensive (ASIN Targeting)**: Target your own books/products to prevent competitors from stealing space on your product pages.
