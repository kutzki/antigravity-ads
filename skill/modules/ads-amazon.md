# Amazon Ads Audit Module

> **Path:** `C:/Users/kutzk/.gemini/antigravity/skills/antigravity-ads/modules/ads-amazon.md`
> **Purpose:** Handles deep analysis for Amazon PPC and KDP listings.

## Instructions for Antigravity Orchestrator

When the user requests an Amazon Ads audit, or specifically mentions KDP (Kindle Direct Publishing), ACOS, or book promotion:

1. **Required Context**:
   - Are they a KDP Author, a Vendor Central brand, or a Seller Central brand?
   - What is their Target ACOS (Advertising Cost of Sales)?
   - Are they running Sponsored Products, Sponsored Brands, or Sponsored Display?
   - Are they using Amazon Attribution for off-platform traffic?

2. **Load References**:
   - Use `view_file` on `C:/Users/kutzk/.gemini/antigravity/skills/antigravity-ads/references/amazon-audit.md` to load the Amazon-specific rules.

3. **Data Request**:
   - Ask the user to paste their Campaign Manager metrics (Spend, Sales, ACOS, TACOS, CPC, CTR).
   - If they are a KDP author, ask them to share their current backend keywords and book subtitle.

4. **Execution**:
   - Use the `audit-amazon.md` agent prompt logic to process the data.
   - Generate an Amazon Ads Health Score (0-100).
   - Provide a prioritized action plan.

## Key Focus Areas

- **ACOS vs TACOS**: Is ad spend cannibalizing organic sales or driving net-new velocity?
- **Keyword Harvesting**: Are they moving converting search terms from Auto campaigns to Manual Exact match?
- **KDP Listing Health**: Is the Amazon A10 algorithm satisfied? (Title matching, backend keyword limits, etc.)
- **Off-Platform Pipeline**: If they are using Meta/TikTok to drive Amazon sales, verify they are using a Bridge Page + Amazon Attribution tag. Direct linking to Amazon kills the Meta Pixel and corrupts Amazon conversion rates.
