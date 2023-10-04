class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.1.7"
    url "https://github.com/michidk/vscli/releases/download/v0.1.7/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "bfc4f33ad76ac388ec2a4c31d1a00ef8d748281129d0827cc4e67ea070d07685"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  
