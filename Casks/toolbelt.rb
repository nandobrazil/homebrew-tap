cask "toolbelt" do
  version "0.2.5"
  sha256 "d50a0bd266dbb8e982e9c9661b4ab0b2bd53b6fd036d48b8ac326c3bf2c38806"

  url "https://github.com/nandobrazil/toolbelt/releases/download/v#{version}/Toolbelt-#{version}.dmg"
  name "Toolbelt"
  desc "Menu bar toolkit: hidden icons, window switcher, clipboard history and more"
  homepage "https://toolbelt.oconde.dev/"

  livecheck do
    url "https://toolbelt.oconde.dev/updates/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Toolbelt.app"

  uninstall quit: "dev.oconde.toolbelt"

  zap trash: [
    "~/Library/Application Support/Toolbelt",
    "~/Library/Logs/Toolbelt.log",
    "~/Library/Preferences/dev.oconde.toolbelt.plist",
  ]
end
