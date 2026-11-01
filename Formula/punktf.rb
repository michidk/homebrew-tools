class Punktf < Formula
  desc "A cross-platform multi-target dotfiles manager"
  homepage "https://github.com/Shemnei/punktf"
  version "3.1.1"
  url "https://github.com/Shemnei/punktf/archive/refs/tags/v3.1.2.tar.gz"
  sha256 "99d5c42a621a609c59cfa5088391e4e0384739850df0eab3917b4a7d10fbebcc"

  conflicts_with "punktf"

  def install
    bin.install "punktf"
  end
end
