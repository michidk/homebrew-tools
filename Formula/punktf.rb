class Punktf < Formula
  desc "A cross-platform multi-target dotfiles manager"
  homepage "https://github.com/Shemnei/punktf"
  version "3.0.0"
  url "https://github.com/Shemnei/punktf/releases/download/v3.0.0/punktf-x86_64-unknown-linux-musl.tar.gz"
  sha256 "e390ccd61dc12ad08d013ed1682d7e615e442b874977d35118563188fe3e0db6"

  conflicts_with "punktf"

  def install
    bin.install "punktf"
  end
end
