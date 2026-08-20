view: dim_practice {
  label: "Practice"
  sql_table_name: gold.dim_practice ;;

  dimension: practice_id {
    label: "Practice ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.practice_id ;;
    description: "Practice ID — business attribute for Conversational Analytics. Synonyms: [Practice Id, Practice, Practice ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: practice_name {
    label: "Practice Name"
    type: string
    sql: ${TABLE}.practice_name ;;
    description: "Practice Name — business attribute for Conversational Analytics. Synonyms: [Practice Name, Practice]"
    group_label: "Attributes"
    synonyms: ["Practice Name", "Practice"]
    tags: ["conversational"]
  }

  dimension: is_academy_or_distortion {
    label: "Is Academy Or Distortion"
    type: yesno
    sql: ${TABLE}.is_academy_or_distortion ;;
    description: "Is Academy Or Distortion — business attribute for Conversational Analytics. Synonyms: [Is Academy Or Distortion, Practice]"
    group_label: "Classification"
    synonyms: ["Is Academy Or Distortion", "Practice"]
    tags: ["conversational"]
  }

  dimension: is_academy {
    label: "Is Academy"
    type: yesno
    sql: ${TABLE}.is_academy ;;
    description: "Is Academy — business attribute for Conversational Analytics. Synonyms: [Is Academy, Practice]"
    group_label: "Classification"
    synonyms: ["Is Academy", "Practice"]
    tags: ["conversational"]
  }

}
