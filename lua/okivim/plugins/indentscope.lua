return {
  {
    "echasnovski/mini.indentscope",
    version = "*",
    config = function()
      local indentscope = require("mini.indentscope")

      indentscope.setup({
        draw = {
          delay = 0,
          animation = indentscope.gen_animation.quadratic({
            easing = "out",
            duration = 60,
            unit = "total",
          }),
        },
        symbol = "│",
        options = { try_as_border = true },
      })
    end,
  },
}
