{
    "Controls": [
        {
            "id": "4",
            "version": "cis-1.10",
            "detected_version": "1.31",
            "text": "Worker Node Security Configuration",
            "node_type": "node",
            "tests": [
                {
                    "section": "4.1",
                    "type": "",
                    "pass": 1,
                    "fail": 5,
                    "warn": 4,
                    "info": 0,
                    "desc": "Worker Node Configuration Files",
                    "results": [
                        {
                            "test_number": "4.1.1",
                            "test_desc": "Ensure that the kubelet service file permissions are set to 600 or more restrictive (Automated)",
                            "audit": "/bin/sh -c 'if test -e /etc/systemd/system/kubelet.service.d/10-kubeadm.conf; then stat -c permissions=%a /etc/systemd/system/kubelet.service.d/10-kubeadm.conf; fi' ",
                            "AuditEnv": "",
                            "AuditConfig": "",
                            "type": "",
                            "remediation": "Run the below command (based on the file location on your system) on the each worker node.\nFor example, chmod 600 /etc/systemd/system/kubelet.service.d/10-kubeadm.conf\n",
                            "test_info": [
                                "Run the below command (based on the file location on your system) on the each worker node.\nFor example, chmod 600 /etc/systemd/system/kubelet.service.d/10-kubeadm.conf\n"
                            ],
                            "status": "FAIL",
                            "actual_value": "",
                            "scored": true,
                            "IsMultiple": false,
                            "expected_result": "'permissions' is present"
                        },
                        {
                            "test_number": "4.1.2",
                            "test_desc": "Ensure that the kubelet service file ownership is set to root:root (Automated)",
                            "audit": "/bin/sh -c \"if test -e /etc/systemd/system/kubelet.service.d/10-kubeadm.conf; then stat -c %U:%G /etc/systemd/system/kubelet.service.d/10-kubeadm.conf; else echo \\\"File not found\\\"; fi\"",
                            "AuditEnv": "",
                            "AuditConfig": "",
                            "type": "",
                            "remediation": "Run the below command (based on the file location on your system) on the each worker node.\nFor example,\nchown root:root /etc/systemd/system/kubelet.service.d/10-kubeadm.conf\n",
                            "test_info": [
                                "Run the below command (based on the file location on your system) on the each worker node.\nFor example,\nchown root:root /etc/systemd/system/kubelet.service.d/10-kubeadm.conf\n"
                            ],
                            "status": "PASS",
                            "actual_value": "File not found",
                            "scored": true,
                            "IsMultiple": false,
                            "expected_result": "'root:root' is present OR 'File not found' is present"
                        },
                        {
                            "test_number": "4.1.3",
                            "test_desc": "If proxy kubeconfig file exists ensure permissions are set to 600 or more restrictive (Manual)",
                            "audit": "/bin/sh -c 'if test -e /etc/kubernetes/proxy.conf; then stat -c permissions=%a /etc/kubernetes/proxy.conf; fi' ",
                            "AuditEnv": "",
                            "AuditConfig": "",
                            "type": "",
                            "remediation": "Run the below command (based on the file location on your system) on the each worker node.\nFor example,\nchmod 600 /etc/kubernetes/proxy.conf\n",
                            "test_info": [
                                "Run the below command (based on the file location on your system) on the each worker node.\nFor example,\nchmod 600 /etc/kubernetes/proxy.conf\n"
                            ],
                            "status": "WARN",
                            "actual_value": "",
                            "scored": false,
                            "IsMultiple": false,
                            "expected_result": "'permissions' is present"
                        },
                        {
                            "test_number": "4.1.4",
                            "test_desc": "If proxy kubeconfig file exists ensure ownership is set to root:root (Manual)",
                            "audit": "/bin/sh -c 'if test -e /etc/kubernetes/proxy.conf; then stat -c %U:%G /etc/kubernetes/proxy.conf; fi' ",
                            "AuditEnv": "",
                            "AuditConfig": "",
                            "type": "",
                            "remediation": "Run the below command (based on the file location on your system) on the each worker node.\nFor example, chown root:root /etc/kubernetes/proxy.conf\n",
                            "test_info": [
                                "Run the below command (based on the file location on your system) on the each worker node.\nFor example, chown root:root /etc/kubernetes/proxy.conf\n"
                            ],
                            "status": "WARN",
                            "actual_value": "",
                            "scored": false,
                            "IsMultiple": false,
                            "expected_result": "'root:root' is present"
                        },
                        {
                            "test_number": "4.1.5",
                            "test_desc": "Ensure that the --kubeconfig kubelet.conf file permissions are set to 600 or more restrictive (Automated)",
                            "audit": "/bin/sh -c 'if test -e /etc/kubernetes/kubelet.conf; then stat -c permissions=%a /etc/kubernetes/kubelet.conf; fi' ",
                            "AuditEnv": "",
                            "AuditConfig": "",
                            "type": "",
                            "remediation": "Run the below command (based on the file location on your system) on the each worker node.\nFor example,\nchmod 600 /etc/kubernetes/kubelet.conf\n",
                            "test_info": [
                                "Run the below command (based on the file location on your system) on the each worker node.\nFor example,\nchmod 600 /etc/kubernetes/kubelet.conf\n"
                            ],
                            "status": "FAIL",
                            "actual_value": "",
                            "scored": true,
                            "IsMultiple": false,
                            "expected_result": "'permissions' is present"
                        },
                        {
                            "test_number": "4.1.6",
                            "test_desc": "Ensure that the --kubeconfig kubelet.conf file ownership is set to root:root (Automated)",
                            "audit": "/bin/sh -c 'if test -e /etc/kubernetes/kubelet.conf; then stat -c %U:%G /etc/kubernetes/kubelet.conf; fi' ",
                            "AuditEnv": "",
                            "AuditConfig": "",
                            "type": "",
                            "remediation": "Run the below command (based on the file location on your system) on the each worker node.\nFor example,\nchown root:root /etc/kubernetes/kubelet.conf\n",
                            "test_info": [
                                "Run the below command (based on the file location on your system) on the each worker node.\nFor example,\nchown root:root /etc/kubernetes/kubelet.conf\n"
                            ],
                            "status": "FAIL",
                            "actual_value": "",
                            "scored": true,
                            "IsMultiple": false,
                            "expected_result": "'root:root' is present"
                        },
                        {
                            "test_number": "4.1.7",
                            "test_desc": "Ensure that the certificate authorities file permissions are set to 600 or more restrictive (Manual)",
                            "audit": "CAFILE=$(ps -ef | grep kubelet | grep -v apiserver | grep -- --client-ca-file= | awk -F '--client-ca-file=' '{print $2}' | awk '{print $1}' | uniq)\nif test -z $CAFILE; then CAFILE=/etc/kubernetes/pki/ca.crt; fi\nif test -e $CAFILE; then stat -c permissions=%a $CAFILE; fi\n",
                            "AuditEnv": "",
                            "AuditConfig": "",
                            "type": "",
                            "remediation": "Run the following command to modify the file permissions of the\n--client-ca-file chmod 600 \u003cfilename\u003e\n",
                            "test_info": [
                                "Run the following command to modify the file permissions of the\n--client-ca-file chmod 600 \u003cfilename\u003e\n"
                            ],
                            "status": "WARN",
                            "actual_value": "",
                            "scored": false,
                            "IsMultiple": false,
                            "expected_result": "'permissions' is present"
                        },
                        {
                            "test_number": "4.1.8",
                            "test_desc": "Ensure that the client certificate authorities file ownership is set to root:root (Manual)",
                            "audit": "CAFILE=$(ps -ef | grep kubelet | grep -v apiserver | grep -- --client-ca-file= | awk -F '--client-ca-file=' '{print $2}' | awk '{print $1}' | uniq)\nif test -z $CAFILE; then CAFILE=/etc/kubernetes/pki/ca.crt; fi\nif test -e $CAFILE; then stat -c %U:%G $CAFILE; fi\n",
                            "AuditEnv": "",
                            "AuditConfig": "",
                            "type": "",
                            "remediation": "Run the following command to modify the ownership of the --client-ca-file.\nchown root:root \u003cfilename\u003e\n",
                            "test_info": [
                                "Run the following command to modify the ownership of the --client-ca-file.\nchown root:root \u003cfilename\u003e\n"
                            ],
                            "status": "WARN",
                            "actual_value": "",
                            "scored": false,
                            "IsMultiple": false,
                            "expected_result": "'root:root' is present"
                        },
                        {
                            "test_number": "4.1.9",
                            "test_desc": "If the kubelet config.yaml configuration file is being used validate permissions set to 600 or more restrictive (Automated)",
                            "audit": "/bin/sh -c 'if test -e /var/lib/kubelet/config.yaml; then stat -c permissions=%a /var/lib/kubelet/config.yaml; fi' ",
                            "AuditEnv": "",
                            "AuditConfig": "",
                            "type": "",
                            "remediation": "Run the following command (using the config file location identified in the Audit step)\nchmod 600 /var/lib/kubelet/config.yaml\n",
                            "test_info": [
                                "Run the following command (using the config file location identified in the Audit step)\nchmod 600 /var/lib/kubelet/config.yaml\n"
                            ],
                            "status": "FAIL",
                            "actual_value": "",
                            "scored": true,
                            "IsMultiple": false,
                            "expected_result": "'permissions' is present"
                        },
                        {
                            "test_number": "4.1.10",
                            "test_desc": "If the kubelet config.yaml configuration file is being used validate file ownership is set to root:root (Automated)",
                            "audit": "/bin/sh -c 'if test -e /var/lib/kubelet/config.yaml; then stat -c %U:%G /var/lib/kubelet/config.yaml; fi' ",
                            "AuditEnv": "",
                            "AuditConfig": "",
                            "type": "",
                            "remediation": "Run the following command (using the config file location identified in the Audit step)\nchown root:root /var/lib/kubelet/config.yaml\n",
                            "test_info": [
                                "Run the following command (using the config file location identified in the Audit step)\nchown root:root /var/lib/kubelet/config.yaml\n"
                            ],
                            "status": "FAIL",
                            "actual_value": "",
                            "scored": true,
                            "IsMultiple": false,
                            "expected_result": "'root:root' is present"
                        }
                    ]
                },
                {
                    "section": "4.2",
                    "type": "",
                    "pass": 7,
                    "fail": 3,
                    "warn": 3,
                    "info": 0,
                    "desc": "Kubelet",
                    "results": [
                        {
                            "test_number": "4.2.1",
                            "test_desc": "Ensure that the --anonymous-auth argument is set to false (Automated)",
                            "audit": "/bin/ps -fC kubelet",
                            "AuditEnv": "",
                            "AuditConfig": "/bin/cat /var/lib/kubelet/config.yaml",
                            "type": "",
                            "remediation": "If using a Kubelet config file, edit the file to set `authentication: anonymous: enabled` to\n`false`.\nIf using executable arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nset the below parameter in KUBELET_SYSTEM_PODS_ARGS variable.\n`--anonymous-auth=false`\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n",
                            "test_info": [
                                "If using a Kubelet config file, edit the file to set `authentication: anonymous: enabled` to\n`false`.\nIf using executable arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nset the below parameter in KUBELET_SYSTEM_PODS_ARGS variable.\n`--anonymous-auth=false`\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n"
                            ],
                            "status": "FAIL",
                            "actual_value": "UID          PID    PPID  C STIME TTY          TIME CMD\nroot        1419       1  6 Mar09 ?        10:55:43 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --container-runtime-endpoint=unix:///var/run/containerd/containerd.sock --pod-infra-container-image=registry.k8s.io/pause:3.10",
                            "scored": true,
                            "IsMultiple": false,
                            "expected_result": "'--anonymous-auth' is present"
                        },
                        {
                            "test_number": "4.2.2",
                            "test_desc": "Ensure that the --authorization-mode argument is not set to AlwaysAllow (Automated)",
                            "audit": "/bin/ps -fC kubelet",
                            "AuditEnv": "",
                            "AuditConfig": "/bin/cat /var/lib/kubelet/config.yaml",
                            "type": "",
                            "remediation": "If using a Kubelet config file, edit the file to set `authorization.mode` to Webhook. If\nusing executable arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nset the below parameter in KUBELET_AUTHZ_ARGS variable.\n--authorization-mode=Webhook\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n",
                            "test_info": [
                                "If using a Kubelet config file, edit the file to set `authorization.mode` to Webhook. If\nusing executable arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nset the below parameter in KUBELET_AUTHZ_ARGS variable.\n--authorization-mode=Webhook\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n"
                            ],
                            "status": "FAIL",
                            "actual_value": "UID          PID    PPID  C STIME TTY          TIME CMD\nroot        1419       1  6 Mar09 ?        10:55:43 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --container-runtime-endpoint=unix:///var/run/containerd/containerd.sock --pod-infra-container-image=registry.k8s.io/pause:3.10",
                            "scored": true,
                            "IsMultiple": false,
                            "expected_result": "'--authorization-mode' is present"
                        },
                        {
                            "test_number": "4.2.3",
                            "test_desc": "Ensure that the --client-ca-file argument is set as appropriate (Automated)",
                            "audit": "/bin/ps -fC kubelet",
                            "AuditEnv": "",
                            "AuditConfig": "/bin/cat /var/lib/kubelet/config.yaml",
                            "type": "",
                            "remediation": "If using a Kubelet config file, edit the file to set `authentication.x509.clientCAFile` to\nthe location of the client CA file.\nIf using command line arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nset the below parameter in KUBELET_AUTHZ_ARGS variable.\n--client-ca-file=\u003cpath/to/client-ca-file\u003e\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n",
                            "test_info": [
                                "If using a Kubelet config file, edit the file to set `authentication.x509.clientCAFile` to\nthe location of the client CA file.\nIf using command line arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nset the below parameter in KUBELET_AUTHZ_ARGS variable.\n--client-ca-file=\u003cpath/to/client-ca-file\u003e\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n"
                            ],
                            "status": "FAIL",
                            "actual_value": "UID          PID    PPID  C STIME TTY          TIME CMD\nroot        1419       1  6 Mar09 ?        10:55:43 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --container-runtime-endpoint=unix:///var/run/containerd/containerd.sock --pod-infra-container-image=registry.k8s.io/pause:3.10",
                            "scored": true,
                            "IsMultiple": false,
                            "expected_result": "'--client-ca-file' is present"
                        },
                        {
                            "test_number": "4.2.4",
                            "test_desc": "Verify that the --read-only-port argument is set to 0 (Manual)",
                            "audit": "/bin/ps -fC kubelet",
                            "AuditEnv": "",
                            "AuditConfig": "/bin/cat /var/lib/kubelet/config.yaml",
                            "type": "",
                            "remediation": "If using a Kubelet config file, edit the file to set `readOnlyPort` to 0.\nIf using command line arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nset the below parameter in KUBELET_SYSTEM_PODS_ARGS variable.\n--read-only-port=0\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n",
                            "test_info": [
                                "If using a Kubelet config file, edit the file to set `readOnlyPort` to 0.\nIf using command line arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nset the below parameter in KUBELET_SYSTEM_PODS_ARGS variable.\n--read-only-port=0\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n"
                            ],
                            "status": "PASS",
                            "actual_value": "UID          PID    PPID  C STIME TTY          TIME CMD\nroot        1419       1  6 Mar09 ?        10:55:43 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --container-runtime-endpoint=unix:///var/run/containerd/containerd.sock --pod-infra-container-image=registry.k8s.io/pause:3.10",
                            "scored": false,
                            "IsMultiple": false,
                            "expected_result": "'--read-only-port' is present OR '--read-only-port' is not present"
                        },
                        {
                            "test_number": "4.2.5",
                            "test_desc": "Ensure that the --streaming-connection-idle-timeout argument is not set to 0 (Manual)",
                            "audit": "/bin/ps -fC kubelet",
                            "AuditEnv": "",
                            "AuditConfig": "/bin/cat /var/lib/kubelet/config.yaml",
                            "type": "",
                            "remediation": "If using a Kubelet config file, edit the file to set `streamingConnectionIdleTimeout` to a\nvalue other than 0.\nIf using command line arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nset the below parameter in KUBELET_SYSTEM_PODS_ARGS variable.\n--streaming-connection-idle-timeout=5m\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n",
                            "test_info": [
                                "If using a Kubelet config file, edit the file to set `streamingConnectionIdleTimeout` to a\nvalue other than 0.\nIf using command line arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nset the below parameter in KUBELET_SYSTEM_PODS_ARGS variable.\n--streaming-connection-idle-timeout=5m\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n"
                            ],
                            "status": "PASS",
                            "actual_value": "UID          PID    PPID  C STIME TTY          TIME CMD\nroot        1419       1  6 Mar09 ?        10:55:43 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --container-runtime-endpoint=unix:///var/run/containerd/containerd.sock --pod-infra-container-image=registry.k8s.io/pause:3.10",
                            "scored": false,
                            "IsMultiple": false,
                            "expected_result": "'--streaming-connection-idle-timeout' is present OR '--streaming-connection-idle-timeout' is not present"
                        },
                        {
                            "test_number": "4.2.6",
                            "test_desc": "Ensure that the --make-iptables-util-chains argument is set to true (Automated)",
                            "audit": "/bin/ps -fC kubelet",
                            "AuditEnv": "",
                            "AuditConfig": "/bin/cat /var/lib/kubelet/config.yaml",
                            "type": "",
                            "remediation": "If using a Kubelet config file, edit the file to set `makeIPTablesUtilChains` to `true`.\nIf using command line arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nremove the --make-iptables-util-chains argument from the\nKUBELET_SYSTEM_PODS_ARGS variable.\nBased on your system, restart the kubelet service. For example:\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n",
                            "test_info": [
                                "If using a Kubelet config file, edit the file to set `makeIPTablesUtilChains` to `true`.\nIf using command line arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nremove the --make-iptables-util-chains argument from the\nKUBELET_SYSTEM_PODS_ARGS variable.\nBased on your system, restart the kubelet service. For example:\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n"
                            ],
                            "status": "PASS",
                            "actual_value": "UID          PID    PPID  C STIME TTY          TIME CMD\nroot        1419       1  6 Mar09 ?        10:55:43 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --container-runtime-endpoint=unix:///var/run/containerd/containerd.sock --pod-infra-container-image=registry.k8s.io/pause:3.10",
                            "scored": true,
                            "IsMultiple": false,
                            "expected_result": "'--make-iptables-util-chains' is present OR '--make-iptables-util-chains' is not present"
                        },
                        {
                            "test_number": "4.2.7",
                            "test_desc": "Ensure that the --hostname-override argument is not set (Manual)",
                            "audit": "/bin/ps -fC kubelet",
                            "AuditEnv": "",
                            "AuditConfig": "",
                            "type": "",
                            "remediation": "Edit the kubelet service file /etc/systemd/system/kubelet.service.d/10-kubeadm.conf\non each worker node and remove the --hostname-override argument from the\nKUBELET_SYSTEM_PODS_ARGS variable.\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n",
                            "test_info": [
                                "Edit the kubelet service file /etc/systemd/system/kubelet.service.d/10-kubeadm.conf\non each worker node and remove the --hostname-override argument from the\nKUBELET_SYSTEM_PODS_ARGS variable.\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n"
                            ],
                            "status": "PASS",
                            "actual_value": "UID          PID    PPID  C STIME TTY          TIME CMD\nroot        1419       1  6 Mar09 ?        10:55:43 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --container-runtime-endpoint=unix:///var/run/containerd/containerd.sock --pod-infra-container-image=registry.k8s.io/pause:3.10",
                            "scored": false,
                            "IsMultiple": false,
                            "expected_result": "'--hostname-override' is not present"
                        },
                        {
                            "test_number": "4.2.8",
                            "test_desc": "Ensure that the eventRecordQPS argument is set to a level which ensures appropriate event capture (Manual)",
                            "audit": "/bin/ps -fC kubelet",
                            "AuditEnv": "",
                            "AuditConfig": "/bin/cat /var/lib/kubelet/config.yaml",
                            "type": "",
                            "remediation": "If using a Kubelet config file, edit the file to set `eventRecordQPS` to an appropriate level.\nIf using command line arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nset the below parameter in KUBELET_SYSTEM_PODS_ARGS variable.\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n",
                            "test_info": [
                                "If using a Kubelet config file, edit the file to set `eventRecordQPS` to an appropriate level.\nIf using command line arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nset the below parameter in KUBELET_SYSTEM_PODS_ARGS variable.\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n"
                            ],
                            "status": "PASS",
                            "actual_value": "UID          PID    PPID  C STIME TTY          TIME CMD\nroot        1419       1  6 Mar09 ?        10:55:43 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --container-runtime-endpoint=unix:///var/run/containerd/containerd.sock --pod-infra-container-image=registry.k8s.io/pause:3.10",
                            "scored": false,
                            "IsMultiple": false,
                            "expected_result": "'--event-qps' is present OR '--event-qps' is not present"
                        },
                        {
                            "test_number": "4.2.9",
                            "test_desc": "Ensure that the --tls-cert-file and --tls-private-key-file arguments are set as appropriate (Manual)",
                            "audit": "/bin/ps -fC kubelet",
                            "AuditEnv": "",
                            "AuditConfig": "/bin/cat /var/lib/kubelet/config.yaml",
                            "type": "",
                            "remediation": "If using a Kubelet config file, edit the file to set `tlsCertFile` to the location\nof the certificate file to use to identify this Kubelet, and `tlsPrivateKeyFile`\nto the location of the corresponding private key file.\nIf using command line arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nset the below parameters in KUBELET_CERTIFICATE_ARGS variable.\n--tls-cert-file=\u003cpath/to/tls-certificate-file\u003e\n--tls-private-key-file=\u003cpath/to/tls-key-file\u003e\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n",
                            "test_info": [
                                "If using a Kubelet config file, edit the file to set `tlsCertFile` to the location\nof the certificate file to use to identify this Kubelet, and `tlsPrivateKeyFile`\nto the location of the corresponding private key file.\nIf using command line arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nset the below parameters in KUBELET_CERTIFICATE_ARGS variable.\n--tls-cert-file=\u003cpath/to/tls-certificate-file\u003e\n--tls-private-key-file=\u003cpath/to/tls-key-file\u003e\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n"
                            ],
                            "status": "WARN",
                            "actual_value": "UID          PID    PPID  C STIME TTY          TIME CMD\nroot        1419       1  6 Mar09 ?        10:55:43 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --container-runtime-endpoint=unix:///var/run/containerd/containerd.sock --pod-infra-container-image=registry.k8s.io/pause:3.10",
                            "scored": false,
                            "IsMultiple": false,
                            "expected_result": "'--tls-cert-file' is present AND '--tls-private-key-file' is present"
                        },
                        {
                            "test_number": "4.2.10",
                            "test_desc": "Ensure that the --rotate-certificates argument is not set to false (Automated)",
                            "audit": "/bin/ps -fC kubelet",
                            "AuditEnv": "",
                            "AuditConfig": "/bin/cat /var/lib/kubelet/config.yaml",
                            "type": "",
                            "remediation": "If using a Kubelet config file, edit the file to add the line `rotateCertificates` to `true` or\nremove it altogether to use the default value.\nIf using command line arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nremove --rotate-certificates=false argument from the KUBELET_CERTIFICATE_ARGS\nvariable.\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n",
                            "test_info": [
                                "If using a Kubelet config file, edit the file to add the line `rotateCertificates` to `true` or\nremove it altogether to use the default value.\nIf using command line arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nremove --rotate-certificates=false argument from the KUBELET_CERTIFICATE_ARGS\nvariable.\nBased on your system, restart the kubelet service. For example,\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n"
                            ],
                            "status": "PASS",
                            "actual_value": "UID          PID    PPID  C STIME TTY          TIME CMD\nroot        1419       1  6 Mar09 ?        10:55:43 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --container-runtime-endpoint=unix:///var/run/containerd/containerd.sock --pod-infra-container-image=registry.k8s.io/pause:3.10",
                            "scored": true,
                            "IsMultiple": false,
                            "expected_result": "'--rotate-certificates' is present OR '--rotate-certificates' is not present"
                        },
                        {
                            "test_number": "4.2.11",
                            "test_desc": "Verify that the RotateKubeletServerCertificate argument is set to true (Manual)",
                            "audit": "/bin/ps -fC kubelet",
                            "AuditEnv": "",
                            "AuditConfig": "/bin/cat /var/lib/kubelet/config.yaml",
                            "type": "",
                            "remediation": "Edit the kubelet service file /etc/systemd/system/kubelet.service.d/10-kubeadm.conf\non each worker node and set the below parameter in KUBELET_CERTIFICATE_ARGS variable.\n--feature-gates=RotateKubeletServerCertificate=true\nBased on your system, restart the kubelet service. For example:\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n",
                            "test_info": [
                                "Edit the kubelet service file /etc/systemd/system/kubelet.service.d/10-kubeadm.conf\non each worker node and set the below parameter in KUBELET_CERTIFICATE_ARGS variable.\n--feature-gates=RotateKubeletServerCertificate=true\nBased on your system, restart the kubelet service. For example:\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n"
                            ],
                            "status": "PASS",
                            "actual_value": "UID          PID    PPID  C STIME TTY          TIME CMD\nroot        1419       1  6 Mar09 ?        10:55:43 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --container-runtime-endpoint=unix:///var/run/containerd/containerd.sock --pod-infra-container-image=registry.k8s.io/pause:3.10",
                            "scored": false,
                            "IsMultiple": false,
                            "expected_result": "'RotateKubeletServerCertificate' is present OR 'RotateKubeletServerCertificate' is not present"
                        },
                        {
                            "test_number": "4.2.12",
                            "test_desc": "Ensure that the Kubelet only makes use of Strong Cryptographic Ciphers (Manual)",
                            "audit": "/bin/ps -fC kubelet",
                            "AuditEnv": "",
                            "AuditConfig": "/bin/cat /var/lib/kubelet/config.yaml",
                            "type": "",
                            "remediation": "If using a Kubelet config file, edit the file to set `tlsCipherSuites` to\nTLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305,TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,TLS_RSA_WITH_AES_256_GCM_SHA384,TLS_RSA_WITH_AES_128_GCM_SHA256\nor to a subset of these values.\nIf using executable arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nset the --tls-cipher-suites parameter as follows, or to a subset of these values.\n--tls-cipher-suites=TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305,TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,TLS_RSA_WITH_AES_256_GCM_SHA384,TLS_RSA_WITH_AES_128_GCM_SHA256\nBased on your system, restart the kubelet service. For example:\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n",
                            "test_info": [
                                "If using a Kubelet config file, edit the file to set `tlsCipherSuites` to\nTLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305,TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,TLS_RSA_WITH_AES_256_GCM_SHA384,TLS_RSA_WITH_AES_128_GCM_SHA256\nor to a subset of these values.\nIf using executable arguments, edit the kubelet service file\n/etc/systemd/system/kubelet.service.d/10-kubeadm.conf on each worker node and\nset the --tls-cipher-suites parameter as follows, or to a subset of these values.\n--tls-cipher-suites=TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305,TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,TLS_RSA_WITH_AES_256_GCM_SHA384,TLS_RSA_WITH_AES_128_GCM_SHA256\nBased on your system, restart the kubelet service. For example:\nsystemctl daemon-reload\nsystemctl restart kubelet.service\n"
                            ],
                            "status": "WARN",
                            "actual_value": "UID          PID    PPID  C STIME TTY          TIME CMD\nroot        1419       1  6 Mar09 ?        10:55:43 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --container-runtime-endpoint=unix:///var/run/containerd/containerd.sock --pod-infra-container-image=registry.k8s.io/pause:3.10",
                            "scored": false,
                            "IsMultiple": false,
                            "expected_result": "'--tls-cipher-suites' is present"
                        },
                        {
                            "test_number": "4.2.13",
                            "test_desc": "Ensure that a limit is set on pod PIDs (Manual)",
                            "audit": "/bin/ps -fC kubelet",
                            "AuditEnv": "",
                            "AuditConfig": "/bin/cat /var/lib/kubelet/config.yaml",
                            "type": "",
                            "remediation": "Decide on an appropriate level for this parameter and set it,\neither via the --pod-max-pids command line parameter or the PodPidsLimit configuration file setting.\n",
                            "test_info": [
                                "Decide on an appropriate level for this parameter and set it,\neither via the --pod-max-pids command line parameter or the PodPidsLimit configuration file setting.\n"
                            ],
                            "status": "WARN",
                            "actual_value": "UID          PID    PPID  C STIME TTY          TIME CMD\nroot        1419       1  6 Mar09 ?        10:55:43 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --container-runtime-endpoint=unix:///var/run/containerd/containerd.sock --pod-infra-container-image=registry.k8s.io/pause:3.10",
                            "scored": false,
                            "IsMultiple": false,
                            "expected_result": "'--pod-max-pids' is present"
                        }
                    ]
                },
                {
                    "section": "4.3",
                    "type": "",
                    "pass": 1,
                    "fail": 0,
                    "warn": 0,
                    "info": 0,
                    "desc": "kube-proxy",
                    "results": [
                        {
                            "test_number": "4.3.1",
                            "test_desc": "Ensure that the kube-proxy metrics service is bound to localhost (Automated)",
                            "audit": "/bin/ps -fC kube-proxy",
                            "AuditEnv": "",
                            "AuditConfig": "/bin/sh -c 'if test -e /etc/kubernetes/proxy.conf; then cat /etc/kubernetes/proxy.conf; fi'",
                            "type": "",
                            "remediation": "Modify or remove any values which bind the metrics service to a non-localhost address.\nThe default value is 127.0.0.1:10249.\n",
                            "test_info": [
                                "Modify or remove any values which bind the metrics service to a non-localhost address.\nThe default value is 127.0.0.1:10249.\n"
                            ],
                            "status": "PASS",
                            "actual_value": "UID          PID    PPID  C STIME TTY          TIME CMD\nroot        3794    2220  0 Mar09 ?        00:03:10 /usr/local/bin/kube-proxy --config=/var/lib/kube-proxy/config.conf --hostname-override=cp-k8s",
                            "scored": true,
                            "IsMultiple": false,
                            "expected_result": "'--metrics-bind-address' is present OR '--metrics-bind-address' is not present"
                        }
                    ]
                }
            ],
            "total_pass": 9,
            "total_fail": 8,
            "total_warn": 7,
            "total_info": 0
        }
    ],
    "Totals": {
        "total_pass": 9,
        "total_fail": 8,
        "total_warn": 7,
        "total_info": 0
    }
}