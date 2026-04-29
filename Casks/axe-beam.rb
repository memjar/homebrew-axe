cask "axe-beam" do
  version "1.0.0"
  sha256 "dcafb0ae7a5b9bd9c35c36a7cd351912dcc9da2a807f30cfc6f275bbe194ae41"

  url "https://github.com/memjar/axe-beam/releases/download/v#{version}/AXEBeam-#{version}-mac.zip"
  name "AXE Beam"
  desc "Native ntfy notification client for AXE fleet — training, GitHub, and fleet alerts"
  homepage "https://axe.observer"

  app "AXEBeam.app"

  postflight do
    system_command "/usr/bin/open",
                   args: ["-a", "AXEBeam"]
  end

  uninstall quit: "ca.axetechnologies.beam-mac"

  zap trash: [
    "~/Library/Application Support/ca.axetechnologies.beam-mac",
    "~/Library/Preferences/ca.axetechnologies.beam-mac.plist",
  ]
end
