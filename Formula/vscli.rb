class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.1.4"
    url "https://github.com/michidk/vscli/releases/download/v0.1.4/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "6ce7dfbcee574c14f07245d857727b0fbfbd45c408023acb1cefd686a95bbbe7"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  