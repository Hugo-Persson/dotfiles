import fs from "fs";

import { browserSubLayer } from "./sublayers/browse";
import { codeSubLayer } from "./sublayers/codeSubLayer";
import { moveSubLayer } from "./sublayers/moveSubLayer";
import { systemSublayer } from "./sublayers/system";
import { windowSubLayer } from "./sublayers/window";
import { KarabinerRules, KeyCode } from "./types";
import {
  LayerCommand,
  SubLayerConfig,
  app,
  appleShortcut,
  createHyperSubLayers,
  open,
  rectangle,
  shell,
} from "./utils";

function propegateHyperKey(key_code: KeyCode): LayerCommand {
  return {
    description: "Propegate",
    to: [
      {
        key_code: key_code,
        modifiers: [
          "left_control",
          "left_option",
          "left_shift",
          "left_command",
        ],
      },
    ],
  };
}
const propegateKeyCodes = [
  "1",
  "2",
  "3",
  "4",
  "5",
  "n",
  "quote", // same as 'ä'
  "x",
  "t",
  "f",
];

let sublayers: SubLayerConfig = {
  spacebar: {
    description: "Focus Zen Browser and send CMD+2",
    to: app("Zen Browser").to,
    to_delayed_action: {
      to_if_invoked: [{
        key_code: "2",
        modifiers: ["left_command"],
      }]
    }


  },
  q: {
    to: [
      {
        key_code: "caps_lock",
      },
    ],
  },
  p: open("raycast://extensions/jomifepe/bitwarden/search"),
  g: open("raycast://extensions/jomifepe/bitwarden/generate-password"),
  b: browserSubLayer,
  o: {
    b: app("Zen Browser"),
    d: app("Legcord"),
    t: app("WezTerm"),
    f: app("Finder"),
    s: app("Spotify"),
    w: app("WezTerm"),
    x: app("Xcode"),
    m: app("Mail"),
    a: open("raycast://script-commands/open-last-claude-code"),
    c: open("raycast://extensions/thomas/visual-studio-code/index"),
  },
  a: {
    description: "AI Chat",
    to: [
      {
        key_code: "a",
        modifiers: ["left_shift", "left_control"],
      },
    ],
  },
  comma: appleShortcut("Create Reminder"),
  // w = "Window" via rectangle.app
  w: windowSubLayer,

  // s = "System"
  s: systemSublayer,
  v: open("raycast://extensions/hugo/latex-ocr/extract-markdown"),

  // v = "moVe" which isn't "m" because we want it to be on the left hand
  // so that hjkl work like they do in vim
  //v: moveSubLayer,

  // c = Musi*c* which isn't "m" because we want it to be on the left hand
  c: codeSubLayer,

  // r = "Raycast"
  r: {
    to: [
      {
        key_code: "r",
        modifiers: ["left_control"],
      },
    ],
  },
};

const propegateSublayers = propegateKeyCodes.reduce(
  (acc, key) => ({
    ...acc,
    [key]: propegateHyperKey(key as KeyCode),
  }),
  {},
);
sublayers = {
  ...sublayers,
  ...propegateSublayers,
};

const rules: KarabinerRules[] = [
  // Define the Hyper key itself
  {
    description: "Hyper Key (⌃⌥⇧⌘)",
    manipulators: [
      {
        description: "Caps Lock -> Hyper Key",
        from: {
          key_code: "caps_lock",
          modifiers: {
            optional: ["any"],
          },
        },
        to: [
          {
            set_variable: {
              name: "hyper",
              value: 1,
            },
          },
        ],
        to_after_key_up: [
          {
            set_variable: {
              name: "hyper",
              value: 0,
            },
          },
        ],
        to_if_alone: [
          {
            key_code: "escape",
          },
        ],
        type: "basic",
      },
      //      {
      //        type: "basic",
      //        description: "Disable CMD + Tab to force Hyper Key usage",
      //        from: {
      //          key_code: "tab",
      //          modifiers: {
      //            mandatory: ["left_command"],
      //          },
      //        },
      //        to: [
      //          {
      //            key_code: "tab",
      //          },
      //        ],
      //      },
    ],
  },
  ...createHyperSubLayers(sublayers),
];

fs.writeFileSync(
  "karabiner.json",
  JSON.stringify(
    {
      global: {
        show_in_menu_bar: false,
      },
      profiles: [
        {
          name: "Default",
          complex_modifications: {
            rules,
          },
          virtual_hid_keyboard: { keyboard_type_v2: "iso" },
        },
      ],
      "devices": [
        {
          "identifiers": {
            "is_keyboard": true,
            "is_pointing_device": true,
            "product_id": 545,
            "vendor_id": 13364
          },
          "ignore": false
        }
      ],
      "name": "Default",
      "virtual_hid_keyboard": { "keyboard_type_v2": "ansii" }
    },
    null,
    2,
  ),
);
