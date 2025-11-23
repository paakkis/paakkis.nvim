return {
  'nvim-java/nvim-java',
  config = false,
  dependencies = {
    {
      'neovim/nvim-lspconfig',
      opts = {
        servers = {
          jdtls = {
            settings = {
              java = {
                configuration = {
                  runtimes = {
                    {
                      name = 'JavaSE-21',
                      path = '/usr/lib/jvm/java-21-openjdk-amd64',
                      default = true,
                    },
                  },
                },
              },
            },
          },
        },
        setup = {
          jdtls = function()
            require('java').setup {
              -- root_markers = {
              --   "settings.gradle",
              --   "settings.gradle.kts",
              --   "pom.xml",
              --   "build.gradle",
              --   "mvnw",
              --   "gradlew",
              --   "build.gradle.kts",
              -- },
            }
          end,
        },
      },
    },
  },
}
