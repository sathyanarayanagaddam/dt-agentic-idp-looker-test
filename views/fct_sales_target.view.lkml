view: fct_sales_target {
  label: "Sales Target"
  sql_table_name: gold.fct_sales_target ;;

  dimension: id {
    label: "Sales Target ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
    description: "Sales Target ID — business attribute for Conversational Analytics. Synonyms: [Id, Sales Target, ID, Sales Target ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: period_id {
    label: "Period ID"
    type: string
    sql: ${TABLE}.periodid ;;
    description: "Period ID — business attribute for Conversational Analytics. Synonyms: [Periodid, Sales Target, Period ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension_group: start {
    label: "Startdate"
    description: "Startdate timeframes (date, month, quarter, year)."
    type: time
    timeframes: [date, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.startdate ;;
    group_label: "Dates"
    synonyms: ["Startdate", "start", "date", "month", "quarter", "year"]
    tags: ["conversational"]
  }

  dimension: product_family {
    label: "Product Family"
    type: string
    sql: ${TABLE}.productfamily ;;
    description: "Product Family — business attribute for Conversational Analytics. Synonyms: [Productfamily, Sales Target, Product Family]"
    group_label: "Attributes"
    synonyms: ["Productfamily", "Sales Target", "Product Family"]
    tags: ["conversational"]
  }

  dimension: forecasting_group_item_id {
    label: "Forecasting Group Item ID"
    type: string
    sql: ${TABLE}.forecastinggroupitemid ;;
    description: "Forecasting Group Item ID — business attribute for Conversational Analytics. Synonyms: [Forecastinggroupitemid, Sales Target, Forecasting Group Item ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: currency_iso_code {
    label: "Currency Iso Code"
    type: string
    sql: ${TABLE}.currencyisocode ;;
    description: "Currency Iso Code — business attribute for Conversational Analytics. Synonyms: [Currencyisocode, Sales Target, Currency Iso Code]"
    group_label: "Attributes"
    synonyms: ["Currencyisocode", "Sales Target", "Currency Iso Code"]
    tags: ["conversational"]
    suggestions: ["GBP"]
  }

  dimension: quota_amount {
    label: "Quota Amount"
    type: number
    sql: ${TABLE}.quotaamount ;;
    description: "Quota Amount — business attribute for Conversational Analytics. Synonyms: [Quotaamount, Sales Target, Quota Amount]"
    group_label: "Amounts"
    value_format_name: decimal_0
    synonyms: ["Quotaamount", "Sales Target", "Quota Amount"]
    tags: ["conversational"]
  }

  dimension: quota_quantity {
    label: "Quota Quantity"
    type: number
    sql: ${TABLE}.quotaquantity ;;
    description: "Quota Quantity — business attribute for Conversational Analytics. Synonyms: [Quotaquantity, Sales Target, Quota Quantity]"
    group_label: "Amounts"
    synonyms: ["Quotaquantity", "Sales Target", "Quota Quantity"]
    tags: ["conversational"]
  }

  dimension: quota_owner_id {
    label: "Quota Owner ID"
    type: string
    sql: ${TABLE}.quotaownerid ;;
    description: "Quota Owner ID — business attribute for Conversational Analytics. Synonyms: [Quotaownerid, Sales Target, Quota Owner ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: is_quantity {
    label: "Is Quantity"
    type: yesno
    sql: ${TABLE}.isquantity ;;
    description: "Is Quantity — business attribute for Conversational Analytics. Synonyms: [Isquantity, Sales Target, Is Quantity]"
    group_label: "Amounts"
    synonyms: ["Isquantity", "Sales Target", "Is Quantity"]
    tags: ["conversational"]
  }

  dimension: is_amount {
    label: "Is Amount"
    type: yesno
    sql: ${TABLE}.isamount ;;
    description: "Is Amount — business attribute for Conversational Analytics. Synonyms: [Isamount, Sales Target, Is Amount]"
    group_label: "Amounts"
    value_format_name: decimal_0
    synonyms: ["Isamount", "Sales Target", "Is Amount"]
    tags: ["conversational"]
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

  dimension_group: last_modified {
    label: "Lastmodifieddate"
    description: "Lastmodifieddate timeframes (date, month, quarter, year)."
    type: time
    timeframes: [date, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.lastmodifieddate ;;
    group_label: "Dates"
    synonyms: ["Lastmodifieddate", "last_modified", "date", "month", "quarter", "year"]
    tags: ["conversational"]
  }

  dimension: forecasting_type_id {
    label: "Forecasting Type ID"
    type: string
    sql: ${TABLE}.forecastingtypeid ;;
    description: "Forecasting Type ID — business attribute for Conversational Analytics. Synonyms: [Forecastingtypeid, Sales Target, Forecasting Type ID]"
    hidden: yes
    tags: ["internal"]
  }

  measure: gap_to_target_gbp {
    label: "Gap To Target (GBP)"
    type: sum
    sql: ${quota_amount} ;;
    group_label: "Metrics"
    description: "gap_to_target_gbp (LookML aggregation; provenance=structural). Synonyms: [Gap to Target, quota gap, target shortfall, pipeline gap, gap_to_target_gbp]"
    synonyms: ["Gap to Target", "quota gap", "target shortfall", "pipeline gap", "gap_to_target_gbp"]
    value_format_name: gbp_0
    drill_fields: []
    tags: ["conversational"]
  }

  measure: total_closed_gm_amount_gbp {
    label: "Total Closed GM Amount (GBP)"
    type: sum
    sql: ${quota_amount} ;;
    group_label: "Amount Metrics"
    description: "total_closed_gm_amount_gbp (LookML aggregation; provenance=structural). Synonyms: [Gross Margin GBP, closed GM, realized gross margin, sold margin GBP, total_closed_gm_amount_gbp]"
    synonyms: ["Gross Margin GBP", "closed GM", "realized gross margin", "sold margin GBP", "total_closed_gm_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: []
    tags: ["conversational"]
  }

  measure: median_sales_cycle_days {
    label: "Median Sales Cycle Days"
    type: median
    sql: ${quota_amount} ;;
    group_label: "Metrics"
    description: "median_sales_cycle_days (LookML aggregation; provenance=structural). Synonyms: [Median Sales Cycle, median deal velocity, typical sales cycle, median_sales_cycle_days]"
    synonyms: ["Median Sales Cycle", "median deal velocity", "typical sales cycle", "median_sales_cycle_days"]
    drill_fields: []
    tags: ["conversational"]
  }

  measure: age_bucket_distribution {
    label: "Age Bucket Distribution"
    type: sum
    sql: ${quota_amount} ;;
    group_label: "Metrics"
    description: "age_bucket_distribution (LookML aggregation; provenance=structural). Synonyms: [age_bucket_distribution]"
    synonyms: ["age_bucket_distribution"]
    drill_fields: []
    tags: ["conversational"]
  }

  measure: practice_opportunity_count {
    label: "Practice Opportunity Count"
    type: count
    group_label: "Metrics"
    description: "practice_opportunity_count (LookML aggregation; provenance=structural). Synonyms: [practice_opportunity_count]"
    synonyms: ["practice_opportunity_count"]
    drill_fields: []
    tags: ["conversational"]
  }

  measure: practice_closed_amount_gbp {
    label: "Practice Closed Amount (GBP)"
    type: sum
    sql: ${quota_amount} ;;
    group_label: "Amount Metrics"
    description: "practice_closed_amount_gbp (LookML aggregation; provenance=structural). Synonyms: [Practice Closed Amount, practice revenue, domain closed GBP, practice sales, practice_closed_amount_gbp]"
    synonyms: ["Practice Closed Amount", "practice revenue", "domain closed GBP", "practice sales", "practice_closed_amount_gbp"]
    value_format_name: gbp_0
    drill_fields: []
    tags: ["conversational"]
  }

}
