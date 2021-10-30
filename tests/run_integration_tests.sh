#! /bin/zsh -y

oneTimeSetUp() {
  source ~/.zshrc
}

test_gh_isInstalled() {
  result=`gh --help`
  assertContains "${result}" "gh <command>"
}

test_nvm_isInstalled() {
  result=`nvm --help`
  assertContains "${result}" "Node Version Manager"
}

test_node_isInstalled() {
  result=`node --help`
  assertContains "${result}" "Usage: node [options]"
}

test_npm_isInstalled() {
  result=`npm --help`
  assertContains "${result}" "npm <command>"
}

test_yarn_isInstalled() {
  result=`yarn --help`
  assertContains "${result}" "Usage: yarn [command]"
}

test_pyenv_isInstalled() {
  result=`pyenv --help`
  assertContains "${result}" "Usage: pyenv <command>"
}

test_python_isInstalled() {
  result=`python --help`
  assertContains "${result}" "usage:"
}

test_poetry_isInstalled() {
  result=`poetry --help`
  assertContains "${result}" "Poetry version"
}

test_rvm_isInstalled() {
  result=`rvm --help`
  assertContains "${result}" "rvm [--debug]"
}

test_ruby_isInstalled() {
  result=`ruby --help`
  assertContains "${result}" "Usage: ruby"
}

test_rails_isInstalled() {
  result=`ruby --help`
  assertContains "${result}" "rails new"
}

test_goenv_isInstalled() {
  result=`goenv --help`
  assertContains "${result}" "Usage: goenv <command>"
}

test_go_isInstalled() {
  result=`go help`
  assertContains "${result}" "go <command>"
}

test_sdk_isInstalled() {
  result=`sdk --help`
  assertContains "${result}" "Usage: sdk <command>"
}

test_java_isInstalled() {
  result=`java --help`
  assertContains "${result}" "Usage: java [options]"
}

test_gradle_isInstalled() {
  result=`gradle --help`
  assertContains "${result}" "USAGE: gradle [option...]"
}

test_mvn_isInstalled() {
  result=`mvn --help`
  assertContains "${result}" "usage: mvn [options]"
}

test_kotlin_isInstalled() {
  result=`kotlin -help`
  assertContains "${result}" "Usage: kotlin <options>"
}

# Scala doesn't assign to a var well. Do something else instead.
test_scala_isInstalled() {
  result=`if [ -x "$(command -v scala)" ]; then echo true; else echo false; fi`
  assertTrue "${result}"
}

test_dotnet_isInstalled() {
  result=`dotnet --help`
  assertContains "${result}" "Usage: dotnet [runtime-options]"
}

test_pwsh_isInstalled() {
  result=`pwsh --help`
  assertContains "${result}" "Usage: pwsh"
}

test_tfenv_isInstalled() {
  result=`tfenv --help`
  assertContains "${result}" "Usage: tfenv <command>"
}

test_terraform_isInstalled() {
  result=`terraform --help`
  assertContains "${result}" "Usage: terraform"
}

test_rustup_isInstalled() {
  result=`rustup --help`
  assertContains "${result}" "rustup [FLAGS]"
}

test_rustc_isInstalled() {
  result=`rustc --help`
  assertContains "${result}" "Usage: rustc [OPTIONS]"
}

test_cargo_isInstalled() {
  result=`cargo --help`
  assertContains "${result}" "cargo [+toolchain]"
}

test_R_isInstalled() {
  result=`R --help`
  assertContains "${result}" "Usage: R [options]"
}

test_dart_isInstalled() {
  result=`dart --help`
  assertContains "${result}" "Usage: dart <command"
}

test_awscli_isInstalled() {
  result=`aws --help`
  assertContains "${result}" "usage: aws"
}

# Install shUnit2 - from https://github.com/kward/shunit2
command -v shunit2 || {
  if ! command -v sudo &> /dev/null
  then
    curl -sLo /usr/local/bin/shunit2 https://raw.githubusercontent.com/kward/shunit2/master/shunit2
    chmod +x /usr/local/bin/shunit2
  else
    sudo curl -sLo /usr/local/bin/shunit2 https://raw.githubusercontent.com/kward/shunit2/master/shunit2
    sudo chmod +x /usr/local/bin/shunit2
  fi
}
SHUNIT_PARENT=$0

# Run the tests
source shunit2