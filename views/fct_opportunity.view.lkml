view: fct_opportunity {
  label: "Opportunity"
  sql_table_name: gold.fct_opportunity ;;

  dimension: opportunity_id {
    label: "Opportunity ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.opportunity_id ;;
    description: "Opportunity ID — business attribute for Conversational Analytics. Synonyms: [Opportunity Id, Opportunity, Opportunity ID]"
    group_label: "Attributes"
    synonyms: ["Opportunity Id", "Opportunity"]
    tags: ["conversational"]
    html: "<a href=\"https://datatonic.lightning.force.com/${opportunity_id}\" target=\"_blank\">{{ value }}</a>" ;;
  }

  dimension: owner_id {
    label: "Owner ID"
    type: string
    sql: ${TABLE}.owner_id ;;
    description: "Owner ID — business attribute for Conversational Analytics. Synonyms: [Owner Id, Opportunity, Owner ID]"
    hidden: yes
    tags: ["internal"]
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

  dimension: forecast_category_v2_c {
    label: "Forecast Category V2 C"
    type: string
    sql: ${TABLE}.forecast_category_v2__c ;;
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
    description: "Practice ID — business attribute for Conversational Analytics. Synonyms: [Practice Id, Opportunity, Practice ID]"
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
    label: "Opportunity Amount (GBP)"
    type: number
    sql: ${TABLE}.amount_gbp ;;
    description: "Opportunity Amount (GBP) — business attribute for Conversational Analytics. Synonyms: [Amount Gbp, Opportunity, Amount (GBP), Opportunity Amount (GBP)]"
    group_label: "Amounts"
    value_format_name: gbp_0
    synonyms: ["Amount Gbp", "Opportunity", "Amount (GBP)", "Opportunity Amount (GBP)"]
    tags: ["conversational"]
  }

  dimension: is_won {
    label: "Is Won"
    type: yesno
    sql: ${TABLE}.is_won ;;
    description: "Is Won — business attribute for Conversational Analytics. Synonyms: [Iswon, Is Won, Opportunity]"
    group_label: "Classification"
    synonyms: ["Iswon", "Is Won", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: is_closed_outcome {
    label: "Is Closed Outcome"
    type: yesno
    sql: ${TABLE}.is_closed_outcome ;;
    description: "Is Closed Outcome — business attribute for Conversational Analytics. Synonyms: [Is Closed Outcome, Opportunity]"
    group_label: "Dates"
    synonyms: ["Is Closed Outcome", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: is_academy_or_distortion {
    label: "Is Academy Or Distortion"
    type: yesno
    sql: ${TABLE}.is_academy_or_distortion ;;
    description: "Is Academy Or Distortion — business attribute for Conversational Analytics. Synonyms: [Is Academy Or Distortion, Opportunity]"
    group_label: "Classification"
    synonyms: ["Is Academy Or Distortion", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: is_syntio_2025_exclusion {
    label: "Is Syntio 2025 Exclusion"
    type: yesno
    sql: ${TABLE}.is_syntio_2025_exclusion ;;
    description: "Is Syntio 2025 Exclusion — business attribute for Conversational Analytics. Synonyms: [Is Syntio 2025 Exclusion, Opportunity]"
    group_label: "Classification"
    synonyms: ["Is Syntio 2025 Exclusion", "Opportunity"]
    tags: ["conversational"]
  }

  dimension: ever_reached_qualified {
    label: "Ever Reached Qualified"
    type: yesno
    sql: ${TABLE}.ever_reached_qualified ;;
    description: "Ever Reached Qualified — business attribute for Conversational Analytics. Synonyms: [Ever Reached Qualified, Opportunity]"
    group_label: "Attributes"
    synonyms: ["Ever Reached Qualified", "Opportunity"]
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

  measure: total_weighted_amount_gbp {
    label: "Total Weighted Amount (GBP)"
    type: sum
    sql: ${amount_gbp} * (CASE
      WHEN ${forecast_category_v2_c} = 'Best Case' THEN 0.7
      WHEN ${forecast_category_v2_c} = 'Closed' THEN 1.0
      WHEN ${forecast_category_v2_c} = 'Commit' THEN 0.9
      WHEN ${forecast_category_v2_c} = 'Pipeline' THEN 0.15
      WHEN ${forecast_category_v2_c} = 'Qualified' THEN 0.5
      ELSE 0.0
    END) ;;
    group_label: "Amount Metrics"
    description: "total_weighted_amount_gbp (LookML aggregation; provenance=structural). Synonyms: [Weighted Pipeline, weighted pipeline GBP, forecasted weighted amount, probability pipeline, weighted_bookings` (Pulse), weighted bookings, total_weighted_amount_gbp]"
    synonyms: ["Weighted Pipeline", "weighted pipeline GBP", "forecasted weighted amount", "probability pipeline", "weighted_bookings (Pulse)", "weighted bookings", "total_weighted_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: gap_to_target_gbp {
    label: "Gap To Target (GBP)"
    type: sum
    sql: ${amount_gbp} ;;
    group_label: "Metrics"
    description: "gap_to_target_gbp (LookML aggregation; provenance=structural). Synonyms: [Gap to Target, quota gap, target shortfall, pipeline gap, gap_to_target_gbp]"
    synonyms: ["Gap to Target", "quota gap", "target shortfall", "pipeline gap", "gap_to_target_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: total_closed_gm_amount_gbp {
    label: "Total Closed GM Amount (GBP)"
    type: sum
    sql: ${amount_gbp} ;;
    group_label: "Amount Metrics"
    description: "total_closed_gm_amount_gbp (LookML aggregation; provenance=structural). Synonyms: [Gross Margin GBP, closed GM, realized gross margin, sold margin GBP, total_closed_gm_amount_gbp]"
    synonyms: ["Gross Margin GBP", "closed GM", "realized gross margin", "sold margin GBP", "total_closed_gm_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: median_sales_cycle_days {
    label: "Median Sales Cycle Days"
    type: median
    sql: ${amount} ;;
    group_label: "Metrics"
    description: "median_sales_cycle_days (LookML aggregation; provenance=structural). Synonyms: [Median Sales Cycle, median deal velocity, typical sales cycle, median_sales_cycle_days]"
    synonyms: ["Median Sales Cycle", "median deal velocity", "typical sales cycle", "median_sales_cycle_days"]
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: age_bucket_distribution {
    label: "Age Bucket Distribution"
    type: sum
    sql: ${amount} ;;
    group_label: "Metrics"
    description: "age_bucket_distribution (LookML aggregation; provenance=structural). Synonyms: [age_bucket_distribution]"
    synonyms: ["age_bucket_distribution"]
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: practice_opportunity_count {
    label: "Practice Opportunity Count"
    type: count
    group_label: "Metrics"
    description: "practice_opportunity_count (LookML aggregation; provenance=structural). Synonyms: [practice_opportunity_count]"
    synonyms: ["practice_opportunity_count"]
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
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
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: win_rate_by_region_won_amount {
    type: sum
    sql: ${amount_gbp} ;;
    filters: [is_won: "Yes", is_academy_or_distortion: "No"]
    group_label: "Ratio Metrics"
    hidden: yes
    tags: ["internal"]
  }

  measure: win_rate_by_region_closed_amount {
    type: sum
    sql: ${amount_gbp} ;;
    filters: [is_closed_outcome: "Yes", is_academy_or_distortion: "No"]
    group_label: "Ratio Metrics"
    hidden: yes
    tags: ["internal"]
  }

  measure: win_rate_by_region {
    label: "Win Rate By Region"
    type: number
    sql: ${win_rate_by_region_won_amount} / NULLIF(${win_rate_by_region_closed_amount}, 0) ;;
    group_label: "Ratio Metrics"
    description: "win_rate_by_region (LookML aggregation; provenance=structural). Synonyms: [Regional Win Rate, regional win rate %, closing rate by region, amount win rate, win_rate` (Pulse), rep_win_rate_gbp` (Perf, +rep grain), win_rate_by_region]"
    synonyms: ["Regional Win Rate", "regional win rate %", "closing rate by region", "amount win rate", "win_rate (Pulse)", "rep_win_rate_gbp", "+rep grain)", "win_rate_by_region"]
    value_format_name: percent_1
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: qualified_win_rate_gbp_won_amount {
    type: sum
    sql: ${amount_gbp} ;;
    filters: [is_won: "Yes", ever_reached_qualified: "Yes", is_syntio_2025_exclusion: "No", is_academy_or_distortion: "No"]
    group_label: "Ratio Metrics"
    hidden: yes
    tags: ["internal"]
  }

  measure: qualified_win_rate_gbp_closed_amount {
    type: sum
    sql: ${amount_gbp} ;;
    filters: [is_closed_outcome: "Yes", ever_reached_qualified: "Yes", is_syntio_2025_exclusion: "No", is_academy_or_distortion: "No"]
    group_label: "Ratio Metrics"
    hidden: yes
    tags: ["internal"]
  }

  measure: qualified_win_rate_gbp {
    label: "Qualified Win Rate (GBP)"
    type: number
    sql: ${qualified_win_rate_gbp_won_amount} / NULLIF(${qualified_win_rate_gbp_closed_amount}, 0) ;;
    group_label: "Ratio Metrics"
    description: "qualified_win_rate_gbp (LookML aggregation; provenance=structural). Synonyms: [Qualified Win Rate, qual win rate, clean win rate, qualified conversion rate, win_rate_qual` (Pulse), qualified_win_rate_gbp]"
    synonyms: ["Qualified Win Rate", "qual win rate", "clean win rate", "qualified conversion rate", "win_rate_qual (Pulse)", "qualified_win_rate_gbp"]
    value_format_name: percent_1
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: closed_opportunity_count {
    label: "Closed Opportunity Count"
    type: count_distinct
    sql: ${TABLE}.opportunity_id ;;
    filters: [is_closed_outcome: "Yes"]
    group_label: "Metrics"
    description: "closed_opportunity_count (LookML aggregation; provenance=aggregate_measure_contract)"
    synonyms: ["Closed Opportunity Count", "closed_opportunity_count"]
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: open_amount_gbp {
    label: "Open Amount (GBP)"
    type: sum
    sql: ${amount_gbp} ;;
    filters: [is_closed_outcome: "No"]
    group_label: "Amount Metrics"
    description: "open_amount_gbp (LookML aggregation; provenance=aggregate_measure_contract)"
    synonyms: ["Open Amount (GBP)", "open_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: open_best_case_amount_gbp {
    label: "Open Best Case Amount (GBP)"
    type: sum
    sql: ${amount_gbp} ;;
    filters: [is_closed_outcome: "No"]
    group_label: "Amount Metrics"
    description: "open_best_case_amount_gbp (LookML aggregation; provenance=aggregate_measure_contract)"
    synonyms: ["Open Best Case Amount (GBP)", "open_best_case_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: open_closed_category_amount_gbp {
    label: "Open Closed Category Amount (GBP)"
    type: sum
    sql: ${amount_gbp} ;;
    filters: [is_closed_outcome: "No"]
    group_label: "Amount Metrics"
    description: "open_closed_category_amount_gbp (LookML aggregation; provenance=aggregate_measure_contract)"
    synonyms: ["Open Closed Category Amount (GBP)", "open_closed_category_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: open_commit_amount_gbp {
    label: "Open Commit Amount (GBP)"
    type: sum
    sql: ${amount_gbp} ;;
    filters: [is_closed_outcome: "No"]
    group_label: "Amount Metrics"
    description: "open_commit_amount_gbp (LookML aggregation; provenance=aggregate_measure_contract)"
    synonyms: ["Open Commit Amount (GBP)", "open_commit_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: open_omitted_amount_gbp {
    label: "Open Omitted Amount (GBP)"
    type: sum
    sql: ${amount_gbp} ;;
    filters: [is_closed_outcome: "No"]
    group_label: "Amount Metrics"
    description: "open_omitted_amount_gbp (LookML aggregation; provenance=aggregate_measure_contract)"
    synonyms: ["Open Omitted Amount (GBP)", "open_omitted_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: open_opportunity_count {
    label: "Open Opportunity Count"
    type: count_distinct
    sql: ${TABLE}.opportunity_id ;;
    filters: [is_closed_outcome: "No"]
    group_label: "Metrics"
    description: "open_opportunity_count (LookML aggregation; provenance=aggregate_measure_contract)"
    synonyms: ["Open Opportunity Count", "open_opportunity_count"]
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: open_pipeline_category_amount_gbp {
    label: "Open Pipeline Category Amount (GBP)"
    type: sum
    sql: ${amount_gbp} ;;
    filters: [is_closed_outcome: "No"]
    group_label: "Amount Metrics"
    description: "open_pipeline_category_amount_gbp (LookML aggregation; provenance=aggregate_measure_contract)"
    synonyms: ["Open Pipeline Category Amount (GBP)", "open_pipeline_category_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: open_qualified_amount_gbp {
    label: "Open Qualified Amount (GBP)"
    type: sum
    sql: ${amount_gbp} ;;
    filters: [is_closed_outcome: "No"]
    group_label: "Amount Metrics"
    description: "open_qualified_amount_gbp (LookML aggregation; provenance=aggregate_measure_contract)"
    synonyms: ["Open Qualified Amount (GBP)", "open_qualified_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: open_weighted_amount_gbp {
    label: "Open Weighted Amount (GBP)"
    type: sum
    sql: ${amount_gbp} * (CASE
      WHEN ${forecast_category_v2_c} = 'Best Case' THEN 0.7
      WHEN ${forecast_category_v2_c} = 'Closed' THEN 1.0
      WHEN ${forecast_category_v2_c} = 'Commit' THEN 0.9
      WHEN ${forecast_category_v2_c} = 'Pipeline' THEN 0.15
      WHEN ${forecast_category_v2_c} = 'Qualified' THEN 0.5
      ELSE 0.0
    END) ;;
    filters: [is_closed_outcome: "No"]
    group_label: "Amount Metrics"
    description: "open_weighted_amount_gbp (LookML aggregation; provenance=aggregate_measure_contract)"
    synonyms: ["Open Weighted Amount (GBP)", "open_weighted_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: total_amount_gbp {
    label: "Total Amount (GBP)"
    type: sum
    sql: ${amount_gbp} ;;
    group_label: "Amount Metrics"
    description: "total_amount_gbp (LookML aggregation; provenance=aggregate_measure_contract)"
    synonyms: ["Total Amount (GBP)", "total_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: total_closed_amount_gbp {
    label: "Total Closed Amount (GBP)"
    type: sum
    sql: ${amount_gbp} ;;
    filters: [is_closed_outcome: "Yes"]
    group_label: "Amount Metrics"
    description: "total_closed_amount_gbp (LookML aggregation; provenance=aggregate_measure_contract)"
    synonyms: ["Total Closed Amount (GBP)", "total_closed_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

  measure: total_won_amount_gbp {
    label: "Total Won Amount (GBP)"
    type: sum
    sql: ${amount_gbp} ;;
    filters: [is_won: "Yes"]
    group_label: "Amount Metrics"
    description: "total_won_amount_gbp (LookML aggregation; provenance=aggregate_measure_contract)"
    synonyms: ["Total Won Amount (GBP)", "total_won_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: [opportunity_id, amount_gbp, forecast_category_v2_c, stage_name, close_month]
    tags: ["conversational"]
  }

}
