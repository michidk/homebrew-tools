class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.1.8"
    url "https://github.com/michidk/vscli/releases/download/v0.1.8/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "7d96261494e06c298476ab3712e1fac9d1f9a7ba0b34cce2224f9667f5e7e3fe"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  
