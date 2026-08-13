view: dim_delivery_region {
  label: "Delivery Region"
  sql_table_name: gold.dim_delivery_region ;;
  description: "Logical entity Delivery Region. Synonyms: [Delivery Region, PSE Region, Pse Regions, Region, Delivery Regions, pse_regions, Dim Delivery Region]"

  dimension: region_id {
    label: "Region ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.region_id ;;
    description: "Region ID — business attribute for Conversational Analytics. Synonyms: [Region Id, Delivery Region, Region ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: region_name {
    label: "Region Name"
    type: string
    sql: ${TABLE}.region_name ;;
    description: "Region Name — business attribute for Conversational Analytics. Synonyms: [Region Name, Name, Delivery Region]"
    group_label: "Attributes"
    synonyms: ["Region Name", "Name", "Delivery Region"]
    tags: ["conversational"]
    suggestions: ["EUR"]
  }

  dimension: delivery_region {
    label: "Delivery Region"
    type: string
    sql: ${TABLE}.delivery_region ;;
    description: "Delivery Region — business attribute for Conversational Analytics. Synonyms: [Delivery Region, PSE Region, Pse Regions, Region, Delivery Regions, pse_regions]"
    group_label: "Attributes"
    synonyms: ["Delivery Region", "PSE Region", "Pse Regions", "Region", "Delivery Regions", "pse_regions"]
    tags: ["conversational"]
    suggestions: ["EUR"]
  }

  dimension: pse_region_name_chain_c {
    label: "Pse Region Name Chain C"
    type: string
    sql: ${TABLE}.pse__Region_Name_Chain__c ;;
    description: "Pse Region Name Chain C — business attribute for Conversational Analytics. Synonyms: [Pse Region Name Chain C, Name, Region Name, Delivery Region]"
    group_label: "Attributes"
    synonyms: ["Pse Region Name Chain C", "Name", "Region Name", "Delivery Region"]
    tags: ["conversational"]
    suggestions: ["EUR"]
  }

}
