# notes.nvim

Minimal daily notes plugin for Neovim. Opens markdown files by date in a dedicated directory.

## Install

lazy.nvim:

```lua
{
  'k0ndratov/notes.nvim',
  opts = {},
}
```

## Usage

- `:Note` — open today's note (`2026-02-18.md`)
- `:Note name` — open note by name (`name.md`)
- `<leader>no` — keymap for daily note

## Config

Default values:

```lua
{
  dir = '~/notes',          -- notes directory
  date_format = '%Y-%m-%d', -- strftime format for daily notes
  open_cmd = 'tabnew',      -- how to open (edit, tabnew, vsplit, etc.)
}
```
