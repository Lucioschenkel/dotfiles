-- Groovy / Jenkins pipelines.
--
-- Neovim only maps a bare `Jenkinsfile` to the groovy filetype, so the
-- per-pipeline variants in our repos (Jenkinsfile.streaming, Jenkinsfile.deploy,
-- internals/ci/Jenkinsfile.build, …) get no filetype, highlighting, or LSP.
-- Map every Jenkinsfile* to groovy, then wire up treesitter + groovyls.
vim.filetype.add({
  pattern = {
    ["Jenkinsfile.*"] = "groovy",
  },
})

return {
  -- Syntax highlighting.
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "groovy" } },
  },

  -- Intellisense (optional). groovy-language-server gives completion/hover/goto
  -- on real Groovy (it's generic, so it flags Jenkins' DSL — pipeline, sh,
  -- node, … — as unresolved).
  --
  -- mason builds it from source via Gradle, which fails on JDK 26 (our default).
  -- So auto-install is off: lspconfig only attaches if the `groovy-language-server`
  -- binary already exists, otherwise it's silently skipped. To enable later,
  -- install a compatible JDK (e.g. Temurin 21) and run
  -- `:MasonInstall groovy-language-server` with that JDK on PATH.
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        groovyls = { mason = false },
      },
    },
  },
}
