view: fct_opportunity {
  label: "Opportunity"
  sql_table_name: gold.fct_opportunity ;;
  description: "Logical entity Opportunity. Synonyms: [Opportunity, Opportunities, Deal, Sales Opportunity, Fct Opportunity]"

  dimension: opportunity_id {
    label: "Opportunity ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.opportunity_id ;;
    description: "Opportunity ID — business attribute for Conversational Analytics. Synonyms: [Opportunity Id, Opportunity, Opportunities, Deal, Sales Opportunity, Opportunity ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: account_id {
    label: "Account ID"
    type: string
    sql: ${TABLE}.account_id ;;
    description: "Account ID — business attribute for Conversational Analytics. Synonyms: [Account Id, Account, Accounts, Accounts Data, Customer Account, accounts_data, Ffx Casesafeaccountid C, Pipedrive Account Id C, Opportunity, Account ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: sales_rep_id {
    label: "Sales Rep ID"
    type: string
    sql: ${TABLE}.sales_rep_id ;;
    description: "Sales Rep ID — business attribute for Conversational Analytics. Synonyms: [Sales Rep Id, Opportunity, Sales Rep ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: stage_name {
    label: "Stagename"
    type: string
    sql: ${TABLE}.StageName ;;
    description: "Stagename — business attribute for Conversational Analytics. Synonyms: [Stagename, Name, Opportunity, Stage Name]"
    group_label: "Classification"
    synonyms: ["Stagename", "Name", "Opportunity", "Stage Name"]
    tags: ["conversational"]
    suggestions: ["Closed Won"]
  }

  dimension: amount {
    label: "Amount"
    type: string
    sql: ${TABLE}.Amount ;;
    description: "Amount — business attribute for Conversational Analytics. Synonyms: [Amount, Practice Closed Amount, practice revenue, domain closed GBP, practice sales, practice_closed_amount_gbp, Gross Margin GBP, closed GM, realized gross margin, sold margin GBP, total_closed_gm_amount_gbp, Weighted Pipeline, weighted pipeline GBP, forecasted weighted amount, probability pipeline, weighted_bookings` (Pulse), weighted bookings, total_weighted_amount_gbp, Opportunity]"
    group_label: "Amounts"
    value_format_name: decimal_0
    synonyms: ["Amount", "Practice Closed Amount", "practice revenue", "domain closed GBP", "practice sales", "practice_closed_amount_gbp", "Gross Margin GBP", "closed GM", "realized gross margin", "sold margin GBP", "total_closed_gm_amount_gbp", "Weighted Pipeline"]
    tags: ["conversational"]
  }

  dimension: currency_iso_code {
    label: "Currencyisocode"
    type: string
    sql: ${TABLE}.CurrencyIsoCode ;;
    description: "Currencyisocode — business attribute for Conversational Analytics. Synonyms: [Currencyisocode, Currency, Opportunity, Currency Iso Code]"
    group_label: "Attributes"
    synonyms: ["Currencyisocode", "Currency", "Opportunity", "Currency Iso Code"]
    tags: ["conversational"]
    suggestions: ["GBP"]
  }

  dimension: close_date {
    label: "Closedate"
    type: string
    sql: ${TABLE}.CloseDate ;;
    description: "Closedate — business attribute for Conversational Analytics. Synonyms: [Closedate, Opportunity, Close Date]"
    group_label: "Dates"
    synonyms: ["Closedate", "Opportunity", "Close Date"]
    tags: ["conversational"]
  }

  dimension: forecast_category_v2_c {
    label: "Forecast Category V2 C"
    type: string
    sql: ${TABLE}.Forecast_Category_V2__c ;;
    description: "Forecast Category V2 C — business attribute for Conversational Analytics. Synonyms: [Forecast Category V2 C, Opportunity]"
    group_label: "Classification"
    synonyms: ["Forecast Category V2 C", "Opportunity"]
    tags: ["conversational"]
    suggestions: ["Omitted", "Pipeline", "Qualified", "Best Case", "Commit", "Closed"]
  }

  dimension: practice_id {
    label: "Practice ID"
    type: string
    sql: ${TABLE}.practice_id ;;
    description: "Practice ID — business attribute for Conversational Analytics. Synonyms: [Practice Id, Practice, Practice Academy Mapping, Technical Practice, Technical Practice Vertical, Practice Vertical, practice_academy_mapping, Opportunity, Practice ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: region_id {
    label: "Region ID"
    type: string
    sql: ${TABLE}.region_id ;;
    description: "Region ID — business attribute for Conversational Analytics. Synonyms: [Region Id, Opportunity, Region ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: amount_gbp {
    label: "Amount GBP"
    type: string
    sql: ${TABLE}.amount_gbp ;;
    description: "Amount GBP — business attribute for Conversational Analytics. Synonyms: [Amount Gbp, Practice Closed Amount, practice revenue, domain closed GBP, practice sales, practice_closed_amount_gbp, Gross Margin GBP, closed GM, realized gross margin, sold margin GBP, total_closed_gm_amount_gbp, Weighted Pipeline, weighted pipeline GBP, forecasted weighted amount, probability pipeline, weighted_bookings` (Pulse), weighted bookings, total_weighted_amount_gbp, Amount, Opportunity, Amount (GBP)]"
    group_label: "Amounts"
    value_format_name: gbp_in_thousands
    synonyms: ["Amount Gbp", "Practice Closed Amount", "practice revenue", "domain closed GBP", "practice sales", "practice_closed_amount_gbp", "Gross Margin GBP", "closed GM", "realized gross margin", "sold margin GBP", "total_closed_gm_amount_gbp", "Weighted Pipeline"]
    tags: ["conversational"]
  }

  dimension: weighted_amount_gbp {
    label: "Weighted Amount GBP"
    type: string
    sql: ${TABLE}.weighted_amount_gbp ;;
    description: "Weighted Amount GBP — business attribute for Conversational Analytics. Synonyms: [Weighted Amount Gbp, Weighted Pipeline, weighted pipeline GBP, forecasted weighted amount, probability pipeline, weighted_bookings` (Pulse), weighted bookings, total_weighted_amount_gbp, Amount, Amount Gbp, Opportunity, Weighted Amount (GBP)]"
    group_label: "Amounts"
    value_format_name: gbp_in_thousands
    synonyms: ["Weighted Amount Gbp", "Weighted Pipeline", "weighted pipeline GBP", "forecasted weighted amount", "probability pipeline", "weighted_bookings` (Pulse)", "weighted bookings", "total_weighted_amount_gbp", "Amount", "Amount Gbp", "Opportunity", "Weighted Amount (GBP)"]
    tags: ["conversational"]
  }

  dimension: is_won {
    label: "Is Won"
    type: string
    sql: ${TABLE}.is_won ;;
    description: "Is Won — business attribute for Conversational Analytics. Synonyms: [Is Won, Opportunity]"
    group_label: "Classification"
    synonyms: ["Is Won", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: is_closed_outcome {
    label: "Is Closed Outcome"
    type: string
    sql: ${TABLE}.is_closed_outcome ;;
    description: "Is Closed Outcome — business attribute for Conversational Analytics. Synonyms: [Is Closed Outcome, Opportunity]"
    group_label: "Dates"
    synonyms: ["Is Closed Outcome", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: is_academy_or_distortion {
    label: "Is Academy Or Distortion"
    type: string
    sql: ${TABLE}.is_academy_or_distortion ;;
    description: "Is Academy Or Distortion — business attribute for Conversational Analytics. Synonyms: [Is Academy Or Distortion, Is Academy, Opportunity]"
    group_label: "Classification"
    synonyms: ["Is Academy Or Distortion", "Is Academy", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: is_syntio_2025_exclusion {
    label: "Is Syntio 2025 Exclusion"
    type: string
    sql: ${TABLE}.is_syntio_2025_exclusion ;;
    description: "Is Syntio 2025 Exclusion — business attribute for Conversational Analytics. Synonyms: [Is Syntio 2025 Exclusion, Opportunity]"
    group_label: "Classification"
    synonyms: ["Is Syntio 2025 Exclusion", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: ever_reached_qualified {
    label: "Ever Reached Qualified"
    type: string
    sql: ${TABLE}.ever_reached_qualified ;;
    description: "Ever Reached Qualified — business attribute for Conversational Analytics. Synonyms: [Ever Reached Qualified, Opportunity]"
    group_label: "Attributes"
    synonyms: ["Ever Reached Qualified", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: obs_value {
    label: "Obs Value"
    type: string
    sql: ${TABLE}.OBS_VALUE ;;
    description: "Obs Value — business attribute for Conversational Analytics. Synonyms: [Obs Value, Opportunity]"
    group_label: "Attributes"
    synonyms: ["Obs Value", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: eur {
    label: "EUR"
    type: string
    sql: ${TABLE}.EUR ;;
    description: "EUR — business attribute for Conversational Analytics. Synonyms: [Eur, Opportunity, EUR]"
    group_label: "Amounts"
    synonyms: ["Eur", "Opportunity", "EUR"]
    tags: ["conversational"]
  }

  dimension: omitted {
    label: "Omitted"
    type: string
    sql: ${TABLE}.Omitted ;;
    description: "Omitted — business attribute for Conversational Analytics. Synonyms: [Omitted, Opportunity]"
    group_label: "Attributes"
    synonyms: ["Omitted", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: won {
    label: "Won"
    type: string
    sql: ${TABLE}.Won ;;
    description: "Won — business attribute for Conversational Analytics. Synonyms: [Won, Is Won, Opportunity]"
    group_label: "Attributes"
    synonyms: ["Won", "Is Won", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: analytics {
    label: "Analytics"
    type: string
    sql: ${TABLE}.Analytics ;;
    description: "Analytics — business attribute for Conversational Analytics. Synonyms: [Analytics, Opportunity]"
    group_label: "Attributes"
    synonyms: ["Analytics", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: platform {
    label: "Platform"
    type: string
    sql: ${TABLE}.Platform ;;
    description: "Platform — business attribute for Conversational Analytics. Synonyms: [Platform, Opportunity]"
    group_label: "Attributes"
    synonyms: ["Platform", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: gen_ai {
    label: "Genai"
    type: string
    sql: ${TABLE}.GenAI ;;
    description: "Genai — business attribute for Conversational Analytics. Synonyms: [Genai, Opportunity, Gen Ai]"
    group_label: "Attributes"
    synonyms: ["Genai", "Opportunity", "Gen Ai"]
    tags: ["conversational"]
  }

  dimension: learning {
    label: "Learning"
    type: string
    sql: ${TABLE}.Learning ;;
    description: "Learning — business attribute for Conversational Analytics. Synonyms: [Learning, Opportunity]"
    group_label: "Attributes"
    synonyms: ["Learning", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: assessment {
    label: "Assessment"
    type: string
    sql: ${TABLE}.Assessment ;;
    description: "Assessment — business attribute for Conversational Analytics. Synonyms: [Assessment, Opportunity]"
    group_label: "Attributes"
    synonyms: ["Assessment", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: rebates {
    label: "Rebates"
    type: string
    sql: ${TABLE}.Rebates ;;
    description: "Rebates — business attribute for Conversational Analytics. Synonyms: [Rebates, Opportunity]"
    group_label: "Attributes"
    synonyms: ["Rebates", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: ops {
    label: "Ops"
    type: string
    sql: ${TABLE}.Ops ;;
    description: "Ops — business attribute for Conversational Analytics. Synonyms: [Ops, Genops, Opportunity]"
    group_label: "Attributes"
    synonyms: ["Ops", "Genops", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: foundations {
    label: "Foundations"
    type: string
    sql: ${TABLE}.Foundations ;;
    description: "Foundations — business attribute for Conversational Analytics. Synonyms: [Foundations, Opportunity]"
    group_label: "Attributes"
    synonyms: ["Foundations", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: gen_ops {
    label: "Genops"
    type: string
    sql: ${TABLE}.GenOps ;;
    description: "Genops — business attribute for Conversational Analytics. Synonyms: [Genops, Ops, Opportunity, Gen Ops]"
    group_label: "Attributes"
    synonyms: ["Genops", "Ops", "Opportunity", "Gen Ops"]
    tags: ["conversational"]
  }

  dimension: year {
    label: "Year"
    type: string
    sql: ${TABLE}.YEAR ;;
    description: "Year — business attribute for Conversational Analytics. Synonyms: [Year, Opportunity]"
    group_label: "Dates"
    synonyms: ["Year", "Opportunity"]
    tags: ["conversational"]
  }

  measure: total_weighted_amount_gbp {
    label: "Total Weighted Amount (GBP)"
    type: sum
    sql: ${weighted_amount_gbp} ;;
    group_label: "Amount Metrics"
    description: "total_weighted_amount_gbp (LookML aggregation; provenance=structural). Synonyms: [Weighted Pipeline, weighted pipeline GBP, forecasted weighted amount, probability pipeline, weighted_bookings` (Pulse), weighted bookings, total_weighted_amount_gbp, Amount, Amount Gbp, Weighted Amount Gbp]"
    synonyms: ["Weighted Pipeline", "weighted pipeline GBP", "forecasted weighted amount", "probability pipeline", "weighted_bookings` (Pulse)", "weighted bookings", "total_weighted_amount_gbp", "Amount", "Amount Gbp", "Weighted Amount Gbp"]
    value_format_name: decimal_0
    drill_fields: [opportunity_name, opportunity_history_name, opportunity_field_history_name]
    tags: ["conversational"]
  }

  measure: gap_to_target_gbp {
    label: "Gap To Target (GBP)"
    type: sum
    sql: ${amount_gbp} ;;
    group_label: "Metrics"
    description: "gap_to_target_gbp (LookML aggregation; provenance=structural). Synonyms: [Gap to Target, quota gap, target shortfall, pipeline gap, gap_to_target_gbp]"
    synonyms: ["Gap to Target", "quota gap", "target shortfall", "pipeline gap", "gap_to_target_gbp"]
    value_format_name: decimal_0
    drill_fields: [opportunity_name, opportunity_history_name, opportunity_field_history_name]
    tags: ["conversational"]
  }

  measure: total_closed_gm_amount_gbp {
    label: "Total Closed GM Amount (GBP)"
    type: sum
    sql: ${amount_gbp} ;;
    group_label: "Amount Metrics"
    description: "total_closed_gm_amount_gbp (LookML aggregation; provenance=structural). Synonyms: [Gross Margin GBP, closed GM, realized gross margin, sold margin GBP, total_closed_gm_amount_gbp, Amount, Amount Gbp]"
    synonyms: ["Gross Margin GBP", "closed GM", "realized gross margin", "sold margin GBP", "total_closed_gm_amount_gbp", "Amount", "Amount Gbp"]
    value_format_name: decimal_0
    drill_fields: [opportunity_name, opportunity_history_name, opportunity_field_history_name]
    tags: ["conversational"]
  }

  measure: average_sales_cycle_days {
    label: "Average Sales Cycle Days"
    type: average
    sql: ${account_id} ;;
    group_label: "Metrics"
    description: "average_sales_cycle_days (LookML aggregation; provenance=structural). Synonyms: [Avg Sales Cycle, average deal velocity, days to close, sales duration, average_sales_cycle_days]"
    synonyms: ["Avg Sales Cycle", "average deal velocity", "days to close", "sales duration", "average_sales_cycle_days"]
    drill_fields: [opportunity_name, opportunity_history_name, opportunity_field_history_name]
    tags: ["conversational"]
  }

  measure: median_sales_cycle_days {
    label: "Median Sales Cycle Days"
    type: median
    sql: ${account_id} ;;
    group_label: "Metrics"
    description: "median_sales_cycle_days (LookML aggregation; provenance=structural). Synonyms: [Median Sales Cycle, median deal velocity, typical sales cycle, median_sales_cycle_days]"
    synonyms: ["Median Sales Cycle", "median deal velocity", "typical sales cycle", "median_sales_cycle_days"]
    drill_fields: [opportunity_name, opportunity_history_name, opportunity_field_history_name]
    tags: ["conversational"]
  }

  measure: age_bucket_distribution {
    label: "Age Bucket Distribution"
    type: sum
    sql: ${account_id} ;;
    group_label: "Metrics"
    description: "age_bucket_distribution (LookML aggregation; provenance=structural). Synonyms: [age_bucket_distribution]"
    synonyms: ["age_bucket_distribution"]
    drill_fields: [opportunity_name, opportunity_history_name, opportunity_field_history_name]
    tags: ["conversational"]
  }

  measure: practice_opportunity_count {
    label: "Practice Opportunity Count"
    type: count
    group_label: "Metrics"
    description: "practice_opportunity_count (LookML aggregation; provenance=structural). Synonyms: [Opportunity, Opportunities, Deal, Sales Opportunity, Practice, Practice Academy Mapping, Technical Practice, Technical Practice Vertical, Practice Vertical, practice_academy_mapping, practice_opportunity_count]"
    synonyms: ["Opportunity", "Opportunities", "Deal", "Sales Opportunity", "Practice", "Practice Academy Mapping", "Technical Practice", "Technical Practice Vertical", "Practice Vertical", "practice_academy_mapping", "practice_opportunity_count"]
    drill_fields: [opportunity_name, opportunity_history_name, opportunity_field_history_name]
    tags: ["conversational"]
  }

  measure: practice_closed_amount_gbp {
    label: "Practice Closed Amount (GBP)"
    type: sum
    sql: ${amount_gbp} ;;
    group_label: "Amount Metrics"
    description: "practice_closed_amount_gbp (LookML aggregation; provenance=structural). Synonyms: [Practice Closed Amount, practice revenue, domain closed GBP, practice sales, practice_closed_amount_gbp, Practice, Practice Academy Mapping, Technical Practice, Technical Practice Vertical, Practice Vertical, practice_academy_mapping, Practice Closed %, practice_closed_pct, practice share %, practice mix %, practice_closed_pct_gbp, Amount, Amount Gbp]"
    synonyms: ["Practice Closed Amount", "practice revenue", "domain closed GBP", "practice sales", "practice_closed_amount_gbp", "Practice", "Practice Academy Mapping", "Technical Practice", "Technical Practice Vertical", "Practice Vertical", "practice_academy_mapping", "Practice Closed %"]
    value_format_name: decimal_0
    drill_fields: [opportunity_name, opportunity_history_name, opportunity_field_history_name]
    tags: ["conversational"]
  }

}
