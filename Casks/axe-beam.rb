cask "axe-beam" do
  version "1.0.0"
  sha256 "dcafb0ae7a5b9bd9c35c36a7cd351912dcc9da2a807f30cfc6f275bbe194ae41"

  url "https://github.com/memjar/axe-beam/releases/download/v#{version}/AXEBeam-#{version}-mac.zip"
  name "AXE Beam"
  desc "Native ntfy notification client for AXE fleet"
  homepage "https://github.com/memjar/axe-beam"

  # Skip Gatekeeper quarantine — AXE internal tool, signed with AXE dev cert
  disable_quarantine_flags true

  app "AXEBeam.app"

  caveats <<~EOS
    AXE Beam runs in the menu bar.
    Launch: open /Applications/AXEBeam.app
    Auto-start: System Settings → General → Login Items → add AXEBeam.
  EOS

  uninstall quit: "ca.axetechnologies.beam-mac"

  zap trash: [
    "~/Library/Application Support/ca.axetechnologies.beam-mac",
    "~/Library/Preferences/ca.axetechnologies.beam-mac.plist",
  ]
end
