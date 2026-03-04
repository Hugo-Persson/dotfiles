local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local rep = require("luasnip.extras").rep

-- Math zone detection via vimtex
local function in_mathzone()
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

local function in_text()
  return not in_mathzone()
end

--- Math-mode autosnippet helper.
--- If `nodes` is a string, wraps it in a text node.
local function ms(trig, nodes, opts)
  opts = opts or {}
  local trig_opts = {
    trig = trig,
    snippetType = "autosnippet",
    wordTrig = opts.wordTrig or false,
  }
  if opts.priority then
    trig_opts.priority = opts.priority
  end
  if opts.regTrig then
    trig_opts.regTrig = true
  end
  return s(trig_opts, type(nodes) == "string" and { t(nodes) } or nodes, {
    condition = in_mathzone,
    show_condition = in_mathzone,
  })
end

--- Text-mode autosnippet helper.
local function ts(trig, nodes, opts)
  opts = opts or {}
  local trig_opts = {
    trig = trig,
    snippetType = "autosnippet",
    wordTrig = opts.wordTrig or false,
  }
  if opts.priority then
    trig_opts.priority = opts.priority
  end
  return s(trig_opts, type(nodes) == "string" and { t(nodes) } or nodes, {
    condition = in_text,
    show_condition = in_text,
  })
end

--- Math-mode regex autosnippet with capture-based replacement.
local function mrs(trig, fn, opts)
  opts = opts or {}
  return s({
    trig = trig,
    regTrig = true,
    snippetType = "autosnippet",
    wordTrig = false,
    priority = opts.priority or 1000,
  }, { f(fn, {}) }, {
    condition = in_mathzone,
    show_condition = in_mathzone,
  })
end

--- Math-mode manual snippet (needs Tab/completion to expand).
local function mm(trig, nodes, opts)
  opts = opts or {}
  local trig_opts = {
    trig = trig,
    wordTrig = opts.wordTrig or false,
  }
  if opts.priority then
    trig_opts.priority = opts.priority
  end
  if opts.regTrig then
    trig_opts.regTrig = true
  end
  return s(trig_opts, type(nodes) == "string" and { t(nodes) } or nodes, {
    condition = in_mathzone,
    show_condition = in_mathzone,
  })
end

