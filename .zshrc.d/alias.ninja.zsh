function ninja()
{
  env ninja $@
  echo -e '\a'
}
alias ninja.clean='ninja clean'
alias ninja.rebuild='ninja.clean && ninja'
alias ninja.install='ninja install'
