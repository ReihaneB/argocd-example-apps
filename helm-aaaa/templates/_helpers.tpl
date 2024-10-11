{{- define "helm-aaaa.name" -}}
{{ .Release.Name }}
{{- end }}

{{- define "helm-aaaa.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{- define "helm-aaaa.labels" -}}
app.kubernetes.io/name: {{ include "helm-aaaa.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
