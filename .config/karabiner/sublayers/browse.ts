import { HyperKeySublayer, open } from "../utils";

export const browserSubLayer: HyperKeySublayer = {
  t: open("https://twitter.com"),
  // Quarterly "P"lan
  y: open("https://news.ycombinator.com"),
  f: open("https://facebook.com"),
  m: open("https://www.messenger.com"),
  r: open("https://reddit.com"),
};
