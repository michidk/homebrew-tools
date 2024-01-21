class Punktf < Formula
  desc "A cross-platform multi-target dotfiles manager"
  homepage "https://github.com/Shemnei/punktf"
  version "3.1.1"
  url "https://github.com/Shemnei/punktf/releases/download/v3.1.1/punktf-x86_64-unknown-linux-musl.tar.gz"
  sha256 "0259d2fefe23e5c45ad874a835ed134b14631685e8c7a5a94d28aedebc69b340"

  conflicts_with "punktf"

  def install
    bin.install "punktf"
  end
end
