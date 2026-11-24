return {
  "avante-corp/avante.nvim",
  build = ":AvanteBuild source=false",
  dependencies = {
    { "ColinKennedy/mega.cmdparse", dependencies = { "ColinKennedy/mega.logging" } },
  },
  opts = {
    provider = "codex",
    acp_providers = {
      codex = {
        command = "npx",
        args = { "--yes", "@agentclientprotocol/codex-acp" },
      },
      ["claude-code"] = {
        command = "npx",
        args = { "--yes", "@agentclientprotocol/claude-agent-acp" },
        env = {
          ACP_PERMISSION_MODE = "default",
        },
      },
      ["gemini-cli"] = {
        command = "gemini",
        args = { "--acp" },
      },
    },
  },
}
