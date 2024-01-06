class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.2.1"
    url "https://github.com/michidk/vscli/releases/download/v0.2.1/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "6de202ca63719908dba0bf8c4824d93ddc1ac4adf963c3f10fdc7dfa00fffea6"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  