ls.add_snippets("tex", {

  -- ===================== MATH MODE ENTRY =====================

  -- mk: inline math (text mode)
  ts("mk", { t("$"), i(1), t("$") }),

  -- dm: display math (text mode)
  ts("dm", { t({ "\\[", "\t" }), i(1), t({ "", "\\]" }) }, { wordTrig = true }),

  -- beg: generic environment (math mode)
  ms("beg", { t("\\begin{"), i(1), t({ "}", "\t" }), i(2), t({ "", "\\end{" }), rep(1), t("}") }),

  -- ===================== GREEK LETTERS =====================

  ms("@a", "\\alpha"),
  ms("@b", "\\beta"),
  ms("@g", "\\gamma"),
  ms("@G", "\\Gamma"),
  ms("@d", "\\delta"),
  ms("@D", "\\Delta"),
  ms("@e", "\\epsilon"),
  ms(":e", "\\varepsilon"),
  ms("@z", "\\zeta"),
  ms("@t", "\\theta"),
  ms("@T", "\\Theta"),
  ms(":t", "\\vartheta"),
  ms("@i", "\\iota"),
  ms("@k", "\\kappa"),
  ms("@l", "\\lambda"),
  ms("@L", "\\Lambda"),
  ms("@s", "\\sigma"),
  ms("@S", "\\Sigma"),
  ms("@u", "\\upsilon"),
  ms("@U", "\\Upsilon"),
  ms("@o", "\\omega"),
  ms("@O", "\\Omega"),
  ms("ome", "\\omega"),
  ms("Ome", "\\Omega"),

  -- ===================== TEXT ENVIRONMENT =====================

  ms("text", { t("\\text{"), i(1), t("}"), i(0) }),
  ms('"', { t("\\text{"), i(1), t("}"), i(0) }),

  -- ===================== BASIC OPERATIONS =====================

  ms("sr", "^{2}"),
  ms("cb", "^{3}"),
  ms("rd", { t("^{"), i(1), t("}"), i(0) }),
  ms("_", { t("_{"), i(1), t("}"), i(0) }),
  ms("sts", { t("_\\text{"), i(1), t("}") }),
  ms("sq", { t("\\sqrt{ "), i(1), t(" }"), i(0) }),
  ms("//", { t("\\frac{"), i(1), t("}{"), i(2), t("}"), i(0) }),
  ms("ee", { t("e^{ "), i(1), t(" }"), i(0) }),
  ms("invs", "^{-1}"),
  ms("conj", "^{*}"),
  ms("Re", "\\mathrm{Re}"),
  ms("Im", "\\mathrm{Im}"),
  ms("bf", { t("\\mathbf{"), i(1), t("}") }),
  ms("rm", { t("\\mathrm{"), i(1), t("}"), i(0) }),

  -- ===================== LINEAR ALGEBRA =====================

  ms("trace", "\\mathrm{Tr}"),

  -- ===================== DECORATIONS (standalone) =====================

  ms("hat", { t("\\hat{"), i(1), t("}"), i(0) }, { priority = 999 }),
  ms("bar", { t("\\bar{"), i(1), t("}"), i(0) }, { priority = 999 }),
  ms("dot", { t("\\dot{"), i(1), t("}"), i(0) }, { priority = 999 }),
  ms("ddot", { t("\\ddot{"), i(1), t("}"), i(0) }),
  ms("cdot", "\\cdot"),
  ms("tilde", { t("\\tilde{"), i(1), t("}"), i(0) }),
  ms("und", { t("\\underline{"), i(1), t("}"), i(0) }),
  ms("vec", { t("\\vec{"), i(1), t("}"), i(0) }),

  -- ===================== DECORATIONS (regex: letter prefix) =====================
  -- xhat → \hat{x}, xbar → \bar{x}, etc.

  mrs("([%a])hat", function(_, snip)
    return "\\hat{" .. snip.captures[1] .. "}"
  end),
  mrs("([%a])bar", function(_, snip)
    return "\\bar{" .. snip.captures[1] .. "}"
  end),
  mrs("([%a])dot", function(_, snip)
    return "\\dot{" .. snip.captures[1] .. "}"
  end, { priority = 999 }),
  mrs("([%a])ddot", function(_, snip)
    return "\\ddot{" .. snip.captures[1] .. "}"
  end, { priority = 1001 }),
  mrs("([%a])tilde", function(_, snip)
    return "\\tilde{" .. snip.captures[1] .. "}"
  end),
  mrs("([%a])und", function(_, snip)
    return "\\underline{" .. snip.captures[1] .. "}"
  end),
  mrs("([%a])vec", function(_, snip)
    return "\\vec{" .. snip.captures[1] .. "}"
  end),
  mrs("([%a]),%..", function(_, snip)
    return "\\mathbf{" .. snip.captures[1] .. "}"
  end),
  mrs("([%a])%.,", function(_, snip)
    return "\\mathbf{" .. snip.captures[1] .. "}"
  end),

  -- ===================== AUTO SUBSCRIPT =====================
  -- x2 → x_{2}
  mrs("([%a])(%d)", function(_, snip)
    return snip.captures[1] .. "_{" .. snip.captures[2] .. "}"
  end, { priority = 999 }),

  -- x_12 → x_{12}
  mrs("([%a])_(%d%d)", function(_, snip)
    return snip.captures[1] .. "_{" .. snip.captures[2] .. "}"
  end),

  -- \hat{x}2 → \hat{x}_{2}
  mrs("\\hat{([%a])}(%d)", function(_, snip)
    return "\\hat{" .. snip.captures[1] .. "}_{" .. snip.captures[2] .. "}"
  end),
  mrs("\\vec{([%a])}(%d)", function(_, snip)
    return "\\vec{" .. snip.captures[1] .. "}_{" .. snip.captures[2] .. "}"
  end),
  mrs("\\mathbf{([%a])}(%d)", function(_, snip)
    return "\\mathbf{" .. snip.captures[1] .. "}_{" .. snip.captures[2] .. "}"
  end),

  -- ===================== NAMED SUBSCRIPTS =====================

  ms("xnn", "x_{n}"),
  ms("\\xii", "x_{i}", { priority = 1001 }),
  ms("xjj", "x_{j}"),
  ms("xp1", "x_{n+1}"),
  ms("ynn", "y_{n}"),
  ms("yii", "y_{i}"),
  ms("yjj", "y_{j}"),

  -- ===================== SYMBOLS =====================

  ms("ooo", "\\infty"),
  ms("sum", "\\sum"),
  ms("prod", "\\prod"),
  ms("lim", { t("\\lim_{ "), i(1, "n"), t(" \\to "), i(2, "\\infty"), t(" } "), i(0) }),
  ms("+-", "\\pm"),
  ms("-+", "\\mp"),
  ms("...", "\\dots"),
  ms("nabl", "\\nabla"),
  ms("del", "\\nabla"),
  ms("xx", "\\times"),
  ms("**", "\\cdot"),
  ms("para", "\\parallel"),

  -- Comparison
  ms("===", "\\equiv"),
  ms("!=", "\\neq"),
  ms(">=", "\\geq"),
  ms("<=", "\\leq"),
  ms(">>", "\\gg"),
  ms("<<", "\\ll"),
  ms("simm", "\\sim"),
  ms("sim=", "\\simeq"),
  ms("prop", "\\propto"),

  -- Arrows
  ms("<->", "\\leftrightarrow "),
  ms("->", "\\to"),
  ms("!>", "\\mapsto"),
  ms("=>", "\\implies"),
  ms("=<", "\\impliedby"),

  -- Set theory
  ms("and", "\\cap"),
  ms("orr", "\\cup"),
  ms("inn", "\\in"),
  ms("notin", "\\not\\in"),
  ms("\\\\\\", "\\setminus"),
  ms("sub=", "\\subseteq"),
  ms("sup=", "\\supseteq"),
  ms("eset", "\\emptyset"),
  ms("set", { t("\\{ "), i(1), t(" \\}"), i(0) }),
  ms("exists", "\\exists"),

  -- Calligraphic / Blackboard
  ms("LL", "\\mathcal{L}"),
  ms("HH", "\\mathcal{H}"),
  ms("CC", "\\mathbb{C}"),
  ms("RR", "\\mathbb{R}"),
  ms("ZZ", "\\mathbb{Z}"),
  ms("NN", "\\mathbb{N}"),

  -- ===================== DERIVATIVES & INTEGRALS =====================

  mm("par", { t("\\frac{ \\partial "), i(1, "y"), t(" }{ \\partial "), i(2, "x"), t(" } "), i(0) }),

  -- pa<x><y> → \frac{\partial x}{\partial y}
  mrs("pa([%a])([%a])", function(_, snip)
    return "\\frac{ \\partial " .. snip.captures[1] .. " }{ \\partial " .. snip.captures[2] .. " } "
  end),

  ms("ddt", "\\frac{d}{dt} "),

  ms("dint", { t("\\int_{"), i(1, "0"), t("}^{"), i(2, "1"), t("} "), i(3), t(" \\, d"), i(4, "x"), t(" "), i(0) }),
  ms("oint", "\\oint"),
  ms("iint", "\\iint"),
  ms("iiint", "\\iiint"),
  ms("oinf", { t("\\int_{0}^{\\infty} "), i(1), t(" \\, d"), i(2, "x"), t(" "), i(0) }),
  ms("infi", { t("\\int_{-\\infty}^{\\infty} "), i(1), t(" \\, d"), i(2, "x"), t(" "), i(0) }),

  -- Expanded \sum (manual trigger)
  mm("\\sum", { t("\\sum_{"), i(1, "i"), t("="), i(2, "1"), t("}^{"), i(3, "N"), t("} "), i(0) }),
  mm("\\prod", { t("\\prod_{"), i(1, "i"), t("="), i(2, "1"), t("}^{"), i(3, "N"), t("} "), i(0) }),
  mm("\\int", { t("\\int "), i(1), t(" \\, d"), i(2, "x"), t(" "), i(0) }),

  -- ===================== TRIG FUNCTIONS =====================
  -- Using wordTrig=true to avoid conflicts with longer commands

  ms("arcsin", "\\arcsin", { wordTrig = true, priority = 1001 }),
  ms("arccos", "\\arccos", { wordTrig = true, priority = 1001 }),
  ms("arctan", "\\arctan", { wordTrig = true, priority = 1001 }),
  ms("sin", "\\sin", { wordTrig = true }),
  ms("cos", "\\cos", { wordTrig = true }),
  ms("tan", "\\tan", { wordTrig = true }),
  ms("csc", "\\csc", { wordTrig = true }),
  ms("sec", "\\sec", { wordTrig = true }),
  ms("cot", "\\cot", { wordTrig = true }),
  ms("exp", "\\exp", { wordTrig = true }),
  ms("log", "\\log", { wordTrig = true }),
  ms("ln", "\\ln", { wordTrig = true }),
  ms("det", "\\det", { wordTrig = true }),

  -- ===================== PHYSICS =====================

  ms("kbt", "k_{B}T"),
  ms("msun", "M_{\\odot}"),

  -- ===================== QUANTUM MECHANICS =====================

  ms("dag", "^{\\dagger}"),
  ms("o+", "\\oplus "),
  ms("ox", "\\otimes "),
  ms("bra", { t("\\bra{"), i(1), t("} "), i(0) }),
  ms("ket", { t("\\ket{"), i(1), t("} "), i(0) }),
  ms("brk", { t("\\braket{ "), i(1), t(" | "), i(2), t(" } "), i(0) }),
  ms("outer", { t("\\ket{"), i(1, "\\psi"), t("} \\bra{"), rep(1), t("} "), i(0) }),

  -- ===================== CHEMISTRY =====================

  ms("pu", { t("\\pu{ "), i(1), t(" }") }),
  ms("cee", { t("\\ce{ "), i(1), t(" }") }),
  ms("he4", "{}^{4}_{2}He "),
  ms("he3", "{}^{3}_{2}He "),
  ms("iso", { t("{}^{"), i(1, "4"), t("}_{"), i(2, "2"), t("}"), i(3, "He") }),

  -- ===================== ENVIRONMENTS =====================
  -- Math-mode versions (with newlines)

  ms("pmat", { t({ "\\begin{pmatrix}", "\t" }), i(1), t({ "", "\\end{pmatrix}" }) }),
  ms("bmat", { t({ "\\begin{bmatrix}", "\t" }), i(1), t({ "", "\\end{bmatrix}" }) }),
  ms("Bmat", { t({ "\\begin{Bmatrix}", "\t" }), i(1), t({ "", "\\end{Bmatrix}" }) }),
  ms("vmat", { t({ "\\begin{vmatrix}", "\t" }), i(1), t({ "", "\\end{vmatrix}" }) }),
  ms("Vmat", { t({ "\\begin{Vmatrix}", "\t" }), i(1), t({ "", "\\end{Vmatrix}" }) }),
  ms("matrix", { t({ "\\begin{matrix}", "\t" }), i(1), t({ "", "\\end{matrix}" }) }),
  ms("cases", { t({ "\\begin{cases}", "\t" }), i(1), t({ "", "\\end{cases}" }) }),
  ms("align", { t({ "\\begin{align}", "\t" }), i(1), t({ "", "\\end{align}" }) }),
  ms("array", { t({ "\\begin{array}", "\t" }), i(1), t({ "", "\\end{array}" }) }),

  -- Text-mode versions (inline, no newlines)
  ts("pmat", { t("\\begin{pmatrix}"), i(1), t("\\end{pmatrix}") }),
  ts("bmat", { t("\\begin{bmatrix}"), i(1), t("\\end{bmatrix}") }),
  ts("Bmat", { t("\\begin{Bmatrix}"), i(1), t("\\end{Bmatrix}") }),
  ts("vmat", { t("\\begin{vmatrix}"), i(1), t("\\end{vmatrix}") }),
  ts("Vmat", { t("\\begin{Vmatrix}"), i(1), t("\\end{Vmatrix}") }),
  ts("matrix", { t("\\begin{matrix}"), i(1), t("\\end{matrix}") }),

  -- ===================== BRACKETS =====================

  ms("avg", { t("\\langle "), i(1), t(" \\rangle "), i(0) }),
  ms("norm", { t("\\lvert "), i(1), t(" \\rvert "), i(0) }, { priority = 1001 }),
  ms("Norm", { t("\\lVert "), i(1), t(" \\rVert "), i(0) }, { priority = 1001 }),
  ms("ceil", { t("\\lceil "), i(1), t(" \\rceil "), i(0) }),
  ms("floor", { t("\\lfloor "), i(1), t(" \\rfloor "), i(0) }),
  ms("mod", { t("|"), i(1), t("|"), i(0) }),
  ms("(", { t("("), i(1), t(")"), i(0) }),
  ms("{", { t("{"), i(1), t("}"), i(0) }),
  ms("[", { t("["), i(1), t("]"), i(0) }),
  ms("lr(", { t("\\left( "), i(1), t(" \\right) "), i(0) }),
  ms("lr{", { t("\\left\\{ "), i(1), t(" \\right\\} "), i(0) }),
  ms("lr[", { t("\\left[ "), i(1), t(" \\right] "), i(0) }),
  ms("lr|", { t("\\left| "), i(1), t(" \\right| "), i(0) }),
  ms("lra", { t("\\left< "), i(1), t(" \\right> "), i(0) }),

  -- ===================== SPECIAL =====================

  -- Taylor expansion
  ms("tayl", {
    i(1, "f"),
    t("("),
    i(2, "x"),
    t(" + "),
    i(3, "h"),
    t(") = "),
    rep(1),
    t("("),
    rep(2),
    t(") + "),
    rep(1),
    t("'("),
    rep(2),
    t(")"),
    rep(3),
    t(" + "),
    rep(1),
    t("''("),
    rep(2),
    t(") \\frac{"),
    rep(3),
    t("^{2}}{2!} + \\dots"),
    i(0),
  }),

  -- Identity matrix: iden3 → 3x3 identity
  s({
    trig = "iden(%d)",
    regTrig = true,
    snippetType = "autosnippet",
    wordTrig = false,
  }, {
    d(1, function(_, snip)
      local n = tonumber(snip.captures[1])
      local rows = {}
      for j = 1, n do
        local row = {}
        for k = 1, n do
          table.insert(row, j == k and "1" or "0")
        end
        table.insert(rows, table.concat(row, " & "))
      end
      local lines = { "\\begin{pmatrix}" }
      for idx, r in ipairs(rows) do
        table.insert(lines, r .. (idx < n and " \\\\" or ""))
      end
      table.insert(lines, "\\end{pmatrix}")
      return sn(nil, { t(lines) })
    end),
  }, {
    condition = in_mathzone,
    show_condition = in_mathzone,
  }),
})
