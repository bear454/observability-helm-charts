{{- define "common.metrics.annotations" -}}
{{- if .metrics.enabled }}
ad.stackstate.com/{{ .container_name }}.check_names: '["openmetrics"]'
ad.stackstate.com/{{ .container_name }}.init_configs: '[{}]'
ad.stackstate.com/{{ .container_name }}.instances: '[ { "prometheus_url": "http://%%host%%:{{ .port }}/metrics", "namespace": "stackstate", "labels_mapper": { "app.kubernetes.io/component": "app_component", "app.kubernetes.io/name": "app_name", "app.kubernetes.io/instance": "app_instance" }, "metrics": ["*"] } ]'
{{- end }}
{{- end -}}
