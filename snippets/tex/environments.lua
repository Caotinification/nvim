return {
  s({ -- display math mode
    trig = '\\begin{(.+)}',
    snippetType = 'autosnippet',
    dscr = 'Expands environments.',
    regTrig = true,
  }, {
    f(function(_, snip)
      return '\\begin{' .. snip.captures[1] .. '}'
    end),
    --t({"["}),
    --i(1),
    --t({"]"}),
    i(1),
    t { '', '\\end{' },
    f(function(_, snip)
      return snip.captures[1]
    end),
    t '}',
  }),
  s({ -- inline math mode
    trig = '\\(',
    snippetType = 'autosnippet',
    dscr = 'Expands into inline math-mode.',
  }, {
    t '\\(',
    i(1),
    t '\\)',
    i(2),
  }),
  s({
    trig = '\\[',
    snippetType = 'autosnippet',
    dscr = 'Expands into display math-mode.',
  }, {
    t { '', '' }, -- Forces a newline (empty line)
    t '\\[',
    t { '', '' },
    i(1),
    t { '', '' },
    t '\\]',
    i(2),
  }),
}
