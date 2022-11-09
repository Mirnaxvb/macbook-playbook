# Dotfiles
alias zsh="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias aliases="nvim ~/.bash_aliases"
alias functions="nvim ~/.bash_functions"

# Macbook playbook
alias update-mac="ansible-playbook ~/code/SideProjects/macbook-playbook/main.yml"

# Dev-cli
alias cleanup-mac="php /Users/m.vanbalgooi/Code/SideProjects/dev-cli/dev-cli cleanup:osx"

# Navigation
alias code="cd ~/code"
alias bert="cd ~/code/Projects/bert"
alias sam="cd ~/code/Projects/sam-server"
alias portal="cd ~/code/Projects/portal.socialblue.com"
alias tommie="cd ~/code/Projects/tommie"
alias redirect="cd ~/code/Projects/redirect"
alias tracker="cd ~/code/Projects/tracker"
alias sherlock="cd ~/code/Projects/Sherlock/sherlock"
alias tier1="cd ~/code/Projects/Sherlock/tier1"
alias dev-box="cd ~/code/Projects/Sherlock/dev-box"

# MongoDB
alias start-mongo="brew services start mongodb-community@5.0"
alias stop-mongo="brew services stop mongodb-community@5.0"

# Laravel
alias pa="php artisan"
alias pam="php artisan migrate:fresh --env=testing"
alias pas="php artisan db:seed --class=TestDatabaseSeeder --env=testing"
alias pat="php artisan test --env=testing"
alias patf="php artisan test --env=testing --filter "

# Kubectl
alias k="kubectl —cache-dir=/dev/null"
alias ktest="kubectl config use-context test-cluster"
alias kproduction="kubectl config use-context production-cluster"
alias clean-cron="kubectl get pods -n tommie | grep cron | grep -v Completed | awk '{ print $1 }' | xargs kubectl delete pod -n tommie {}"

# Phpstorm
alias pstorm="open -a PhpStorm ./"

# NeoVim
alias nv="nvim"
alias nvconfig="nvim ~/.config/nvim/init.vim"

# Quality Assurance
alias check="php vendor/bin/ecs check --config=vendor/socialblue/php-code-style/easy-coding-standard.php --match-git-diff"
alias fix="php vendor/bin/ecs check --fix --config=vendor/socialblue/php-code-style/easy-coding-standard.php --match-git-diff"
alias ffix="php vendor/bin/ecs check --fix --config=vendor/socialblue/php-code-style/easy-coding-standard.php"
alias stan="./vendor/bin/phpstan analyse app tests -c ../../Packages/php-code-style/phpstan.neon"
alias stan-baseline="./vendor/bin/phpstan analyse --generate-baseline -c ../../Packages/php-code-style/phpstan.neon"



cdl() { cd "$(lars path "$1")" || "Could not find project path with: '$1'"; }
