class Vscli < Formula
  desc "A CLI/TUI that simplifies launching VSCode projects, with a focus on dev containers"
  homepage "https://github.com/michidk/vscli"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-x86_64-apple-darwin.tar.gz" # url:vscli-x86_64-apple-darwin
      sha256 "d8c118f5c2664f305b90493eda3e5e028e144fa7a4be55798102e09add54c6ed" # sha:vscli-x86_64-apple-darwin
    elsif Hardware::CPU.arm?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-aarch64-apple-darwin.tar.gz" # url:vscli-aarch64-apple-darwin
      sha256 "a155f97b5db1b5ecc6f1ada4a253ac8031e1a849d67f95e433b200790989d4fe" # sha:vscli-aarch64-apple-darwin
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-x86_64-unknown-linux-musl.tar.gz" # url:vscli-x86_64-unknown-linux-musl
      sha256 "58add6cf993d1190634ef5c8ff9e47176867561881b3776c6c44f26c82a5f952" # sha:vscli-x86_64-unknown-linux-musl
    elsif Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-arm-unknown-linux-gnueabihf.tar.gz" # url:vscli-arm-unknown-linux-gnueabihf
      sha256 "957e3ccca6abf34dcf389cc6b47fea8c753f1e5e6cd121a0b8336da114525a60" # sha:vscli-arm-unknown-linux-gnueabihf
    end
  end

  def install
    bin.install "vscli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vscli --version")
  end
end
