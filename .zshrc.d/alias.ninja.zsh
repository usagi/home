function ninja()
{
  \time env ninja $@
  R=$?
  echo -e '\a'
  return R
}
alias ninja.clean='ninja clean'
alias ninja.rebuild='ninja.clean && ninja'
alias ninja.install='ninja install'
