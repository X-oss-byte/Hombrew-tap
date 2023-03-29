# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/chiselstrike/homebrew-tap"
  version "0.50.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.50.0/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "fbdd495395b00ac09a9e75352a3409efe12bea402706189fd93399ea802edb2c"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.50.0/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "dcb28749f4a3bc362008ccf046f667daa879538cdb04eac39f4f9df94ecb5c42"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.50.0/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "526797f8a56f6484411906d2e8d435b98a368f72f6355650a1ea2b4fa67d74d7"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.50.0/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "cb82e868d3ee182c695585d8abb566c9faa965af46bde27995bd236cab370713"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  def post_install
    puts "Turso CLI installed!"
    puts ""
    puts "If you are a new user, you can sign up with `turso auth signup`."
    puts ""
    puts "If you already have an account, please login with `turso auth login`."
  end
end
