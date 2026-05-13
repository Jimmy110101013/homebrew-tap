cask "med-schedule-tracker" do
  version "0.2.0"
  sha256 "595d84f1706926f7d6e97ede0f6c8aeaf92887c5b961f6d7499686655fa9495d"

  url "https://github.com/Jimmy110101013/med-schedule-backend/releases/download/v0.2.0/Med.Schedule.Tracker_0.2.0_aarch64.dmg"
  name "Med Schedule Tracker"
  desc "NYCU Med10 clinical course tracking dashboard"
  homepage "https://github.com/Jimmy110101013/med-schedule-backend"

  app "Med Schedule Tracker.app"

  postflight do
    system_command "/usr/bin/xattr",
         args: ["-cr", "#{appdir}/Med Schedule Tracker.app"],
         sudo: false
  end
end
