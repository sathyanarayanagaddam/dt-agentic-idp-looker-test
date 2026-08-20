view: fct_opportunity_history {
  label: "Opportunity"
  sql_table_name: gold.fct_opportunity_history ;;

  dimension: opportunity_history_id {
    label: "Opportunity History ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.opportunity_history_id ;;
    description: "Opportunity History ID — business attribute for Conversational Analytics. Synonyms: [Opportunity History Id, Opportunity, Opportunity History ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: opportunity_id {
    label: "Opportunity ID"
    type: string
    sql: ${TABLE}.opportunity_id ;;
    description: "Opportunity ID — business attribute for Conversational Analytics. Synonyms: [Opportunity Id, Opportunity, Opportunity ID]"
    group_label: "Attributes"
    synonyms: ["Opportunity Id", "Opportunity"]
    tags: ["conversational"]
    html: "<a href=\"https://datatonic.lightning.force.com/${opportunity_id}\" target=\"_blank\">{{ value }}</a>" ;;
  }

  dimension: forecast_category {
    label: "Forecast Category"
    type: string
    sql: ${TABLE}.forecastcategory ;;
    description: "Forecast Category — business attribute for Conversational Analytics. Synonyms: [Forecastcategory, Opportunity, Forecast Category]"
    group_label: "Classification"
    synonyms: ["Forecastcategory", "Opportunity", "Forecast Category"]
    tags: ["conversational"]
    suggestions: ["Omitted", "Pipeline", "Qualified", "Best Case", "Commit", "Closed"]
  }

  dimension_group: created {
    label: "Createddate"
    description: "Createddate timeframes (date, month, quarter, year)."
    type: time
    timeframes: [date, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.createddate ;;
    group_label: "Dates"
    synonyms: ["Createddate", "created", "date", "month", "quarter", "year"]
    tags: ["conversational"]
  }

  dimension: stage_name {
    label: "Stage Name"
    type: string
    sql: ${TABLE}.stagename ;;
    description: "Stage Name — business attribute for Conversational Analytics. Synonyms: [Stagename, Opportunity, Stage Name]"
    group_label: "Classification"
    synonyms: ["Stagename", "Opportunity", "Stage Name"]
    tags: ["conversational"]
    suggestions: ["Closed Won"]
  }

  dimension: amount {
    label: "Opportunity Amount"
    type: number
    sql: ${TABLE}.amount ;;
    description: "Opportunity Amount — business attribute for Conversational Analytics. Synonyms: [Amount, Opportunity, Opportunity Amount]"
    group_label: "Amounts"
    value_format_name: decimal_0
    synonyms: ["Amount", "Opportunity", "Opportunity Amount"]
    tags: ["conversational"]
  }

  dimension: expected_revenue {
    label: "Expected Revenue"
    type: number
    sql: ${TABLE}.expectedrevenue ;;
    description: "Expected Revenue — business attribute for Conversational Analytics. Synonyms: [Expectedrevenue, Opportunity, Expected Revenue]"
    group_label: "Amounts"
    value_format_name: decimal_0
    synonyms: ["Expectedrevenue", "Opportunity", "Expected Revenue"]
    tags: ["conversational"]
  }

  dimension: probability {
    label: "Probability"
    type: number
    sql: ${TABLE}.probability ;;
    description: "Probability — business attribute for Conversational Analytics. Synonyms: [Probability, Opportunity]"
    group_label: "Attributes"
    synonyms: ["Probability", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: currency_iso_code {
    label: "Currency Iso Code"
    type: string
    sql: ${TABLE}.currencyisocode ;;
    description: "Currency Iso Code — business attribute for Conversational Analytics. Synonyms: [Currencyisocode, Opportunity, Currency Iso Code]"
    group_label: "Attributes"
    synonyms: ["Currencyisocode", "Opportunity", "Currency Iso Code"]
    tags: ["conversational"]
    suggestions: ["GBP"]
  }

  dimension: prev_amount {
    label: "Prev Amount"
    type: number
    sql: ${TABLE}.prevamount ;;
    description: "Prev Amount — business attribute for Conversational Analytics. Synonyms: [Prevamount, Opportunity, Prev Amount]"
    group_label: "Amounts"
    value_format_name: decimal_0
    synonyms: ["Prevamount", "Opportunity", "Prev Amount"]
    tags: ["conversational"]
  }

  dimension_group: prev_close {
    label: "Prevclosedate"
    description: "Prevclosedate timeframes (date, month, quarter, year)."
    type: time
    timeframes: [date, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.prevclosedate ;;
    group_label: "Dates"
    synonyms: ["Prevclosedate", "prev_close", "date", "month", "quarter", "year"]
    tags: ["conversational"]
  }

  dimension_group: close {
    label: "Closedate"
    description: "Closedate timeframes (date, month, quarter, year)."
    type: time
    timeframes: [date, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.closedate ;;
    group_label: "Dates"
    synonyms: ["Closedate", "close", "date", "month", "quarter", "year", "Close Date"]
    tags: ["conversational"]
  }

  measure: gap_to_target_gbp {
    label: "Gap To Target (GBP)"
    type: sum
    sql: ${amount} ;;
    group_label: "Metrics"
    description: "gap_to_target_gbp (LookML aggregation; provenance=structural). Synonyms: [Gap to Target, quota gap, target shortfall, pipeline gap, gap_to_target_gbp]"
    synonyms: ["Gap to Target", "quota gap", "target shortfall", "pipeline gap", "gap_to_target_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: total_closed_gm_amount_gbp {
    label: "Total Closed GM Amount (GBP)"
    type: sum
    sql: ${amount} ;;
    group_label: "Amount Metrics"
    description: "total_closed_gm_amount_gbp (LookML aggregation; provenance=structural). Synonyms: [Gross Margin GBP, closed GM, realized gross margin, sold margin GBP, total_closed_gm_amount_gbp]"
    synonyms: ["Gross Margin GBP", "closed GM", "realized gross margin", "sold margin GBP", "total_closed_gm_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: median_sales_cycle_days {
    label: "Median Sales Cycle Days"
    type: median
    sql: DATE_DIFF(DATE(${close_date}), DATE(${created_date}), DAY) ;;
    group_label: "Metrics"
    description: "median_sales_cycle_days (LookML aggregation; provenance=structural). Synonyms: [Median Sales Cycle, median deal velocity, typical sales cycle, median_sales_cycle_days]"
    synonyms: ["Median Sales Cycle", "median deal velocity", "typical sales cycle", "median_sales_cycle_days"]
    drill_fields: [opportunity_id, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: age_bucket_distribution {
    label: "Age Bucket Distribution"
    type: sum
    sql: ${amount} ;;
    group_label: "Metrics"
    description: "age_bucket_distribution (LookML aggregation; provenance=structural). Synonyms: [age_bucket_distribution]"
    synonyms: ["age_bucket_distribution"]
    drill_fields: [opportunity_id, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: practice_opportunity_count {
    label: "Practice Opportunity Count"
    type: count
    group_label: "Metrics"
    description: "practice_opportunity_count (LookML aggregation; provenance=structural). Synonyms: [practice_opportunity_count]"
    synonyms: ["practice_opportunity_count"]
    drill_fields: [opportunity_id, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: practice_closed_amount_gbp {
    label: "Practice Closed Amount (GBP)"
    type: sum
    sql: ${amount} ;;
    group_label: "Amount Metrics"
    description: "practice_closed_amount_gbp (LookML aggregation; provenance=structural). Synonyms: [Practice Closed Amount, practice revenue, domain closed GBP, practice sales, practice_closed_amount_gbp]"
    synonyms: ["Practice Closed Amount", "practice revenue", "domain closed GBP", "practice sales", "practice_closed_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, stage_name, close_month]
    tags: ["conversational"]
  }

}
