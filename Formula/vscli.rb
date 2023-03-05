class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.1.1"
    url "https://github.com/michidk/vscli/releases/download/v0.1.1/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "f4cde8fed441eebe8d52387100461eac9c0887966d99367d76af2e97a8adf11b"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  