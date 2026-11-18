# Figures for the deck "Cybersecurity in 2026".
# Run from the folder cybersecurity_briefing/:  Rscript code/briefing_figures.R
# Each number below is typed from the source named beside it. No data file exists.
library(ggplot2)

brown_red <- "#8B1A1A"
context_gray <- "grey60"

theme_deck <- theme_bw(base_size = 12, base_family = "Libertinus Sans") +
  theme(panel.grid = element_blank(),
        legend.position = "none",
        axis.title.x = element_blank(),
        plot.subtitle = element_text(size = 10, colour = "grey30"))

# Figure 1. Serious flaws that Anthropic reported to open-source projects,
# and the number patched, as of May 22, 2026.
# Source: Anthropic, "Project Glasswing: an initial update", May 22, 2026:
# "75 of the 530 high- or critical-severity bugs we've reported have now been patched".
reported <- 530
patched <- 75
fig1 <- data.frame(
  status = factor(c("Reported", "Patched"), levels = c("Reported", "Patched"),
                  labels = c("Reported to\nmaintainers", "Patched")),
  count = c(reported, patched))
p1 <- ggplot(fig1, aes(status, count, fill = status)) +
  geom_col(width = 0.6) +
  geom_text(aes(label = count), vjust = -0.4, size = 3.8, family = "Libertinus Sans") +
  scale_fill_manual(values = setNames(c(context_gray, brown_red), levels(fig1$status))) +
  scale_y_continuous(limits = c(0, 600), expand = c(0, 0)) +
  labs(y = "Flaws (count)",
       subtitle = "High- or critical-severity flaws,\nopen-source software, May 22, 2026") +
  theme_deck
ggsave("figures/found_vs_patched.pdf", p1, width = 2.6, height = 2.8, device = cairo_pdf)

# Figure 2. Publicly cataloged software flaws (CVE records), January to October.
# Source: U.S. National Vulnerability Database counts, as tabulated by J. Gamblin in
# github.com/jgamblin/monthlyCVEStats, file outputs/2026/ytd_summary.json
# (generated November 1, 2026): previous_ytd_total 39639, current_ytd_total 89859.
cve_2025_jan_oct <- 39639
cve_2026_jan_oct <- 89859
fig2 <- data.frame(
  period = factor(c("2025", "2026"), levels = c("2025", "2026"),
                  labels = c("Jan to Oct\n2025", "Jan to Oct\n2026")),
  count = c(cve_2025_jan_oct, cve_2026_jan_oct))
p2 <- ggplot(fig2, aes(period, count, fill = period)) +
  geom_col(width = 0.6) +
  geom_text(aes(label = format(count, big.mark = ",")), vjust = -0.4, size = 3.8,
            family = "Libertinus Sans") +
  scale_fill_manual(values = setNames(c(context_gray, brown_red), levels(fig2$period))) +
  scale_y_continuous(limits = c(0, 100000), expand = c(0, 0),
                     labels = function(x) format(x, big.mark = ",", scientific = FALSE)) +
  labs(y = "CVE records (count)",
       subtitle = "U.S. National\nVulnerability Database") +
  theme_deck
ggsave("figures/cve_counts.pdf", p2, width = 2.6, height = 2.8, device = cairo_pdf)

cat("Patched share, Figure 1:", round(100 * patched / reported), "%\n")
cat("Ratio, Figure 2:", round(cve_2026_jan_oct / cve_2025_jan_oct, 2), "\n")
