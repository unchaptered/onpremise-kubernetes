```shell
mkdir -p ~/kubernetes-benchmark
cd ~/kubernetes-benchmark

cat <<EOF > 00-03-cronjob-kube-bench-help.yaml
---
apiVersion: batch/v1
kind: Job
metadata:
  name: kube-bench-help
spec:
  template:
    spec:
      hostPID: true
      containers:
        - name: kube-bench
          image: docker.io/aquasec/kube-bench:latest
#          command: ["kube-bench", "--help"]
          command: ["kube-bench", "run", "--targets", "node", "--help"]
      restartPolicy: Never
EOF

kubectl create ns kube-bench

kubectl apply \
  -f ~/kubernetes-benchmark/00-03-cronjob-kube-bench-help.yaml \
  --namespace kube-bench

kubectl delete \
  -f ~/kubernetes-benchmark/00-03-cronjob-kube-bench-help.yaml \
  --namespace kube-bench
```