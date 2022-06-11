{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "876c1e9c",
   "metadata": {},
   "outputs": [],
   "source": [
    "from bokeh.plotting import figure, show"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "a30e0cb1",
   "metadata": {},
   "outputs": [],
   "source": [
    "x = [1, 2, 3, 4, 5]\n",
    "y1 = [6, 7, 2, 4, 5]\n",
    "y2 = [2, 3, 4, 5, 6]\n",
    "y3 = [4, 5, 5, 7, 2]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "e69169fd",
   "metadata": {},
   "outputs": [],
   "source": [
    "p = figure(title=\"Multiple glyphs example\", x_axis_label=\"x\", y_axis_label=\"y\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "24b2f09d",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div style=\"display: table;\"><div style=\"display: table-row;\"><div style=\"display: table-cell;\"><b title=\"bokeh.models.renderers.GlyphRenderer\">GlyphRenderer</b>(</div><div style=\"display: table-cell;\">id&nbsp;=&nbsp;'1076', <span id=\"1094\" style=\"cursor: pointer;\">&hellip;)</span></div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">coordinates&nbsp;=&nbsp;None,</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">data_source&nbsp;=&nbsp;ColumnDataSource(id='1072', ...),</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">glyph&nbsp;=&nbsp;Circle(id='1073', ...),</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">group&nbsp;=&nbsp;None,</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">hover_glyph&nbsp;=&nbsp;None,</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">js_event_callbacks&nbsp;=&nbsp;{},</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">js_property_callbacks&nbsp;=&nbsp;{},</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">level&nbsp;=&nbsp;'glyph',</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">muted&nbsp;=&nbsp;False,</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">muted_glyph&nbsp;=&nbsp;Circle(id='1075', ...),</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">name&nbsp;=&nbsp;None,</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">nonselection_glyph&nbsp;=&nbsp;Circle(id='1074', ...),</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">selection_glyph&nbsp;=&nbsp;'auto',</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">subscribed_events&nbsp;=&nbsp;[],</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">syncable&nbsp;=&nbsp;True,</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">tags&nbsp;=&nbsp;[],</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">view&nbsp;=&nbsp;CDSView(id='1077', ...),</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">visible&nbsp;=&nbsp;True,</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">x_range_name&nbsp;=&nbsp;'default',</div></div><div class=\"1093\" style=\"display: none;\"><div style=\"display: table-cell;\"></div><div style=\"display: table-cell;\">y_range_name&nbsp;=&nbsp;'default')</div></div></div>\n",
       "<script>\n",
       "(function() {\n",
       "  let expanded = false;\n",
       "  const ellipsis = document.getElementById(\"1094\");\n",
       "  ellipsis.addEventListener(\"click\", function() {\n",
       "    const rows = document.getElementsByClassName(\"1093\");\n",
       "    for (let i = 0; i < rows.length; i++) {\n",
       "      const el = rows[i];\n",
       "      el.style.display = expanded ? \"none\" : \"table-row\";\n",
       "    }\n",
       "    ellipsis.innerHTML = expanded ? \"&hellip;)\" : \"&lsaquo;&lsaquo;&lsaquo;\";\n",
       "    expanded = !expanded;\n",
       "  });\n",
       "})();\n",
       "</script>\n"
      ],
      "text/plain": [
       "GlyphRenderer(id='1076', ...)"
      ]
     },
     "execution_count": 4,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "p.line(x, y1, legend_label=\"Temp.\", color=\"blue\", line_width=2)\n",
    "p.vbar(x=x, top=y2, legend_label=\"Rate\", width=0.5, bottom=0, color=\"red\")\n",
    "p.circle(x, y3, legend_label=\"Objects\", color=\"yellow\", size=12)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "6539dbc9",
   "metadata": {},
   "outputs": [],
   "source": [
    "show(p)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "996f966e",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3 (ipykernel)",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.8.7"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
