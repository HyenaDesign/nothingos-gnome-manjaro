require 'cairo'

function conky_draw_nothing_elements(cr)
    -- Set line properties
    cairo_set_line_cap(cr, CAIRO_LINE_CAP_ROUND)
    cairo_set_line_join(cr, CAIRO_LINE_JOIN_ROUND)
    
    -- Set color to white with transparency
    cairo_set_source_rgba(cr, 1, 1, 1, 0.7)
    
    -- Draw the Nothing Phone inspired glyph elements
    
    -- Top right corner element
    cairo_set_line_width(cr, 2)
    cairo_move_to(cr, 250, 30)
    cairo_line_to(cr, 290, 30)
    cairo_line_to(cr, 290, 70)
    cairo_stroke(cr)
    
    -- Draw dots pattern on the left side
    cairo_set_line_width(cr, 1)
    for i = 0, 15 do
        cairo_arc(cr, 10, 100 + (i * 30), 2, 0, 2 * math.pi)
        cairo_fill(cr)
    end
    
    -- Draw horizontal lines on the right
    for i = 0, 5 do
        local y_pos = 150 + (i * 80)
        cairo_set_line_width(cr, 2)
        cairo_move_to(cr, 260, y_pos)
        cairo_line_to(cr, 290, y_pos)
        cairo_stroke(cr)
    end
    
    -- Draw the circular element at the bottom
    cairo_set_line_width(cr, 2)
    cairo_arc(cr, 150, 580, 40, 0, 2 * math.pi)
    cairo_stroke(cr)
    
    -- Draw the inner circle
    cairo_arc(cr, 150, 580, 30, 0, 2 * math.pi)
    cairo_stroke(cr)
    
    -- Draw the diagonal lines in the bottom right
    cairo_move_to(cr, 240, 540)
    cairo_line_to(cr, 290, 590)
    cairo_stroke(cr)
    
    cairo_move_to(cr, 240, 560)
    cairo_line_to(cr, 270, 590)
    cairo_stroke(cr)
    
    -- Draw the C-shaped element on the left side
    cairo_set_line_width(cr, 2)
    cairo_arc(cr, 30, 400, 20, math.pi * 0.5, math.pi * 1.5)
    cairo_stroke(cr)
end
