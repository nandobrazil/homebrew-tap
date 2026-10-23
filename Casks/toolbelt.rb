cask "toolbelt" do
  version "0.2.4"
  sha256 "20e676e3680eb7577997f0dc838711f4c8181bc5dc90c71b4d043398896f38c0"

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
