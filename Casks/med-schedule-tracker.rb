cask "med-schedule-tracker" do
  version "0.2.2"
  sha256 "d08918b7879fdfe77feb4ed818b2014647a59bda3e5eb8bd218f5b15aa38f26a"

  url "https://github.com/Jimmy110101013/med-schedule-backend/releases/download/v0.2.2/Med.Schedule.Tracker_0.2.2_aarch64.dmg"
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
