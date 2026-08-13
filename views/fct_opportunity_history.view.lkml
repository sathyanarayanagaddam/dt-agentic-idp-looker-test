view: fct_opportunity_history {
  label: "Opportunity"
  sql_table_name: gold.fct_opportunity_history ;;
  description: "Logical entity Opportunity. Synonyms: [Opportunity, Opportunities, Deal, Sales Opportunity, Opportunity History, OpportunityHistory, stg_opportunityhistory, stage history, forecast history, opportunity_history, Fct Opportunity History]"

  dimension: opportunity_history_id {
    label: "Opportunity History ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.opportunity_history_id ;;
    description: "Opportunity History ID — business attribute for Conversational Analytics. Synonyms: [Opportunity History Id, Opportunity, Opportunities, Deal, Sales Opportunity, Opportunity History, OpportunityHistory, stg_opportunityhistory, stage history, forecast history, opportunity_history, Opportunity History ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: opportunity_id {
    label: "Opportunity ID"
    type: string
    sql: ${TABLE}.opportunity_id ;;
    description: "Opportunity ID — business attribute for Conversational Analytics. Synonyms: [Opportunity Id, Opportunity, Opportunities, Deal, Sales Opportunity, Opportunity ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: forecast_category {
    label: "Forecastcategory"
    type: string
    sql: ${TABLE}.ForecastCategory ;;
    description: "Forecastcategory — business attribute for Conversational Analytics. Synonyms: [Forecastcategory, Forecast Category V2 C, Opportunity, Forecast Category]"
    group_label: "Classification"
    synonyms: ["Forecastcategory", "Forecast Category V2 C", "Opportunity", "Forecast Category"]
    tags: ["conversational"]
    suggestions: ["Omitted", "Pipeline", "Qualified", "Best Case", "Commit", "Closed"]
  }

  dimension: created_date {
    label: "Createddate"
    type: string
    sql: ${TABLE}.CreatedDate ;;
    description: "Createddate — business attribute for Conversational Analytics. Synonyms: [Createddate, Opportunity, Created Date]"
    group_label: "Dates"
    synonyms: ["Createddate", "Opportunity", "Created Date"]
    tags: ["conversational"]
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
    description: "Amount — business attribute for Conversational Analytics. Synonyms: [Amount, Practice Closed Amount, practice revenue, domain closed GBP, practice sales, practice_closed_amount_gbp, Gross Margin GBP, closed GM, realized gross margin, sold margin GBP, total_closed_gm_amount_gbp, Weighted Pipeline, weighted pipeline GBP, forecasted weighted amount, probability pipeline, weighted_bookings` (Pulse), weighted bookings, total_weighted_amount_gbp, Amount Gbp, Weighted Amount Gbp, Opportunity]"
    group_label: "Amounts"
    value_format_name: decimal_0
    synonyms: ["Amount", "Practice Closed Amount", "practice revenue", "domain closed GBP", "practice sales", "practice_closed_amount_gbp", "Gross Margin GBP", "closed GM", "realized gross margin", "sold margin GBP", "total_closed_gm_amount_gbp", "Weighted Pipeline"]
    tags: ["conversational"]
  }

  dimension: expected_revenue {
    label: "Expectedrevenue"
    type: string
    sql: ${TABLE}.ExpectedRevenue ;;
    description: "Expectedrevenue — business attribute for Conversational Analytics. Synonyms: [Expectedrevenue, Opportunity, Expected Revenue]"
    group_label: "Amounts"
    value_format_name: decimal_0
    synonyms: ["Expectedrevenue", "Opportunity", "Expected Revenue"]
    tags: ["conversational"]
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

  dimension: probability {
    label: "Probability"
    type: string
    sql: ${TABLE}.Probability ;;
    description: "Probability — business attribute for Conversational Analytics. Synonyms: [Probability, Opportunity]"
    group_label: "Attributes"
    synonyms: ["Probability", "Opportunity"]
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

  dimension: prev_amount {
    label: "Prevamount"
    type: string
    sql: ${TABLE}.PrevAmount ;;
    description: "Prevamount — business attribute for Conversational Analytics. Synonyms: [Prevamount, Amount, Opportunity, Prev Amount]"
    group_label: "Amounts"
    value_format_name: decimal_0
    synonyms: ["Prevamount", "Amount", "Opportunity", "Prev Amount"]
    tags: ["conversational"]
  }

  dimension: prev_close_date {
    label: "Prevclosedate"
    type: string
    sql: ${TABLE}.PrevCloseDate ;;
    description: "Prevclosedate — business attribute for Conversational Analytics. Synonyms: [Prevclosedate, Closedate, Opportunity, Prev Close Date]"
    group_label: "Dates"
    synonyms: ["Prevclosedate", "Closedate", "Opportunity", "Prev Close Date"]
    tags: ["conversational"]
  }

  measure: total_weighted_amount_gbp {
    label: "Total Weighted Amount (GBP)"
    type: sum
    sql: ${Amount} ;;
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
    sql: ${Amount} ;;
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
    sql: ${Amount} ;;
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
    sql: ${Amount} ;;
    group_label: "Metrics"
    description: "average_sales_cycle_days (LookML aggregation; provenance=structural). Synonyms: [Avg Sales Cycle, average deal velocity, days to close, sales duration, average_sales_cycle_days]"
    synonyms: ["Avg Sales Cycle", "average deal velocity", "days to close", "sales duration", "average_sales_cycle_days"]
    drill_fields: [opportunity_name, opportunity_history_name, opportunity_field_history_name]
    tags: ["conversational"]
  }

  measure: median_sales_cycle_days {
    label: "Median Sales Cycle Days"
    type: median
    sql: ${Amount} ;;
    group_label: "Metrics"
    description: "median_sales_cycle_days (LookML aggregation; provenance=structural). Synonyms: [Median Sales Cycle, median deal velocity, typical sales cycle, median_sales_cycle_days]"
    synonyms: ["Median Sales Cycle", "median deal velocity", "typical sales cycle", "median_sales_cycle_days"]
    drill_fields: [opportunity_name, opportunity_history_name, opportunity_field_history_name]
    tags: ["conversational"]
  }

  measure: age_bucket_distribution {
    label: "Age Bucket Distribution"
    type: sum
    sql: ${Amount} ;;
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
    sql: ${Amount} ;;
    group_label: "Amount Metrics"
    description: "practice_closed_amount_gbp (LookML aggregation; provenance=structural). Synonyms: [Practice Closed Amount, practice revenue, domain closed GBP, practice sales, practice_closed_amount_gbp, Practice, Practice Academy Mapping, Technical Practice, Technical Practice Vertical, Practice Vertical, practice_academy_mapping, Practice Closed %, practice_closed_pct, practice share %, practice mix %, practice_closed_pct_gbp, Amount, Amount Gbp]"
    synonyms: ["Practice Closed Amount", "practice revenue", "domain closed GBP", "practice sales", "practice_closed_amount_gbp", "Practice", "Practice Academy Mapping", "Technical Practice", "Technical Practice Vertical", "Practice Vertical", "practice_academy_mapping", "Practice Closed %"]
    value_format_name: decimal_0
    drill_fields: [opportunity_name, opportunity_history_name, opportunity_field_history_name]
    tags: ["conversational"]
  }

}
