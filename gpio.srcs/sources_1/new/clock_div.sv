`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 05:38:22 PM
// Design Name: 
// Module Name: clock_div
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clock_div_50K(
    input clk,
    output reg out
    );
    
    reg [26:0] counter;
    
    always_ff @(posedge clk)
    begin
        if(counter < 27'd2000) //20us
        begin
            counter <= counter + 1;
            out <= 0;
        end
        else 
        begin
            counter <=0;
            out <= 1;
        end
    
    end
    
endmodule

module clock_div_2M(
    input clk,
    output reg out
    );
    
    reg [5:0] counter;
    
    always_ff @(posedge clk)
    begin
        if(counter < 5'd25) //500ns
        begin
            counter <= counter + 1;
            //out <= 0;
        end
        else 
        begin
            counter <=0;
            out <= ~out;
        end
    
    end
    
endmodule

module divide_by_5ms(
    input clk,
    output reg out);
    
    reg [26:0] count;
    
    always_ff @ (posedge(clk))
    begin
        if (count < 27'd500000)  //5ms
        begin
           count <= count + 1;
           out <= 0;
        end
        else
        begin
            count <= 0;
            out <= 1;
        end
    end    
endmodule