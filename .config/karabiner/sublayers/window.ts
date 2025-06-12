import { HyperKeySublayer, open } from "../utils";

export const windowSubLayer: HyperKeySublayer = {
	semicolon: {
		description: "Window: Hide",
		to: [
			{
				key_code: "h",
				modifiers: ["right_command"],
			},
		],
	},
	u: {
		description: "Window: Previous Tab",
		to: [
			{
				key_code: "tab",
				modifiers: ["right_control", "right_shift"],
			},
		],
	},
	i: {
		description: "Window: Next Tab",
		to: [
			{
				key_code: "tab",
				modifiers: ["right_control"],
			},
		],
	},
	h: {
		description: "Increase Window Size Left",
		to: [
			{
				shell_command: `aerospace resize width +10`,
			},
		],
	},
	b: {
		description: "Window: Back",
		to: [
			{
				key_code: "left_arrow",
				modifiers: ["right_command"],
			},
		],
	},
	f: {
		description: "Window: Forward",
		to: [
			{
				key_code: "right_arrow",
				modifiers: ["right_command"],
			},
		],
	},
};
