`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 05:31:58 PM
// Design Name: 
// Module Name: spi_engine
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


module spi_engine(
    input [11:0] SW,         // SWs 11..0 placed from left to right
    input [3:0] PB,
    input clk,
    output reg [3:0] GPIO,
    output reg [9:0] LED,
    output [3:0] SS_ANODE,   // Anodes 3..0 placed from left to right
    output [7:0] SS_CATHODE 
    );
    
    reg [7:0] states;
    wire tick_50k;
    wire tick_2M;
    reg [3:0][7:0]cathodes;

    //debug
    reg debug_2M;
    reg debug_50K;

    reg cs;
    reg sck;
    reg sdi;
    reg ldac;

    assign GPIO[0] = cs;
    assign GPIO[1] = sck;
    assign GPIO[2] = sdi;
    assign GPIO[3] = ldac;

    wire [3:0] daca = 4'b0011;
    wire [3:0] dacb = 4'b1011;

    //wire [15:0] daca_spivalue = {daca,SW[11:0]};
    //wire [15:0] dacb_spivalue = {dacb,SW[11:0]};

    //wire [15:0] daca_spivalue = {daca,12'd4095};
    //wire [15:0] dacb_spivalue = {dacb,12'd2048};
    
    wire [11:0] daca_spivalue; //= 16'b0011111111111111;
    wire [11:0] dacb_spivalue; //= 16'b1011111111111111;
    wire daca_load;
    wire dacb_load;
    reg [15:0] daca_vio;
    reg [15:0] dacb_vio;
    
    always_ff @(posedge clk)
    begin
    
        if(daca_load) begin
        daca_vio <= {4'b0011,daca_spivalue};
        end
        
        if(dacb_load) begin
        dacb_vio <= {4'b1011,dacb_spivalue};
        end
    end
    
    
    vio_0 your_instance_name (
      .clk(clk),                // input wire clk
      .probe_out0(daca_spivalue),  // output wire [11 : 0] probe_out0
      .probe_out1(dacb_spivalue),  // output wire [11 : 0] probe_out1
      .probe_out2(daca_load),  // output wire [0 : 0] probe_out2
      .probe_out3(dacb_load)  // output wire [0 : 0] probe_out3
    );
    
    // handle input metastability safely
    reg reset;
    reg pre_reset;
    always_ff @ (posedge(clk))
    begin
        pre_reset <= PB[0];
        reset <= pre_reset;
    end
    
    clock_div_2M(clk,tick_2M);
    assign sck = tick_2M;
    
    //clock_div_50K(clk, tick_50k);


    always_ff @ (negedge tick_2M)
    begin
         if (reset) begin
            states <= 8'd0;
        end
        else 
        begin
            //if(tick_2M)
            //begin
                //sck <= ~sck;
                //debug_2M <= ~debug_2M;

                //if(tick_50k)
                //begin

                    //debug_50K <= ~debug_50K;
                
                    case(states)
                    
                    8'd0: begin 
                            cs <= 1'b0;
                            sdi <= daca_vio[15];
                            states <= 8'd1;
                    end
                    8'd1: begin
                            sdi <= daca_vio[14];
                            states <= 8'd2;
                    end
                    8'd2: begin
                            sdi <= daca_vio[13];
                            states <=  8'd3;
                    end
                    8'd3: begin
                            sdi <= daca_vio[12];
                            states <= 8'd4;
                    end
                    8'd4: begin
                            sdi <= daca_vio[11];
                            states <= 8'd5;
                    end
                    8'd5: begin
                            sdi <= daca_vio[10];
                            states <= 8'd6;
                    end
                    8'd6: begin
                            sdi <= daca_vio[9];
                            states <= 8'd7;
                    end
                    8'd7: begin
                            sdi <= daca_vio[8];
                            states <= 8'd8;
                    end
                    8'd8: begin
                            sdi <= daca_vio[7];
                            states <= 8'd9;
                    end
                    8'd9: begin
                            sdi <= daca_vio[6];
                            states <= 8'd10;
                    end
                    8'd10: begin
                            sdi <= daca_vio[5];
                            states <= 8'd11;
                    end
                    8'd11: begin
                            sdi <= daca_vio[4];
                            states <= 8'd12;
                    end
                    8'd12: begin
                            sdi <= daca_vio[3];
                            states <= 8'd13;
                    end
                    8'd13: begin
                            sdi <= daca_vio[2];
                            states <= 8'd14;
                    end
                    8'd14: begin
                            sdi <= daca_vio[1];
                            states <= 8'd15;
                    end
                    8'd15: begin
                            sdi <= daca_vio[0];
                            states <= 8'd17;
                    end
                    8'd16: begin
                            //sdi <= daca_vio[15];
                            //states <= 8'd17;
                    end
                    8'd17: begin
                            cs <= 1'b1;
                            states <= 8'd18;
                    end
                    8'd18: begin
                            cs <= 1'b0;
                            sdi <= dacb_vio[15];
                            states <= 8'd19;
                    end
                    8'd19: begin
                            sdi <= dacb_vio[14];
                            states <= 8'd20;
                    end
                    8'd20: begin
                            sdi <= dacb_vio[13];
                            states <= 8'd21;
                    end
                    8'd21: begin
                            sdi <= dacb_vio[12];
                            states <= 8'd22;
                    end
                    8'd22: begin
                            sdi <= dacb_vio[11];
                            states <= 8'd23;
                    end
                    8'd23: begin
                            sdi <= dacb_vio[10];
                            states <= 8'd24;
                    end
                    8'd24: begin
                            sdi <= dacb_vio[9];
                            states <= 8'd25;
                    end
                    8'd25: begin
                            sdi <= dacb_vio[8];
                            states <= 8'd26;
                    end
                    8'd26: begin
                            sdi <= dacb_vio[7];
                            states <= 8'd27;
                    end
                    8'd27: begin
                            sdi <= dacb_vio[6];
                            states <= 8'd28;
                    end
                    8'd28: begin
                            sdi <= dacb_vio[5];
                            states <= 8'd29;
                    end
                    8'd29: begin
                            sdi <= dacb_vio[4];
                            states <= 8'd30;
                    end
                    8'd30: begin
                            sdi <= dacb_vio[3];
                            states <= 8'd31;
                    end
                    8'd31: begin
                            sdi <= dacb_vio[2];
                            states <= 8'd32;
                    end
                    8'd32: begin
                            sdi <= dacb_vio[1];
                            states <= 8'd33;
                    end
                    8'd33: begin
                            sdi <= dacb_vio[0];
                            states <= 8'd35;
                    end
                    8'd34: begin
                            //sdi <= dacb_vio[15];
                            //states <= 8'd35;
                    end
                    8'd35: begin
                            cs <= 1'b1;
                            states <= 8'd36;
                    end
                    8'd36: begin
                            ldac <= 1'b1;
                            states <= 8'd37;
                    end
                    8'd37: begin
                            ldac <= 1'b0;
                            states <= 8'd38;
                    end
                    8'd38: begin
                            states <= 8'd39;
                    end
                    8'd39: begin
                            states <= 0;
                    end

                    default: states <= 0;
                    endcase
        end
    end

    //assign LED = {debug_2M,debug_50K, states};
    //assign LED = {10'b1111111111};
    assign LED = SW;

    reg [3:0] nib0 = states[3:0];
    reg [3:0] nib1 = states[7:4];
    reg [3:0] nib2 = 4'd1;
    reg [3:0] nib3 = 4'd1;

    hex_to_ss nibble0(nib0,cathodes[0],LED);
    hex_to_ss nibble1(nib1,cathodes[1],LED);
    hex_to_ss nibble2(nib2,cathodes[2],LED);
    hex_to_ss nibble3(nib3,cathodes[3],LED);

    seven_seg sg(clk, cathodes,SS_ANODE,SS_CATHODE);
    
endmodule
