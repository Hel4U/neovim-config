local config_setup, config = pcall(require, "dap-go")
if not config_setup then
	return
end

config.setup({
	{
		type = "go",
		name = "Attach remote",
		mode = "remote",
		request = "attach",
	},
})
