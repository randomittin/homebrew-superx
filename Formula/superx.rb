class Superx < Formula
  desc "Autonomous superskill manager for Claude Code — one prompt to finished project"
  homepage "https://github.com/randomittin/superx"
  url "https://github.com/randomittin/superx.git", branch: "main"
  version "1.0.0"
  license "MIT"

  depends_on "python@3.11" => :recommended
  depends_on "jq" => :recommended
  depends_on "gh" => :optional

  def install
    # Install the entire plugin tree to libexec
    libexec.install Dir["*"]
    libexec.install ".claude-plugin"

    # Symlink the CLI launcher to bin
    bin.install_symlink libexec/"bin/superx"

    # Make all bin scripts executable
    (libexec/"bin").children.each { |f| f.chmod 0755 }
  end

  def caveats
    <<~EOS
      superx requires Claude Code (authenticated) to run.
      Install Claude Code: https://docs.claude.com/en/docs/claude-code/setup

      Usage:
        cd /path/to/your/project
        superx "build a dashboard with auth"
        superx --dashboard          # pixel art web UI
        superx                      # interactive mode

      All files are written to the current directory.
    EOS
  end

  test do
    assert_match "superx", shell_output("#{bin}/superx --help")
  end
end
