library(shiny)

# UI
ui <- fluidPage(
  
  # Custom CSS for style
  tags$head(
    tags$style(HTML("
      body {
        background-color: #0E1117;
        color: #FFFFFF;
        font-family: Arial, sans-serif;
      }
      .navbar {
        background-color: #262730;
        border: none;
      }
      .tab-content {
        padding: 20px;
      }
      h1, h2, h3 {
        color: #FF4B4B;
      }
      a {
        color: #1E90FF;
      }
      .sidebar-text {
        margin-left: 15px;
      }
      shinny-logo {
        display: block;
        margin: 0 auto;
        height: 220px;
      }
    "))
  ),
  
  # Page layout with sidebar
  sidebarLayout(
    
    # Sidebar
    sidebarPanel(
        style = "background-color: #0E1119; border: none;",
      h4("Auteurs"),
      tags$div(class = "sidebar-text",
               p("John R. AOGA"),
               p("LinkedIn: ", a("John AOGA", href = "#")),
               br(),
               p("Abraham KOLOBOE"),
               p("Email: ", a("abkbl27@gmail.com", href = "mailto:abkbl27@gmail.com")),
               p("WhatsApp: +229 91 83 84 21"),
               p("LinkedIn: ", a("Abraham KOLOBOE", href = "#"))
      )
    ),
    
    # Main content area
    mainPanel(
      # Centered Shinny logo
      img(src = "https://www.worldbank.org/content/dam/photos/780x439/2021/apr/Shiny-logo.png",
          class = "shinny-logo"),
      
      # Tabs
      tabsetPanel(
        tabPanel("Description", 
                 h3("Description"),
                 p("Shiny est un framework open-source en R conçu pour simplifier la création d'applications web interactives."),
                 p("Il permet de transformer rapidement des scripts R en applications web dynamiques sans maîtrise des technologies web traditionnelles."),
                 p("Shiny se distingue par sa simplicité d'utilisation et sa flexibilité."),
                 p("Il offre la capacité d'intégrer des visualisations de données avancées à l'aide de bibliothèques populaires comme ggplot2, plotly et leaflet."),
        ),
        
        tabPanel("Avantages",
                 h3("Avantages"),
                    tags$ul(
                    tags$li(strong("Simplicité d'utilisation:"), 
                            " facile à apprendre et rapide à déployer."),
                    tags$li(strong("Développement rapide:"), 
                            " transformation rapide de scripts R en applications web."),
                    tags$li(strong("Intégration avec R packages:"), 
                            " compatible avec ggplot2, plotly, leaflet, etc."),
                    tags$li(strong("Widgets intuitifs:"), 
                            " boutons, curseurs, champs de texte interactifs."),
                    tags$li(strong("Visualisation dynamique:"), 
                            " mise à jour automatique des graphiques et des tableaux."),
                    tags$li(strong("Flexibilité et extensibilité:"), 
                            " possibilité d'ajouter du code JavaScript si nécessaire.")
                                    )
        ),
        
        tabPanel("Plan du Cours",
                 h3("Plan du Cours"),
                 tags$ol(
                   tags$li("Introduction"),
                   tags$li("Les fondamentaux de Shiny"),
                   tags$li("Première Application Shinny"),
                   tags$li("Widgets et Interactivité"),
                   tags$li("Visualisation et affichage des données"),
                   tags$li("Applications avancées"),
                   tags$li("Déploiement d'Applications"),
                   tags$li("Projets Pratiques"),
                   tags$li("Conclusion")
                 )
        ),
        
        tabPanel("Liens Utiles",
                 h3("Quelques Liens Utiles"),
                tags$ul(
                    tags$li(a("Site officiel de Shiny", href = "https://shiny.rstudio.com/")),
                    tags$li(a("Documentation officielle", href = "https://shiny.rstudio.com/reference/")),
                    tags$li(a("Tutoriels de Shiny", href = "https://shiny.rstudio.com/tutorial/")),
                    tags$li(a("Exemples de Shiny Gallery", href = "https://gallery.shiny.rstudio.com/")),
                    tags$li(a("GitHub de Shiny", href = "https://github.com/rstudio/shiny/")),
                    tags$li(a("Community Forum", href = "https://community.rstudio.com/c/shiny"))
                 )
        )
      )
    )
  )
)

# Server logic
server <- function(input, output) {}

# Run the app
shinyApp(ui, server)
