#!/usr/bin/zsh
echo "Applying kyverno policies to cluster $(sudo kind get clusters)..."

for name in $( kubectl get ns --no-headers -o custom-columns=":metadata.name" ); do
    echo $name
done