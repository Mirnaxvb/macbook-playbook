# Dotfiles
alias zsh="hx ~/.zshrc"
alias ohmyzsh="hx ~/.oh-my-zsh"
alias aliases="hx ~/.bash_aliases"
alias functions="hx ~/.bash_functions"

# Macbook playbook
alias mac="cd ~/code/SideProjects/macbook-playbook"
alias config-mac="hx ~/code/SideProjects/macbook-playbook"
alias update-mac="ansible-playbook ~/code/SideProjects/macbook-playbook/main.yml"

# Dev-cli
alias cleanup-mac="php /Users/m.vanbalgooi/Code/SideProjects/dev-cli/dev-cli cleanup:osx"

# Xdebug
alias exd80="mv /opt/homebrew/etc/php/8.0/conf.d/ext-xdebug.ini.dis /opt/homebrew/etc/php/8.0/conf.d/ext-xdebug.ini"
alias dxd80="mv /opt/homebrew/etc/php/8.0/conf.d/ext-xdebug.ini /opt/homebrew/etc/php/8.0/conf.d/ext-xdebug.ini.dis"
alias exd81="mv /opt/homebrew/etc/php/8.1/conf.d/ext-xdebug.ini.dis /opt/homebrew/etc/php/8.1/conf.d/ext-xdebug.ini"
alias dxd81="mv /opt/homebrew/etc/php/8.1/conf.d/ext-xdebug.ini /opt/homebrew/etc/php/8.1/conf.d/ext-xdebug.ini.dis"
alias exd82="mv /opt/homebrew/etc/php/8.2/conf.d/ext-xdebug.ini.dis /opt/homebrew/etc/php/8.2/conf.d/ext-xdebug.ini"
alias dxd82="mv /opt/homebrew/etc/php/8.2/conf.d/ext-xdebug.ini /opt/homebrew/etc/php/8.2/conf.d/ext-xdebug.ini.dis"

# Navigation
alias code="cd ~/code"
alias bert="cd ~/code/Projects/bert"
alias sam="cd ~/code/Projects/sam-server"
alias sam-client="cd ~/code/Projects/sam-server/sam-client"
alias portal="cd ~/code/Projects/portal.socialblue.com"
alias tommie="cd ~/code/Projects/tommie"
alias redirect="cd ~/code/Projects/redirect"
alias tracker="cd ~/code/Projects/tracker"
alias sherlock="cd ~/code/Projects/Sherlock/sherlock"
alias tier1="cd ~/code/Projects/Sherlock/tier1"
alias dev-box="cd ~/code/Projects/Sherlock/dev-box"
alias sa-adr="cd ~/Documents/SoftwareArchitect/architectural-decision-records"
alias larashell="cd ~/code/SideProjects/larashell"

# Docker
alias dr="docker run -it --rm -v $(pwd):/var/www eu.gcr.io/socialblue-infrastructure/sam/phpunit:1.0.0 sh"
#alias drmi="sudo docker rmi $(sudo docker images | grep portal | tr -s ' ' | awk -F ' ' '{print $1":"$2')"

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
alias clean-evicted="kubectl get pods -n sam | grep "Evicted" | awk '{ print $1 }' | xargs kubectl delete pod -n sam"

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
