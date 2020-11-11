namespace := sysdig
plan:
	RSYSLOG_CONFIG_BASE64=`cat rsyslog.conf | base64 | tr -d '\n'`  envsubst < deployment.yaml.tmpl
apply:
	RSYSLOG_CONFIG_BASE64=`cat rsyslog.conf | base64 | tr -d '\n'`  envsubst < deployment.yaml.tmpl | kubectl apply -n $(namespace) -f - 

get_ip:
	kubectl get svc -n $(namespace) -l role=rsyslog-ef
