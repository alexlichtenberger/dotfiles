return {
  "NvChad/nvterm",
  config = function()
    require("nvterm").setup()

    vim.keymap.set("n", "<A-t><A-t>", function() require("nvterm.terminal").toggle('float') end,
      { desc = "[T]erminal Toggle [F]loat" })
    vim.keymap.set("n", "<A-t>f", function() require("nvterm.terminal").toggle('float') end,
      { desc = "[T]erminal Toggle [F]loat" })
    vim.keymap.set("t", "<A-t>f", function() require("nvterm.terminal").toggle('float') end,
      { desc = "[T]erminal Toggle [F]loat" })
    vim.keymap.set("t", "<esc><esc>", function() require("nvterm.terminal").toggle('float') end,
      { desc = "[T]erminal Toggle [F]loat" })
    vim.keymap.set("n", "<A-t>h", function() require("nvterm.terminal").toggle('horizontal') end,
      { desc = "[T]erminal Toggle [H]orizontal" })
    vim.keymap.set("t", "<A-t>h", function() require("nvterm.terminal").toggle('horizontal') end,
      { desc = "[T]erminal Toggle [H]orizontal" })
    vim.keymap.set("n", "<A-t>v", function() require("nvterm.terminal").toggle('vertical') end,
      { desc = "[T]erminal Toggle [V]ertical" })
    vim.keymap.set("t", "<A-t>v", function() require("nvterm.terminal").toggle('vertical') end,
      { desc = "[T]erminal Toggle [V]ertical" })
    vim.keymap.set("n", "<A-t>nf", function() require("nvterm.terminal").new('float') end,
      { desc = "[T]erminal [N]ew [F]loat" })
    vim.keymap.set("n", "<A-t>nn", function() require("nvterm.terminal").new('float') end,
      { desc = "[T]erminal [N]ew [F]loat" })
    vim.keymap.set("n", "<A-t>nh", function() require("nvterm.terminal").new('horizontal') end,
      { desc = "[T]erminal [N]ew [H]orizontal" })
    vim.keymap.set("n", "<A-t>nv", function() require("nvterm.terminal").new('vertical') end,
      { desc = "[T]erminal [N]ew [V]ertical" })
    vim.keymap.set("n", "<A-t>ef", function() require("nvterm.terminal").send(vim.fn.input('Execute:'), 'float') end,
      { desc = "[T]erminal [E]xecute [F]loat" })
    vim.keymap.set("n", "<A-t>ee", function() require("nvterm.terminal").send(vim.fn.input('Execute:'), 'float') end,
      { desc = "[T]erminal [E]xecute [F]loat" })
    vim.keymap.set("n", "<A-t>eh", function() require("nvterm.terminal").send(vim.fn.input('Execute:'), 'horizontal') end,
      { desc = "[T]erminal [E]xecute [H]orizontal" })
    vim.keymap.set("n", "<A-t>ev", function() require("nvterm.terminal").send(vim.fn.input('Execute:'), 'vertical') end,
      { desc = "[T]erminal [E]xecute [V]ertical" })
  end
}
