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
	spacebar: app("ChatGPT"),
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

	// v = "moVe" which isn't "m" because we want it to be on the left hand
	// so that hjkl work like they do in vim
	v: moveSubLayer,

	// c = Musi*c* which isn't "m" because we want it to be on the left hand
	c: codeSubLayer,

	// r = "Raycast"
	r: {
		c: open("raycast://extensions/thomas/color-picker/pick-color"),
		n: open("raycast://script-commands/dismiss-notifications"),
		l: open(
			"raycast://extensions/stellate/mxstbr-commands/create-mxs-is-shortlink",
		),
		e: open("raycast://extensions/raycast/emoji-symbols/search-emoji-symbols"),
		p: open("raycast://extensions/raycast/raycast/confetti"),
		a: open("raycast://extensions/raycast/raycast-ai/ai-chat"),
		s: open("raycast://extensions/peduarte/silent-mention/index"),
		h: open("raycast://extensions/Alex_/http-status-codes/index"),
		1: open(
			"raycast://extensions/VladCuciureanu/toothpick/connect-favorite-device-1",
		),
		2: open(
			"raycast://extensions/VladCuciureanu/toothpick/connect-favorite-device-2",
		),
	},
};

export const baseCheatSheet: string = `Hyper Key Cheat Sheet:
${Object.entries(sublayers)
	.map(([key, command]) => `- ${key}`)
	.join("\n")}`;
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
					{
						set_notification_message: {
							text: baseCheatSheet,
							id: "hyper_cheat_sheet",
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
					{
						set_notification_message: {
							text: "",
							id: "hyper_cheat_sheet",
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
			devices: [
				{
					identifiers: {
						is_keyboard: true,
						is_pointing_device: true,
						product_id: 545,
						vendor_id: 13364,
					},
					ignore: false,
				},
			],
		},
		null,
		2,
	),
);
