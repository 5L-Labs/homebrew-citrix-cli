class CitrixWorkspaceManager < Formula
  desc "Safely park and unpark Citrix Workspace on macOS without rebooting"
  homepage "https://github.com/5L-Labs/osx-citrix-manager-cli"
  url "https://github.com/5L-Labs/osx-citrix-manager-cli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "Apache-2.0"

  def install
    bin.install "scripts/cwm.sh" => "cwm"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cwm --help", 0)
  end
end
