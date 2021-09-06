# Uninstall the asdf Erlang and Elixir plugins
teardown() {
  # Elixir
  sudo port uninstall --follow-dependencies unzip
  asdf plugin remove elixir

  # Erlang
  asdf plugin remove erlang
  sudo port uninstall --follow-dependencies autoconf openssl wxwidgets-3.2
}

# Don't run teardown unless asdf is installed
[ -f $HOME/.asdf/asdf.sh ] && teardown

