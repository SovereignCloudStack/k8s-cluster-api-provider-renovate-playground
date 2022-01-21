#!/bin/bash
export KUBECONFIG=~/.kube/config
if test -n "$1"; then CLUSTER_NAME="$1"; else CLUSTER_NAME=testcluster; fi
#NAMESPACE=$(yq eval .NAMESPACE $CCCFG)
KCONTEXT="--context=${CLUSTER_NAME}-admin@${CLUSTER_NAME}" # "--namespace=$NAMESPACE"
#
MGMT=$(openstack server list --name ".*\-mgmtcluster" -f value -c Name)
#sudo ip link set dev ens8 down
echo "Removing NIC ..."
openstack server remove network $MGMT k8s-clusterapi-cluster-default-$CLUSTER_NAME || exit
