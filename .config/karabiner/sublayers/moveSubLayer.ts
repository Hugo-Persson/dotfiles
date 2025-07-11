import { HyperKeySublayer, open } from "../utils";

export const moveSubLayer: HyperKeySublayer = {
	h: {
		to: [{ key_code: "left_arrow" }],
	},
	j: {
		to: [{ key_code: "down_arrow" }],
	},
	k: {
		to: [{ key_code: "up_arrow" }],
	},
	l: {
		to: [{ key_code: "right_arrow" }],
	},
	// Magicmove via homerow.app
	m: {
		to: [{ key_code: "f", modifiers: ["right_control"] }],
		// TODO: Trigger Vim Easymotion when VSCode is focused
	},
	// Scroll mode via homerow.app
	s: {
		to: [{ key_code: "j", modifiers: ["right_control"] }],
	},
	d: {
		to: [{ key_code: "d", modifiers: ["right_shift", "right_command"] }],
	},
	u: {
		to: [{ key_code: "page_down" }],
	},
	i: {
		to: [{ key_code: "page_up" }],
	},
};
