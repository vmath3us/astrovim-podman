FROM alpine:edge
RUN sh -uelic 'apk add --update bash git lua nodejs npm lazygit bottom python3 go neovim ripgrep alpine-sdk --update && git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim'
ENTRYPOINT ["nvim"]
