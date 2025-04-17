# [RESULT]
RS_INFO=$(cat kube-bench-node.log | jq -r '.Totals.total_info')
RS_PASS=$(cat kube-bench-node.log | jq -r '.Totals.total_pass')
RS_WARN=$(cat kube-bench-node.log | jq -r '.Totals.total_warn')
RS_FAIL=$(cat kube-bench-node.log | jq -r '.Totals.total_fail')

# [LABELS]
LB_TARGET="master"
LB_SYNTAX="kube-bench run --targets=master"

METRIC_JOB_NAME="kube-bench"
PUSHGATEWAY_URL="http://prometheus-prometheus-pushgateway.kube-monitor.svc.cluster.local"

cat <<EOF | curl --data-binary @- ${PUSHGATEWAY_URL}/metrics/job/${METRIC_JOB_NAME}

kube_bench{kube_bench_target=${LB_TARGET},kube_bench_syntax=${LB_SYNTAX}} ${RS_INFO}
kube_bench{kube_bench_target=${LB_TARGET},kube_bench_syntax=${LB_SYNTAX}} ${RS_PASS}
kube_bench{kube_bench_target=${LB_TARGET},kube_bench_syntax=${LB_SYNTAX}} ${RS_WARN}
kube_bench{kube_bench_target=${LB_TARGET},kube_bench_syntax=${LB_SYNTAX}} ${RS_FAIL}
EOF