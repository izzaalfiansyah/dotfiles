return {
  {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "silicon",
    main = "nvim-silicon",
    opts = {
      theme = "OneHalfDark",
      background = "#00000000",
      font = "Fira Code",
      pad_horiz = 0,
      pad_vert = 0,
      line_offset = function(args)
        return args.line1
      end,
    },
  },
}
