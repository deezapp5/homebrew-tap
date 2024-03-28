class Deezapps < Formula
  desc "An app generator that let's you go from 0 to shipped in under 5 minutes"
  homepage "https://github.com/deezapps-fam/cli"
  version "0.0.0-alpha.16"
  # TODO: host on public repo
  url "https://github.com/deezapps-fam/cli/releases/download/v0.0.0-alpha.16/deezapps-v0.0.0-alpha.16-x86_64-apple-darwin.tar.gz"
  sha256 "25a33e611969b7e466199f2356b27afb96cd3690fa0375b29c4333c725cdbf61"
  license "MIT"
  head "https://github.com/deezapps-fam/cli.git", branch: "master"

  def install
    bin.install "deezapps"
    bash_completion.install "autocomplete/deezapps.bash" => "deezapps"
    zsh_completion.install "autocomplete/_deezapps" => "_deezapps"
    fish_completion.install "autocomplete/deezapps.fish" => "deezapps.fish"
  end

  test do
    system "#{bin}/deezapps", "--version"
  end
end
