is_installed <- function(package_name) is.element(package_name, installed.packages()[,1])

# If a package is not installed, install it. Then load the package.
install_and_load <- function(package_name) {
  if(!is_installed(package_name)) {
    install.packages(package_name)
  }
  library(package_name, character.only = TRUE)
}

install_packages <- function(packages) {
  for(package in packages) {
    install_and_load(package)
  }
}

# Install and load libraries
install_packages(c("ggplot2", "gclus", "ggthemes"))

# The made a matrix to create this data
# Turned it into a data frame

state_data <- data.frame(state.x77)
View(state_data)


state_correlations <- abs(cor(state_data))
state_colors <- dmat.color(state_correlations)
ordered_correlations <- order.single(state_correlations)
cpairs(
  state_data,
  ordered_correlations,
  panel.colors = state_colors,
  gap = 0.5,
  main="Correlations Bewteen Population Variables"
)


## Lets do an analysis

fit <- lm(state_data$Murder~state_data$Illiteracy)


plot(state_data$Illiteracy, state_data$Murder)
abline(fit)

## ggplot demo...ggplot is a bit more complex to start
## but succeeds by giving a common interface, and allowing
## for very complex graphs and charts


state_plot <- ggplot(state_data, aes(x=Illiteracy, y=Murder))

state_plot + geom_point() + theme_classic()

state_plot + 
  geom_point(aes(color=Frost, size=Income)) + 
  theme_classic() + 
  geom_smooth(method=lm, se=FALSE) +
  labs(
    x = "Illiteracy\nPercent of Population", 
    y = "Murder Rate\nPer 100,000 People", 
    title = "Factors Affecting The Murder Rate in the USA")
dir.create(file.path("output", "images"), recursive = TRUE, showWarnings = FALSE)
ggsave("output/images/test_file.png") # We can save the file too
