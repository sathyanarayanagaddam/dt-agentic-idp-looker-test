view: dim_dated_conversion_rate {
  label: "Dated Conversion Rate"
  sql_table_name: gold.dim_dated_conversion_rate ;;
  description: "Logical entity Dated Conversion Rate. Synonyms: [Dated Conversion Rate, Currency Conversion Rate, FX Conversion Rate, dated conversion rates, exchange rates, stg_exchange_rates_ecb, dated_conversion_rates, Dim Dated Conversion Rate]"

  dimension: currency {
    label: "Currency"
    type: string
    sql: ${TABLE}.CURRENCY ;;
    description: "Currency — business attribute for Conversational Analytics. Synonyms: [Currency, Currencyisocode, C2g Codaaccounttradingcurrency C, Scmc Currency C, Ffaci Currencyculture C, Dated Conversion Rate]"
    group_label: "Attributes"
    synonyms: ["Currency", "Currencyisocode", "C2g Codaaccounttradingcurrency C", "Scmc Currency C", "Ffaci Currencyculture C", "Dated Conversion Rate"]
    tags: ["conversational"]
    suggestions: ["GBP"]
  }

  dimension: time_period {
    label: "Time Period"
    type: string
    sql: ${TABLE}.TIME_PERIOD ;;
    description: "Time Period — business attribute for Conversational Analytics. Synonyms: [Time Period, Pse Services Billing Time Period Type C, Dated Conversion Rate]"
    group_label: "Dates"
    synonyms: ["Time Period", "Pse Services Billing Time Period Type C", "Dated Conversion Rate"]
    tags: ["conversational"]
  }

  dimension: exchange_rate_sk {
    label: "Exchange Rate Sk"
    primary_key: yes
    type: string
    sql: ${TABLE}.exchange_rate_sk ;;
    description: "Exchange Rate Sk — business attribute for Conversational Analytics. Synonyms: [Exchange Rate Sk, Dated Conversion Rate]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: key {
    label: "Key"
    type: string
    sql: ${TABLE}.KEY ;;
    description: "Key — business attribute for Conversational Analytics. Synonyms: [Key, Dated Conversion Rate]"
    group_label: "Attributes"
    synonyms: ["Key", "Dated Conversion Rate"]
    tags: ["conversational"]
  }

  dimension: freq {
    label: "Freq"
    type: string
    sql: ${TABLE}.FREQ ;;
    description: "Freq — business attribute for Conversational Analytics. Synonyms: [Freq, Dated Conversion Rate]"
    group_label: "Attributes"
    synonyms: ["Freq", "Dated Conversion Rate"]
    tags: ["conversational"]
  }

  dimension: currency_denom {
    label: "Currency Denom"
    type: string
    sql: ${TABLE}.CURRENCY_DENOM ;;
    description: "Currency Denom — business attribute for Conversational Analytics. Synonyms: [Currency Denom, Currency, Dated Conversion Rate]"
    group_label: "Attributes"
    synonyms: ["Currency Denom", "Currency", "Dated Conversion Rate"]
    tags: ["conversational"]
    suggestions: ["EUR"]
  }

  dimension: exr_type {
    label: "Exr Type"
    type: string
    sql: ${TABLE}.EXR_TYPE ;;
    description: "Exr Type — business attribute for Conversational Analytics. Synonyms: [Exr Type, Type, Dated Conversion Rate]"
    group_label: "Classification"
    synonyms: ["Exr Type", "Type", "Dated Conversion Rate"]
    tags: ["conversational"]
  }

  dimension: exr_suffix {
    label: "Exr Suffix"
    type: string
    sql: ${TABLE}.EXR_SUFFIX ;;
    description: "Exr Suffix — business attribute for Conversational Analytics. Synonyms: [Exr Suffix, Dated Conversion Rate]"
    group_label: "Attributes"
    synonyms: ["Exr Suffix", "Dated Conversion Rate"]
    tags: ["conversational"]
  }

  dimension: obs_value {
    label: "Obs Value"
    type: string
    sql: ${TABLE}.OBS_VALUE ;;
    description: "Obs Value — business attribute for Conversational Analytics. Synonyms: [Obs Value, Dated Conversion Rate]"
    group_label: "Attributes"
    synonyms: ["Obs Value", "Dated Conversion Rate"]
    tags: ["conversational"]
  }

  dimension: ingestion_timestamp {
    label: "Ingestion Timestamp"
    type: string
    sql: ${TABLE}.ingestion_timestamp ;;
    description: "Ingestion Timestamp — business attribute for Conversational Analytics. Synonyms: [Ingestion Timestamp, Dated Conversion Rate]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: dated_conversion_rate_sk {
    label: "Dated Conversion Rate Sk"
    type: string
    sql: ${TABLE}.dated_conversion_rate_sk ;;
    description: "Dated Conversion Rate Sk — business attribute for Conversational Analytics. Synonyms: [Dated Conversion Rate Sk, Dated Conversion Rate, Currency Conversion Rate, FX Conversion Rate, dated conversion rates, exchange rates, stg_exchange_rates_ecb, dated_conversion_rates]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: string {
    label: "String"
    type: string
    sql: ${TABLE}.string ;;
    description: "String — business attribute for Conversational Analytics. Synonyms: [String, Dated Conversion Rate]"
    group_label: "Attributes"
    synonyms: ["String", "Dated Conversion Rate"]
    tags: ["conversational"]
  }

}
