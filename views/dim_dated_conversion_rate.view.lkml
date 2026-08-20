view: dim_dated_conversion_rate {
  label: "Dated Conversion Rate"
  sql_table_name: gold.dim_dated_conversion_rate ;;

  dimension: key {
    label: "Key"
    type: string
    sql: ${TABLE}.key ;;
    description: "Key — business attribute for Conversational Analytics. Synonyms: [Key, Dated Conversion Rate]"
    group_label: "Attributes"
    synonyms: ["Key", "Dated Conversion Rate"]
    tags: ["conversational"]
  }

  dimension: freq {
    label: "Freq"
    type: string
    sql: ${TABLE}.freq ;;
    description: "Freq — business attribute for Conversational Analytics. Synonyms: [Freq, Dated Conversion Rate]"
    group_label: "Attributes"
    synonyms: ["Freq", "Dated Conversion Rate"]
    tags: ["conversational"]
  }

  dimension: currency {
    label: "Currency"
    type: string
    sql: ${TABLE}.currency ;;
    description: "Currency — business attribute for Conversational Analytics. Synonyms: [Currency, Dated Conversion Rate]"
    group_label: "Attributes"
    synonyms: ["Currency", "Dated Conversion Rate"]
    tags: ["conversational"]
    suggestions: ["GBP"]
  }

  dimension: currency_denom {
    label: "Currency Denom"
    type: string
    sql: ${TABLE}.currency_denom ;;
    description: "Currency Denom — business attribute for Conversational Analytics. Synonyms: [Currency Denom, Dated Conversion Rate]"
    group_label: "Attributes"
    synonyms: ["Currency Denom", "Dated Conversion Rate"]
    tags: ["conversational"]
    suggestions: ["EUR"]
  }

  dimension: exr_type {
    label: "Exr Type"
    type: string
    sql: ${TABLE}.exr_type ;;
    description: "Exr Type — business attribute for Conversational Analytics. Synonyms: [Exr Type, Dated Conversion Rate]"
    group_label: "Classification"
    synonyms: ["Exr Type", "Dated Conversion Rate"]
    tags: ["conversational"]
  }

  dimension: exr_suffix {
    label: "Exr Suffix"
    type: string
    sql: ${TABLE}.exr_suffix ;;
    description: "Exr Suffix — business attribute for Conversational Analytics. Synonyms: [Exr Suffix, Dated Conversion Rate]"
    group_label: "Attributes"
    synonyms: ["Exr Suffix", "Dated Conversion Rate"]
    tags: ["conversational"]
  }

  dimension: time_period {
    label: "Time Period"
    type: string
    sql: ${TABLE}.time_period ;;
    description: "Time Period — business attribute for Conversational Analytics. Synonyms: [Time Period, Dated Conversion Rate]"
    group_label: "Dates"
    synonyms: ["Time Period", "Dated Conversion Rate"]
    tags: ["conversational"]
  }

  dimension: obs_value {
    label: "Obs Value"
    type: number
    sql: ${TABLE}.obs_value ;;
    description: "Obs Value — business attribute for Conversational Analytics. Synonyms: [Obs Value, Dated Conversion Rate]"
    group_label: "Attributes"
    synonyms: ["Obs Value", "Dated Conversion Rate"]
    tags: ["conversational"]
  }

  dimension_group: ingestion {
    label: "Ingestion Timestamp"
    description: "Ingestion Timestamp timeframes (date, month, quarter, year)."
    type: time
    timeframes: [date, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ingestion_timestamp ;;
    group_label: "Dates"
    synonyms: ["Ingestion Timestamp", "ingestion", "date", "month", "quarter", "year"]
    tags: ["conversational"]
  }

  dimension: dated_conversion_rate_sk {
    label: "Dated Conversion Rate Sk"
    primary_key: yes
    type: string
    sql: ${TABLE}.dated_conversion_rate_sk ;;
    description: "Dated Conversion Rate Sk — business attribute for Conversational Analytics. Synonyms: [Dated Conversion Rate Sk, Dated Conversion Rate]"
    hidden: yes
    tags: ["internal"]
  }

}
