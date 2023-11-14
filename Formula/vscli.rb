class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.2.0"
    url "https://github.com/michidk/vscli/releases/download/v0.2.0/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "10699161893a8586af59b6661028d0afe7b86b183b71ecb97da0ab3f9e0e226e"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  
