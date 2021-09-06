# Install the asdf Erlang and Elixir plugins
setup() {
  # Erlang
  sudo port install autoconf openssl wxwidgets-3.2
  asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git

  # Elixir
  sudo port install unzip
  asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir.git
}

# Don't run setup unless asdf is installed
[ -f $HOME/.asdf/asdf.sh ] && setup
