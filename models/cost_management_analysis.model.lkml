connection: "automation-cost"

# include all the views
include: "/views/**/*.view"

datagroup: cost_management_analysis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cost_management_analysis_default_datagroup

explore: current_month_cost_applicationpage1 {}

explore: current_month_cost_applicationpage2 {}

explore: previous_month_cost_applicationpage1 {}

explore: current_month_cost_projectpage1 {}

explore: current_month_cost_projectpage2 {}

explore: previous_month_cost_applicationpage2 {}

explore: previous_month_cost_projectpage2 {}

explore: previous_month_cost_projectpage1 {}

explore: actualforecastview {}

explore: current_day_service_split {}

explore: cost_month_year_split {}

explore: current_day_cost {}

explore: current_month_cost_test {}

explore: current_week_cost {}

explore: current_month_cost {}

explore: current_week_service_split {}

explore: extracted_cost {
  join: extracted_cost__labels {
    view_label: "Extracted Cost: Labels"
    sql: LEFT JOIN UNNEST(${extracted_cost.labels}) as extracted_cost__labels ;;
    relationship: one_to_many
  }
}

explore: forecast_data {}

explore: month_year {}

explore: gcp_billing_export_v1_0150_f3_829077_2_b78_f4 {
  join: gcp_billing_export_v1_0150_f3_829077_2_b78_f4__labels {
    view_label: "Gcp Billing Export V1 0150 F3 829077 2 B78 F4: Labels"
    sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_0150_f3_829077_2_b78_f4.labels}) as gcp_billing_export_v1_0150_f3_829077_2_b78_f4__labels ;;
    relationship: one_to_many
  }

  join: gcp_billing_export_v1_0150_f3_829077_2_b78_f4__credits {
    view_label: "Gcp Billing Export V1 0150 F3 829077 2 B78 F4: Credits"
    sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_0150_f3_829077_2_b78_f4.credits}) as gcp_billing_export_v1_0150_f3_829077_2_b78_f4__credits ;;
    relationship: one_to_many
  }

  join: gcp_billing_export_v1_0150_f3_829077_2_b78_f4__system_labels {
    view_label: "Gcp Billing Export V1 0150 F3 829077 2 B78 F4: System Labels"
    sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_0150_f3_829077_2_b78_f4.system_labels}) as gcp_billing_export_v1_0150_f3_829077_2_b78_f4__system_labels ;;
    relationship: one_to_many
  }

  join: gcp_billing_export_v1_0150_f3_829077_2_b78_f4__project__labels {
    view_label: "Gcp Billing Export V1 0150 F3 829077 2 B78 F4: Project Labels"
    sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_0150_f3_829077_2_b78_f4.project__labels}) as gcp_billing_export_v1_0150_f3_829077_2_b78_f4__project__labels ;;
    relationship: one_to_many
  }

  join: gcp_billing_export_v1_0150_f3_829077_2_b78_f4__project__ancestors {
    view_label: "Gcp Billing Export V1 0150 F3 829077 2 B78 F4: Project Ancestors"
    sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_0150_f3_829077_2_b78_f4.project__ancestors}) as gcp_billing_export_v1_0150_f3_829077_2_b78_f4__project__ancestors ;;
    relationship: one_to_many
  }
}

explore: previous_month {}

explore: previous_month_service_split {}

explore: previous_month_cost {}

explore: project_cost_last_three_months {}

explore: project_cost_permonth {}

explore: service_split {}

explore: project_cost_perday {}

explore: top_services_previous_month {}

explore: top_services_current_month {}
