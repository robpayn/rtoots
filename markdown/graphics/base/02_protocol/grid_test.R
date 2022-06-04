graphics.off()

windows(width = 6, height = 4)

vp1 <- viewport(
  x = 0.95,
  y = 0.95,
  just = c("right", "top"),
  width = 0.95 * 0.80,
  height = 0.95 * 0.85
)
vp1_clip <- viewport(clip = "on")

coords <- seq(-0.1, 1.1, by = 0.1)
ticks <- seq(0, 1, by = 0.2)

grob <- grobTree(
  grobTree(
    grobTree(
      rectGrob(),
      xaxisGrob(at = ticks),
      xaxisGrob(
        main = FALSE,
        edits = gEdit(
          children = gList(
            ticks = segmentsGrob(
              name = "ticks",
              x0 = unit(ticks, "native"),
              x1 = unit(ticks, "native"),
              y0 = unit(1, "npc"),
              y1 = sum(unit(1, "npc"), unit(-0.5, "lines"))
            )
          )
        )
      ),
      yaxisGrob(),
      grobTree(
        pointsGrob(x = coords, y = coords),
        vp = vp1_clip
      ),
      vp = vp1
    ),
    vp = viewport(x = 0.25, y = 0.5, width = 0.5)
  ),
  grobTree(
    grobTree(
      rectGrob(),
      xaxisGrob(),
      yaxisGrob(),
      pointsGrob(x = coords, y = coords),
      vp = vp1
    ),
    vp = viewport(x = 0.75, y = 0.5, width = 0.5)
  ),
  vp = viewport()
)

grid.draw(grob)
