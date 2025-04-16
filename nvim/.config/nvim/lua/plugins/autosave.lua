return {
  "okuuva/auto-save.nvim",
  opts = {

    condition = function(buf)
      if vim.fn.getbufvar(buf, "&filetype") == "harpoon" then
        return false
      end
      return true
    end,

    execution_message = {
      message = function() -- message to print on save
        return ""
      end,
    },
  },
}
