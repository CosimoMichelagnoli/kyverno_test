#!/usr/bin/zsh
echo "Applying kyverno policies to sandbox namespaces in cluster...\n"
for name in $( kubectl get ns --no-headers -o custom-columns=":metadata.name"|grep sandbox ); do
    echo "Namespace $name"
    kubectl apply -f policies/ --namespace ${name}
    echo "\n"
done
echo "Done"