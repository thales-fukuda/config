-- Define a Lua function to open a tmux pane in the specified direction
function Open_tmux(direction)
	-- Get the directory from which Neovim was launched
	local current_dir = vim.fn.getcwd()

	-- Construct the command to send to the terminal
	local command = 'tmux split-window'

	-- Add direction argument if specified
	if direction == 'left' then
		command = command .. ' -h'
	elseif direction == 'right' then
		command = command .. ' -h'
	elseif direction == 'top' then
		command = command .. ' -c ' .. current_dir
	elseif direction == 'bottom' then
		command = command .. ' -c ' .. current_dir
	else
		print('Invalid direction')
		return
	end

	command = command .. ' && tmux send-keys -t . \'vim .\' Enter'


	-- Send the command to the terminal
	vim.fn.jobstart(command, {
		on_exit = function(_, _)
			-- Refresh the screen after the command completes
			vim.cmd('redraw!')
		end
	})

end

-- Map key combinations to call the function with different directions
vim.api.nvim_set_keymap('n', '<leader>h', '<cmd>lua Open_tmux("left")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', '<cmd>lua Open_tmux("right")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<cmd>lua Open_tmux("top")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>j', '<cmd>lua Open_tmux("bottom")<CR>', { noremap = true, silent = true })

-- Define a Lua function to open the Neovim configuration file in a new tmux window
function Open_tmux_nvim_config()
    -- Get the directory of the Neovim configuration file
    local nvim_config_dir = vim.fn.stdpath('config')

    -- Construct the command to send to the terminal
    local command = 'tmux new-window -c ' .. nvim_config_dir .. ' && tmux send-keys -t . \'nvim ' .. nvim_config_dir .. '\' Enter'

    -- Send the command to the terminal
    vim.fn.jobstart(command, {
        on_exit = function(_, _)
            -- Refresh the screen after the command completes
            vim.cmd('redraw!')
        end
    })
end

-- Map a key combination to call the function to open Neovim config in a new tmux window
vim.api.nvim_set_keymap('n', '<leader>tc', '<cmd>lua Open_tmux_nvim_config()<CR>', { noremap = true, silent = true })
