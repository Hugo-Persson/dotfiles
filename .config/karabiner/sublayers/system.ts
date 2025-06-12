import { HyperKeySublayer, open } from "../utils";

export const systemSublayer: HyperKeySublayer = {
  e: {
    ...open("raycast://extensions/raycast/emoji-symbols/search-emoji-symbols"),
    description: "Search Emoji & Symbols",
  },
  u: {
    description: "Volume Up",
    to: [
      {
        key_code: "volume_increment",
      },
    ],
  },
  j: {
    description: "Volume Down",
    to: [
      {
        key_code: "volume_decrement",
      },
    ],
  },
  i: {
    description: "Mute Volume",
    to: [
      {
        key_code: "display_brightness_increment",
      },
    ],
  },
  k: {
    description: "Decrease Brightness",
    to: [
      {
        key_code: "display_brightness_decrement",
      },
    ],
  },
  l: {
    description: "Lock Screen",
    to: [
      {
        key_code: "q",
        modifiers: ["right_control", "right_command"],
      },
    ],
  },
  p: {
    description: "Play/Pause Music",
    to: [
      {
        key_code: "play_or_pause",
      },
    ],
  },
  semicolon: {
    description: "Mute Microphone",
    to: [
      {
        key_code: "fastforward",
      },
    ],
  },
  // e: open(
  //   `raycast://extensions/thomas/elgato-key-light/toggle?launchType=background`
  // ),
  // "D"o not disturb toggle
  d: {
    ...open(
      `raycast://extensions/yakitrak/do-not-disturb/toggle?launchType=background`
    ),
    description: "Do Not Disturb Toggle",
  },
  // "T"heme
  t: {
    ...open(`raycast://extensions/raycast/system/toggle-system-appearance`),
    description: "Toggle System Appearance",
  },
  c: {
    ...open("raycast://extensions/raycast/system/open-camera"),
    description: "Open Camera",
  },
};
