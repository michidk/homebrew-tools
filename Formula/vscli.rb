class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.1.13"
    url "https://github.com/michidk/vscli/releases/download/v0.1.13/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "fb1a238224e5d612a9de97d22f9f5dbff14b46327f89005fd24835da40072987"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  
