# Install the asdf Erlang and Elixir plugins
setup() {
  # Erlang
  # Installing Erlang via asdf is a thankless task. Stick with a pre-compiled
  # binary for now
  sudo port install erlang
  asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git

  # Elixir
  sudo port install unzip
  asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir.git
}

# Don't run setup unless asdf is installed
[ -f $HOME/.asdf/asdf.sh ] && setup
