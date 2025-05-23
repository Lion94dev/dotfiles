return {
  "okuuva/auto-save.nvim",
  opts = {

    trigger_events = {
      defer_save = { "TextChanged", "InsertLeave" },
    },
    debounce_delay = 2000,

    condition = function(buf)
      if vim.fn.getbufvar(buf, "&filetype") == "harpoon" then
        return false
      end
      return true
    end,
  },
}
