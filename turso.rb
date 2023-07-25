# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/tursodatabase/homebrew-tap"
  version "0.78.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.78.1/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "7b403258447ddfe6316c043b71cdf385862bfb19810aabb833534bf2a5582f12"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.78.1/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "b458798a14b1bfa2af33816f5d42b4bce6526ac0d5dd1c3d04cec25563684b0a"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.78.1/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "c399302183a752384319db686edb704d325da33d338f1716d81f2ec4e823be0f"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.78.1/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "bd905d4d47f123204d7a80bb648b32cc77751a14a0300ee6473c561f4f770dd1"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  def post_install
    exec('turso quickstart')
  end
end
