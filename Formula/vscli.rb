class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.3.0"
    url "https://github.com/michidk/vscli/releases/download/v0.3.0/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "945e6025f42f332665f5b6ab127c6ece13e3f9fb64afdc3d9b5dc8de031f913d"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  
