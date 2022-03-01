# ZSH
alias zsh="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

# Navigation
alias code="cd ~/code"
alias bert="cd ~/code/Projects/bert"
alias sam="cd ~/code/Projects/sam-server"
alias portal="cd ~/code/Projects/portal.socialblue.com"
alias tommie="cd ~/code/Projects/tommie"

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

# Phpstorm
alias pstorm="open -a PhpStorm ./"

# NeoVim
alias nv="nvim"

# Quality Assurance
alias check="php vendor/bin/ecs check --config=vendor/socialblue/php-code-style/easy-coding-standard.php --match-git-diff"
alias fix="php vendor/bin/ecs check --fix --config=vendor/socialblue/php-code-style/easy-coding-standard.php --match-git-diff"
alias ffix="php vendor/bin/ecs check --fix --config=vendor/socialblue/php-code-style/easy-coding-standard.php"
alias stan="/vendor/bin/phpstan analyse app tests -c ../../Packages/php-code-style/phpstan.neon"
alias stan_baseline="./vendor/bin/phpstan analyse --generate-baseline -c ../../Packages/php-code-style/phpstan.neon"
