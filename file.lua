require('telescope').load_extension('media_files')

require("telescope").setup({
  defaults = {
    preview = {
      mime_hook = function(filepath, bufnr, opts)
        local is_image = function(filepath)
          local image_extensions = { "png", "jpg", "jpeg", "gif" } -- Supported image formats
          local split_path = vim.split(filepath:lower(), ".", { plain = true })
          local extension = split_path[#split_path]
          return vim.tbl_contains(image_extensions, extension)
        end
        if is_image(filepath) then
          local term = vim.api.nvim_open_term(bufnr, {})
          local function send_output(_, data, _)
            for _, d in ipairs(data) do
              vim.api.nvim_chan_send(term, d .. "\r\n")
            end
          end
          vim.fn.jobstart({
            "viu",
            "-w", 
            "40", 
            "-b", 
            filepath, 
          }, {
            on_stdout = send_output,
            stdout_buffered = true,
          })
        else
          require("telescope.previewers.utils").set_preview_message(
            bufnr,
            opts.winid,
            "Binary cannot be previewed"
          )
        end
      end,
    },
  },
})


-- nvim-tre
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  respect_buf_cwd=true,
  view = {
    width = 70,
    side = "right"
  },
  diagnostics={
    enable=true,
    show_on_dirs=true,
    show_on_open_dirs=true,
    debounce_delay=40
  },
  renderer = {
    group_empty = true,
    highlight_diagnostics="all"
  },
  filters ={
    dotfiles = true,
  } ,
  actions = {
    open_file = {
      quit_on_open=true
    }
  },
  update_focused_file = {
    enable = true,
  },
})


