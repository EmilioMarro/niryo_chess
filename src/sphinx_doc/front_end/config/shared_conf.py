from datetime import date

copyright = " ".join([
    str(date.today().year) + ", Niryo All rights reserved.",
    "No part of this document may be reproduced or transmitted in any form or by any",
    "means without prior written consent of Niryo SAS"
])
author = u'Niryo'

html_theme = 'sphinx_rtd_theme'

templates_path = ['front_end/templates/']
html_static_path = ['front_end/static/']

html_logo = html_static_path[0] + "logo.png"
html_favicon = html_static_path[0] + "favicon32.ico"

html_css_files = [
    'override.css'
]

html_js_files = [
    'app.js',
]

html_theme_options = {
    'analytics_id': 'UA-85632199-1',  #  Provided by Google in your dashboard
}

html_show_sphinx = False

# Pdf options

## Header
pdf_header_font_name = "semplicitapro"

pdf_header_font_color = 203567

pdf_header_font_size = 16

pdf_header_spacing = 5 # In mm

## Footer

pdf_footer_font_name = "open-sans"

pdf_footer_font_color = 333333

pdf_footer_font_size = 10

pdf_footer_spacing = 5 # In mm