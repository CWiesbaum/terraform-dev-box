#!/bin/zsh
declare -A envVarDescriptions
envVarDescriptions=( ["VAGRANT_NAME"]="VirtualBox name; Default: terraformDevBox" ["VAGRANT_CPUS"]="Number of CPUs; Default: 1" ["VAGRANT_MEMORY"]="VM memory; Default: 2048" ["VAGRANT_SSH_PUB_KEY"]="SSH public key to use for SSH connection to host; Default: ~/.ssh/id_rsa.pub" )

echo "Let me help you to setup your vagrant box!"
echo
echo "The following Options are available:"

for envName envDesc in ${(kv)envVarDescriptions}; do
    echo "$envName - $envDesc"
done

echo

declare -A envVars
envVars=( ["VAGRANT_NAME"]="terraformDevBox" ["VAGRANT_CPUS"]="1" ["VAGRANT_MEMORY"]="2048" ["VAGRANT_SSH_PUB_KEY"]="~/.ssh/id_rsa.pub" )

for envName envValue in ${(kv)envVars}; do
    echo -n "Wich value do you want to set for" $envName"? (Default:" $envValue") "
    read USERVALUE
    USERVALUE=${USERVALUE:-$envValue}
    envVars[$envName]=$USERVALUE
done

echo
echo "Execute the following commands before running vagrant up"

for envName envValue in ${(kv)envVars}; do
    echo "export" $envName"="$envValue
done