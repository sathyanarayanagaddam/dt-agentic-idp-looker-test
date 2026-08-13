view: dim_practice {
  label: "Practice"
  sql_table_name: gold.dim_practice ;;
  description: "Logical entity Practice. Synonyms: [Practice, Practice Academy Mapping, Technical Practice, Technical Practice Vertical, Practice Vertical, practice_academy_mapping, Dim Practice]"

  dimension: practice_id {
    label: "Practice ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.practice_id ;;
    description: "Practice ID — business attribute for Conversational Analytics. Synonyms: [Practice Id, Practice, Practice Academy Mapping, Technical Practice, Technical Practice Vertical, Practice Vertical, practice_academy_mapping, Practice ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: practice_name {
    label: "Practice Name"
    type: string
    sql: ${TABLE}.practice_name ;;
    description: "Practice Name — business attribute for Conversational Analytics. Synonyms: [Practice Name, Practice, Practice Academy Mapping, Technical Practice, Technical Practice Vertical, Practice Vertical, practice_academy_mapping, Name]"
    group_label: "Attributes"
    synonyms: ["Practice Name", "Practice", "Practice Academy Mapping", "Technical Practice", "Technical Practice Vertical", "Practice Vertical", "practice_academy_mapping", "Name"]
    tags: ["conversational"]
  }

  dimension: is_academy_or_distortion {
    label: "Is Academy Or Distortion"
    type: string
    sql: ${TABLE}.is_academy_or_distortion ;;
    description: "Is Academy Or Distortion — business attribute for Conversational Analytics. Synonyms: [Is Academy Or Distortion, Practice]"
    group_label: "Classification"
    synonyms: ["Is Academy Or Distortion", "Practice"]
    tags: ["conversational"]
  }

  dimension: is_academy {
    label: "Is Academy"
    type: string
    sql: ${TABLE}.is_academy ;;
    description: "Is Academy — business attribute for Conversational Analytics. Synonyms: [Is Academy, Is Academy Or Distortion, Practice]"
    group_label: "Classification"
    synonyms: ["Is Academy", "Is Academy Or Distortion", "Practice"]
    tags: ["conversational"]
  }

  dimension: analytics {
    label: "Analytics"
    type: string
    sql: ${TABLE}.Analytics ;;
    description: "Analytics — business attribute for Conversational Analytics. Synonyms: [Analytics, Practice]"
    group_label: "Attributes"
    synonyms: ["Analytics", "Practice"]
    tags: ["conversational"]
  }

  dimension: platform {
    label: "Platform"
    type: string
    sql: ${TABLE}.Platform ;;
    description: "Platform — business attribute for Conversational Analytics. Synonyms: [Platform, Practice]"
    group_label: "Attributes"
    synonyms: ["Platform", "Practice"]
    tags: ["conversational"]
  }

  dimension: gen_ai {
    label: "Genai"
    type: string
    sql: ${TABLE}.GenAI ;;
    description: "Genai — business attribute for Conversational Analytics. Synonyms: [Genai, Practice, Gen Ai]"
    group_label: "Attributes"
    synonyms: ["Genai", "Practice", "Gen Ai"]
    tags: ["conversational"]
  }

  dimension: learning {
    label: "Learning"
    type: string
    sql: ${TABLE}.Learning ;;
    description: "Learning — business attribute for Conversational Analytics. Synonyms: [Learning, Practice]"
    group_label: "Attributes"
    synonyms: ["Learning", "Practice"]
    tags: ["conversational"]
  }

  dimension: assessment {
    label: "Assessment"
    type: string
    sql: ${TABLE}.Assessment ;;
    description: "Assessment — business attribute for Conversational Analytics. Synonyms: [Assessment, Practice]"
    group_label: "Attributes"
    synonyms: ["Assessment", "Practice"]
    tags: ["conversational"]
  }

  dimension: rebates {
    label: "Rebates"
    type: string
    sql: ${TABLE}.Rebates ;;
    description: "Rebates — business attribute for Conversational Analytics. Synonyms: [Rebates, Practice]"
    group_label: "Attributes"
    synonyms: ["Rebates", "Practice"]
    tags: ["conversational"]
  }

  dimension: ops {
    label: "Ops"
    type: string
    sql: ${TABLE}.Ops ;;
    description: "Ops — business attribute for Conversational Analytics. Synonyms: [Ops, Practice]"
    group_label: "Attributes"
    synonyms: ["Ops", "Practice"]
    tags: ["conversational"]
  }

  dimension: foundations {
    label: "Foundations"
    type: string
    sql: ${TABLE}.Foundations ;;
    description: "Foundations — business attribute for Conversational Analytics. Synonyms: [Foundations, Practice]"
    group_label: "Attributes"
    synonyms: ["Foundations", "Practice"]
    tags: ["conversational"]
  }

  dimension: gen_ops {
    label: "Genops"
    type: string
    sql: ${TABLE}.GenOps ;;
    description: "Genops — business attribute for Conversational Analytics. Synonyms: [Genops, Ops, Practice, Gen Ops]"
    group_label: "Attributes"
    synonyms: ["Genops", "Ops", "Practice", "Gen Ops"]
    tags: ["conversational"]
  }

}
