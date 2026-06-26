cask "pesty" do
  version "1.0.0"
  sha256 "b51032823bbc51a584ff21fd19748fcfa035d3400c58d670c9eff1af8fdd76dc"

  url "https://github.com/momenbasel/pesty/releases/download/v#{version}/Pesty-#{version}.dmg",
      verified: "github.com/momenbasel/pesty/"
  name "Pesty"
  desc "Free, open-source clipboard manager inspired by Paste"
  homepage "https://github.com/momenbasel/pesty"

  depends_on macos: ">= :sonoma"

  app "Pesty.app"

  zap trash: [
    "~/Library/Application Support/Pesty",
    "~/Library/Preferences/com.greycorelabs.pesty.plist",
  ]
end
