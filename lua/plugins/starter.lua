return {
  {
    "echasnovski/mini.starter",
    config = function()
      local starter = require("mini.starter")

      local header = {
        "",
        "",
        " ████ █████ █████ ████ ████  ████ ████  █████████████  ",
        " ███   ███  ███   ███  ███   ███  ███   ███  ███  ███  ",
        " ███   ██████     ███  ███   ███  ███   ███  ███  ███  ",
        " ███   ███  ███   ███   ███ ███   ███   ███  ███  ███  ",
        "█████ ████ █████ █████   █████   █████ █████ ███ █████ ",
        "",
        "",
        "|> Simple and elegant",
        "",
      }

      starter.setup({
        header = table.concat(header, "\n"),

        items = {
          starter.sections.builtin_actions(),
          starter.sections.recent_files(5),
        },

        content_hooks = {
          starter.gen_hook.aligning("center"),
        },

        footer = "",
      })
    end,
  },
}
