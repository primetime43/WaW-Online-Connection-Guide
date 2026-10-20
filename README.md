# World at War online connection guide

This guide connects *Call of Duty: World at War* competitive multiplayer to a
community-run recreation of the game's Demonware online services. It covers
physical PS3, RPCS3, and the Xbox 360 multiplayer game in **Xenia Netplay**.

For PS3 and RPCS3, install game update **1.07** before connecting. This is the
latest update for the releases currently used with this server; other regional
versions have not yet been verified.

**Jump to:** [Physical PS3](#physical-ps3) · [RPCS3](#rpcs3) ·
[Xenia Netplay](#xenia-netplay) · [Quick fixes](#quick-fixes)

| Platform | Server setting |
| --- | --- |
| Physical PS3 | DNS `67.222.156.250` |
| RPCS3 | DNS `67.222.156.250` |
| Xenia Netplay | API `http://157.230.65.227:8081/xenia/` |

## Physical PS3

1. Open **Settings → Network Settings → Internet Connection Settings**.
2. Keep your normal IP and connection settings, but set **DNS Setting** to
   **Manual**.
3. Set **Primary DNS** to `67.222.156.250`.
4. Do not use a public secondary DNS. If that doesn't work, you can try `1.1.1.1`, `2.2.2.2`, or `8.8.8.8`.
5. Save the settings and test the connection.
6. Fully restart *World at War*, select **Multiplayer**, then **Play Online**.

No patched game file or hosts-file change is needed. A fresh connection can
take up to three automatic attempts.

## RPCS3

1. Sign in to RPCN and close *World at War*.
2. Right-click *World at War* in RPCS3 and open its custom configuration.
3. Under **Network**, set **Network Status** to **Connected** and
   **PSN Status** to **RPCN**.
4. Set **DNS** to `67.222.156.250`.
5. Leave **IP/Hosts switches** empty and save the custom configuration.
6. Fully exit and restart RPCS3, then open multiplayer and select
   **Play Online**.

Use a different RPCN account for each player.

## Xenia Netplay

This requires a compatible **Xenia Netplay** build. Standard Xenia builds are
not supported by the setup launcher.

1. Keep `xenia_canary_netplay.exe`, `portable.txt`, and
   `xenia-canary-netplay.config.toml` together. Open Xenia once, then close it.
2. Download this repository and keep its four launcher files together.
3. Run `configure_waw_xenia.bat`.
4. Accept the default server or enter:

   ```text
   http://157.230.65.227:8081/xenia/
   ```

5. Select the Xenia Netplay executable and your WaW multiplayer
   `default_mp.xex`.
6. Run `launch_waw_xenia.bat` whenever you want to play.

The launcher backs up the Xenia configuration before changing its Netplay API
settings. Use the API URL above—not the PS3 DNS address.

## Quick fixes

| Problem | Check |
| --- | --- |
| PS3 shows Error 33 | Confirm the custom DNS is primary, remove any public secondary DNS, and restart the game. |
| Stuck on **Downloading Game Settings** | Restart the game or emulator so it performs a fresh server lookup. |
| Lobby appears but **Getting match quality** never finishes | Confirm PS3 or RPCS3 is using DNS `67.222.156.250`. In RPCS3, clear any old **IP/Hosts switches** and fully restart the emulator. |
| RPCS3 ignores new settings | Fully exit RPCS3; restarting only the game can retain old network results. |
| Xenia setup refuses to run | Close every Xenia process and confirm you selected a portable Xenia Netplay installation. |

Physical Xbox 360 setup is not included because its connection path is not yet figured out.

This repository does not provide game files, emulator builds, online profiles, or title updates.
