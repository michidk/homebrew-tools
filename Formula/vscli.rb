class Vscli < Formula
  desc "A CLI/TUI that simplifies launching VSCode projects, with a focus on dev containers"
  homepage "https://github.com/michidk/vscli"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-x86_64-apple-darwin.tar.gz" # url:vscli-x86_64-apple-darwin
      sha256 "ae83bd051a583323832c7b1ac0b017bc2f818e739a167542093668631018652b" # sha:vscli-x86_64-apple-darwin
    elsif Hardware::CPU.arm?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-aarch64-apple-darwin.tar.gz" # url:vscli-aarch64-apple-darwin
      sha256 "ecfad0dc60d175edd08f2aaa9353fb33c0808744e61d1ef60f2c3972c80b5500" # sha:vscli-aarch64-apple-darwin
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-x86_64-unknown-linux-musl.tar.gz" # url:vscli-x86_64-unknown-linux-musl
      sha256 "17ff9c0f4d51d01cdebd7270372dde4d4f1d70fddbe8c285fcfbb2875402e5e0" # sha:vscli-x86_64-unknown-linux-musl
    elsif Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-arm-unknown-linux-gnueabihf.tar.gz" # url:vscli-arm-unknown-linux-gnueabihf
      sha256 "9bd0940564a1b2e1b4dda96235c1353c5018c7c6e02effc953cce91b419a6c62" # sha:vscli-arm-unknown-linux-gnueabihf
    end
  end

  def install
    bin.install "vscli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vscli --version")
  end
end
