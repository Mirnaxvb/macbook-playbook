#Functions
kctl() {
    if [[ `basename $PWD` == "bert" ]]
    then
        project="bert"
    elif [[ `basename $PWD` == "elmo" ]]
    then
        project="elmo"
    elif [[ `basename $PWD` == "sam-server" ]] || [[ `basename $PWD` == "sam-client" ]]
    then
        project="sam"
    elif [[ `basename $PWD` == "tommie" ]]
    then
        project="tommie"
    elif [[ `basename $PWD` == "bookstack-wiki" ]]
    then
        project="bookstack"
    fi

    pod=`kubectl -n "$project" get pods | grep web | awk {'print $1'} | head -n 1`

    print "\033[01;37mConnecting to pod \033[00;33m$pod \033[01;37mof project \033[00;33m$project\033[0m"
    kubectl -n "$project" exec -it "$pod" -- sh
}

