- dashboard: poli_poc
  title: <img src="https://drive.google.com/file/d/1nw44YKdRyvQdjbDR8UARtzbNUXNWOeYa/view?usp=sharing" width="100" height="100"/>
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: dZBTgRVYjxnypc7dcXYyFI
  elements:
  - title: Matriculados por modalidad
    name: Matriculados por modalidad
    model: poc_poli
    explore: fact_matriculados
    type: looker_pie
    fields: [fact_matriculados.count, fact_matriculados.programa_modalidad]
    filters:
      fact_matriculados.programa_modalidad: "-NULL"
    sorts: [fact_matriculados.count desc]
    limit: 500
    value_labels: labels
    label_type: labVal
    inner_radius: 60
    series_colors:
      VIRTUAL: "#003265"
      PRESENCIAL: "#00b7e5"
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    font_size: 12
    listen:
      Periodo Academico: fact_matriculados.periodo_academico
      Sede: fact_matriculados.cod_sede
      Nivel Académico: fact_matriculados.programa_nivel_academico
    row: 0
    col: 0
    width: 6
    height: 4
  - title: Matriculados por nivel académico
    name: Matriculados por nivel académico
    model: poc_poli
    explore: fact_matriculados
    type: looker_pie
    fields: [fact_matriculados.count, fact_matriculados.programa_nivel_academico]
    filters:
      fact_matriculados.programa_modalidad: "-NULL"
    sorts: [fact_matriculados.count desc]
    limit: 500
    value_labels: labels
    label_type: labVal
    inner_radius: 60
    series_colors:
      PREGRADO: "#003265"
      POSTGRADO: "#00b7e5"
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    font_size: 12
    listen:
      Periodo Academico: fact_matriculados.periodo_academico
      Sede: fact_matriculados.cod_sede
      Nivel Académico: fact_matriculados.programa_nivel_academico
    row: 0
    col: 14
    width: 7
    height: 4
  - title: Matriculados por región
    name: Matriculados por región
    model: poc_poli
    explore: fact_matriculados
    type: looker_pie
    fields: [fact_matriculados.count, fact_matriculados.csu_region_actual]
    filters:
      fact_matriculados.programa_modalidad: "-NULL,-EMPTY"
    sorts: [fact_matriculados.count desc]
    limit: 500
    filter_expression: ${fact_matriculados.csu_region_actual} != "DESCONOCIDO"
    value_labels: labels
    label_type: labVal
    inner_radius: 60
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    series_colors:
      SUR OCCIDENTE: "#9174F0"
      BOGOTA: "#00b7e5"
      CENTRO ORIENTE: "#003265"
      ANTIOQUIA: "#FBB555"
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    font_size: 12
    listen:
      Periodo Academico: fact_matriculados.periodo_academico
      Sede: fact_matriculados.cod_sede
      Nivel Académico: fact_matriculados.programa_nivel_academico
    row: 0
    col: 6
    width: 8
    height: 4
  - title: Matriculados por facultad
    name: Matriculados por facultad
    model: poc_poli
    explore: fact_matriculados
    type: looker_column
    fields: [fact_matriculados.ingreso_por_facultad, fact_matriculados.programa_escuela,
      fact_matriculados.count]
    filters:
      fact_matriculados.programa_escuela: "-NULL"
      fact_matriculados.ingreso_por_facultad: NOT NULL
    sorts: [fact_matriculados.ingreso_por_facultad desc, fact_matriculados.programa_escuela]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: e2eca07c-8644-043c-6306-440fb321daac
        label: Custom
        type: discrete
        colors:
        - "#003265"
        - "#00b7e5"
        - "#E52592"
        - "#E8710A"
        - "#F9AB00"
        - "#7CB342"
        - "#9334E6"
        - "#80868B"
        - "#079c98"
        - "#A8A116"
        - "#EA4335"
        - "#FF8168"
      options:
        steps: 5
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: fact_matriculados.count,
            id: fact_matriculados.count, name: Cantidad de matriculados}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: right, series: [{axisId: fact_matriculados.ingreso_por_facultad,
            id: fact_matriculados.ingreso_por_facultad, name: Ingresos por facultad}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_types:
      fact_matriculados.ingreso_por_facultad: line
    series_colors:
      fact_matriculados.count: "#003265"
      fact_matriculados.ingreso_por_facultad: "#00b7e5"
    series_labels:
      fact_matriculados.ingreso_por_facultad: Ingresos por facultad
      fact_matriculados.count: Cantidad de matriculados
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Periodo Academico: fact_matriculados.periodo_academico
      Sede: fact_matriculados.cod_sede
      Nivel Académico: fact_matriculados.programa_nivel_academico
    row: 4
    col: 0
    width: 14
    height: 7
  filters:
  - name: Periodo Academico
    title: Periodo Academico
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: inline
    model: poc_poli
    explore: fact_matriculados
    listens_to_filters: []
    field: fact_matriculados.periodo_academico
  - name: Nivel Académico
    title: Nivel Académico
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: poc_poli
    explore: fact_matriculados
    listens_to_filters: []
    field: fact_matriculados.programa_nivel_academico
  - name: Sede
    title: Sede
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: inline
    model: poc_poli
    explore: fact_matriculados
    listens_to_filters: []
    field: fact_matriculados.cod_sede
