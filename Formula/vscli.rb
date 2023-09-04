class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.1.5"
    url "https://github.com/michidk/vscli/releases/download/v0.1.5/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "7305b0c8b4538935ed5cf588edfeb1dd3d704451db5ee4c360b6d6fd0aa233c9"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  
