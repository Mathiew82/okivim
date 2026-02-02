return {
  {
    "nvimdev/dashboard-nvim",
    lazy = false,
    opts = function()
      local function feed(keys)
        return function()
          local k = vim.api.nvim_replace_termcodes(keys, true, false, true)
          vim.schedule(function()
            vim.api.nvim_feedkeys(k, "mt", false)
          end)
        end
      end

      local header = {
        "",
        "",
        "",
        "              oooo         .oo.               .oo.                    ",
        "              oooo         'oo'               'oo'                    ",
        "              oooo                                                    ",
        "  .oooooooo   oooo   -ooo  oooo oooo       oo oooo  oooo.oooooooooooo ",
        ".ooo'    ooo. oooo -ooo    oooo  oooo     oo  oooo  oooo   oooo   oooo",
        ":ooo     :ooo oooooooo     oooo   oooo   oo   oooo  oooo   oooo   oooo",
        "'ooo.    ooo' oooo  oooo   oooo    oooo.oo    oooo  oooo   oooo   oooo",
        "  `ooooooo'   oooo    oooo oooo     oooo'     oooo  oooo   oooo   oooo",
        "",
        "",
        "",
      }

      local opts = {
        theme = "doom",
        hide = {
          statusline = false,
        },
        config = {
          header = header,
          center = {
            { action = feed("<leader>ff"), desc = " Find File", icon = " ", key = "f" },
            { action = "ene | startinsert", desc = " New File", icon = " ", key = "n" },
            { action = feed("<leader>fr"), desc = " Recent Files", icon = " ", key = "r" },
            { action = feed("<leader>fc"), desc = " Config", icon = " ", key = "c" },
            { action = feed("<leader>sls"), desc = " Browse Sessions", icon = "󰙰 ", key = "s" },
            { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit", icon = " ", key = "q" },
          },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }

      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end

      if vim.o.filetype == "lazy" then
        vim.api.nvim_create_autocmd("WinClosed", {
          pattern = tostring(vim.api.nvim_get_current_win()),
          once = true,
          callback = function()
            vim.schedule(function()
              vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
            end)
          end,
        })
      end

      return opts
    end,
  },
}
