/// @description Insert description here
// You can write your code in this editor
// Draw the text box background
draw_rectangle(x, y, x + text_box_width, y + text_box_height, true);

// Draw the text inside the box
if (active) {
    draw_text(x + 5, y + 5, text + "|");
} else {
    draw_text(x + 5, y + 5, text);
}
