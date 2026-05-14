cask "med-schedule-tracker" do
  version "0.3.0"
  sha256 "626ad624832678f10505199faf73be0753ef3aba3fc20557907518746a23b2a0"

  url "https://github.com/Jimmy110101013/med-schedule-backend/releases/download/v0.3.0/Med.Schedule.Tracker_0.2.5_aarch64.dmg"
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
