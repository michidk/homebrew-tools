class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.2.2"
    url "https://github.com/michidk/vscli/releases/download/v0.2.2/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "4fb47eadb53a2e1e656ad1274506de132e9a71385cb5142f3582311f9c7515a8"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  
