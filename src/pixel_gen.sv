/*
    ECEN 3002
    Video Project: Pixel Generator Module
    Elena Murray

*/
`include "params.vh"

module pixel_gen(
    input rfr_clk, 
    input reset_n,
    input video_on, 
    input [PIXEL_CTR_W:0] pixel_cnt, 
    input [LINE_CTR_W:0] line_cnt, 
    input h_sync, 
    input v_sync,

    output [7:0] p_red, 
    output [7:0] p_green, 
    output [7:0] p_blue 
    
); 


//=======================================================
//  REG/WIRE declarations
//=======================================================

//Color Declarations
logic [7:0] red, green, blue;
logic [ROM_DATA_SIZE:0] color_hex;  

logic [PIXEL_BITS:0] v_pixel_offset; 
logic [PIXEL_BITS:0] h_pixel_cnt;  

//ROM Declarations
logic [PIXEL_BITS:0] rom_addr;
logic [ROM_DATA_SIZE:0] rom_data, temp; 

//=======================================================
//  Module declarations
//=======================================================


//=======================================================
//  Assignments
//=======================================================

//Assign RGB outputs only when the video is on
assign p_red = red & {8{video_on}}; 
assign p_green = green  & {8{video_on}}; 
assign p_blue = blue & {8{video_on}}; 

// //Assign pixels to ROM addresses
// assign h_pixel_cnt = pixel_cnt[PIXEL_CTR_W:CTR_LOWEST_BIT]; 
// assign v_pixel_offset = line_cnt[LINE_CTR_W:CTR_LOWEST_BIT] * PIXELS_PER_LINE; 
// assign rom_addr = (h_pixel_cnt + v_pixel_offset) & {(ROM_DATA_SIZE+1){video_on}}; 

assign red = 8'hFF; 
assign green = 8'hFF; 
assign blue = 8'hFF; 
// `ifdef pixel2x2 

//     //Break out the hex color code into RGB values
//     assign red = {color_hex[11:8], 4'b0}; 
//     assign green = {color_hex[7:4], 4'b0};  
//     assign blue = {color_hex[3:0], 4'b0}; 

// `else
    
//     //Break out the hex color code into RGB values
//     assign red = color_hex[23:16]; 
//     assign green = color_hex[15:8]; 
//     assign blue = color_hex[7:0]; 
// `endif

// //=======================================================
// //  Structural coding
// //=======================================================

// //Trigger on the positive edge of the clock and the reset 
// always_ff @ (posedge rfr_clk, negedge reset_n) 
// 	begin 
// 		//Reset logic
// 		if(reset_n == 1'b0) begin  
//             color_hex <= 1'b0;
//         end else begin
            
//             if(pixel_cnt <= MAX_PIXEL && line_cnt <= MAX_LINE) begin //On screen display from frame buffer

//                 color_hex <= rom_data; 

//             end else begin //Off screen display nothing
//                 color_hex <= 1'b0;
//             end

//         end 
           
       
//     end

endmodule

