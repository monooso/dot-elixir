# Uninstall the asdf Erlang and Elixir plugins
teardown() {
  # Elixir
  sudo port uninstall --follow-dependencies unzip
  asdf plugin remove elixir

  # Erlang
  sudo port uninstall --follow-dependencies erlang
}

# Don't run teardown unless asdf is installed
[ -f $HOME/.asdf/asdf.sh ] && teardown

