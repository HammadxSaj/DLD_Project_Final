`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2022 12:48:14
// Design Name: 
// Module Name: Pix_gen_game
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


 module pix_gen_game(
    
    input clk_d, 
    input move_up,
    input move_down,
    input [3:0] vry,
    input [9:0] pixel_x, 
    input [9:0] pixel_y, 
    input video_on, 
    input reset,
    input high_s ,
    input medium_s ,
    input low_s ,
    output reg [3:0] red = 0, 
    output reg [3:0] green = 0, 
    output reg [3:0] blue = 0 
//    output reg collision 
    ); 
    
    reg[9:0]aeroplane = 1;
always @(posedge clk_d)
begin    
    if(high_s)
    begin
    aeroplane = 3;
    end 
    
    else if (medium_s)
    begin
    aeroplane = 2 ;
    end 
    
    else if(low_s)
    begin
    aeroplane = 1;
    end
end
    
    reg [9:0] counter = 1000;
    reg [15:0]collision = 0;
    
    reg[9:0] block_speed = 0;
    
        reg[9:0] block_min = 550;
    reg[9:0] block_max = 590;
    
    
            reg[9:0] block1_min = 550;
    reg[9:0] block1_max = 590;
            reg[9:0] block2_min = 550;
    reg[9:0] block2_max = 590;
        reg[9:0] block3_min = 550;
    reg[9:0] block3_max = 590;
        reg[9:0] block4_min = 550;
    reg[9:0] block4_max = 590;
        reg[9:0] block5_min = 550;
    reg[9:0] block5_max = 590;
        reg[9:0] block6_min = 550;
    reg[9:0] block6_max = 590;
        reg[9:0] block7_min = 550;
    reg[9:0] block7_max = 590;
        reg[9:0] block8_min = 550;
    reg[9:0] block8_max = 590;
        reg[9:0] block9_min = 550;
    reg[9:0] block9_max = 590;
       
    
        reg[9:0] block1_counter = 1000;
        reg[9:0] block2_counter = 1000;
        reg[9:0] block3_counter = 1000;
        reg[9:0] block4_counter = 800;
        reg[9:0] block5_counter = 1000;
        reg[9:0] block6_counter = 700;
        reg[9:0] block7_counter = 1000;
        reg[9:0] block8_counter = 1000;
        reg[9:0] block9_counter = 1000;
        
        
    
    
        reg [9:0]plane_1_max = 134;
    reg [9:0]plane_1_min = 100;
        reg [9:0]plane_2_max = 122;
    reg [9:0]plane_2_min = 112 ;
        reg [9:0]plane_3_max = 126;
    reg [9:0]plane_3_min = 108;
        reg [9:0]plane_4_max = 120;
    reg [9:0]plane_4_min = 114;

   
   
always @(posedge clk_d)
        begin 
        
if(reset)
begin        

        counter = 1000;
     collision = 0;
    
     block_speed = 0;
    
         block_min = 550;
     block_max = 590;
    
    
            block1_min = 550;
    block1_max = 590;
             block2_min = 550;
     block2_max = 590;
        block3_min = 550;
    block3_max = 590;
        block4_min = 550;
     block4_max = 590;
         block5_min = 550;
    block5_max = 590;
        block6_min = 550;
     block6_max = 590;
         block7_min = 550;
     block7_max = 590;
        block8_min = 550;
   block8_max = 590;
         block9_min = 550;
     block9_max = 590;
       
    
         block1_counter = 1000;
         block2_counter = 1000;
         block3_counter = 800;
         block4_counter = 800;
         block5_counter = 1000;
         block6_counter = 700;
         block7_counter = 900;
         block8_counter = 1000;
         block9_counter = 900;
        
        
    
    
        plane_1_max = 134;
   plane_1_min = 100;
        plane_2_max = 122;
    plane_2_min = 112 ;
        plane_3_max = 126;
    plane_3_min = 108;
       plane_4_max = 120;
    plane_4_min = 114;         

      
   if ((pixel_x > 600)|| (pixel_x < 40) || (pixel_y > 440) || (pixel_y <40))
        begin
        red <= 4'hF;    
        green <= 4'h0;    
        blue <= 4'h0;    
        end 
      
      else if (pixel_x<430 & pixel_x>210 & pixel_y >330 & pixel_y <430)
        begin
        if((pixel_x<260 & pixel_x>220 & ((pixel_y >340 & pixel_y <350) || (pixel_y >370 & pixel_y <380))) || (pixel_x<230 & pixel_x>220 & pixel_y >340 & pixel_y <420) || (pixel_x<260 & pixel_x>250 & pixel_y >340 & pixel_y <380)
        || (pixel_x<280 & pixel_x>270 & pixel_y >340 & pixel_y <420) || (pixel_x<310 & pixel_x>270 & pixel_y >410 & pixel_y <420) || (pixel_x<330 & pixel_x>320 & pixel_y >340 & pixel_y <420) || (pixel_x<360 & pixel_x>320 & pixel_y >340 & pixel_y <350) || (pixel_x<360 & pixel_x>320 & pixel_y >380 & pixel_y <390)
        || (pixel_x<360 & pixel_x>350 & pixel_y >340 & pixel_y <420) || (pixel_x<380 & pixel_x>370 & pixel_y >340 & pixel_y <380) || (pixel_x<420 & pixel_x>370 & pixel_y >370 & pixel_y <380) || (pixel_x<420 & pixel_x>410 & pixel_y >340 & pixel_y <380) || (pixel_x<400 & pixel_x>390 & pixel_y >370 & pixel_y <420) )
            begin
                red <= 4'hF;   
                blue <= 4'hF;  
                green <= 4'hF;
            end
        else
            begin
                red <= 4'hF;   
                blue <= 4'h0;  
                green <= 4'h0;
            end        
   end
      

                
       else
                begin
                    red <= 4'hF; 
                    blue <= 4'hF; 
                    green <= 4'hF; 
                end
end        
        
else 
     begin              
     if( collision >= 10000)
     begin
     
      if ((pixel_x > 600)|| (pixel_x < 40) || (pixel_y > 440) || (pixel_y <40))
                begin
                red <= 4'h0;    
                green <= 4'h1;    
                blue <= 4'h0;    
                end
    
       else if (
         
           ( pixel_x>=119 && pixel_x<=210 && pixel_y>=130 && pixel_y<=150 ) ||
            ( pixel_x>=119 && pixel_x<=139 && pixel_y>=130 && pixel_y<=230 )||
           ( pixel_x>=119 && pixel_x<=210 && pixel_y>=210 && pixel_y<=230 )||
           ( pixel_x>=190 && pixel_x<=210 && pixel_y>=160 && pixel_y<=230 )||
            ( pixel_x>=169 && pixel_x<=210 && pixel_y>=160 && pixel_y<=180 )|| 
            
                   ( pixel_x>=219 && pixel_x<=310 && pixel_y>=130 && pixel_y<=150 )||
            ( pixel_x>=219 && pixel_x<=239 && pixel_y>=130 && pixel_y<=230 )||
            ( pixel_x>=290 && pixel_x<=310 && pixel_y>=130 && pixel_y<=230 )||
           ( pixel_x>=219 && pixel_x<=310 && pixel_y>=170 && pixel_y<=190 )||
           
                   ( pixel_x>=319 && pixel_x<=410 && pixel_y>=130 && pixel_y<=150 )||
            ( pixel_x>=319 && pixel_x<=339 && pixel_y>=130 && pixel_y<=230 )||
           ( pixel_x>=354 && pixel_x<=374 && pixel_y>=130 && pixel_y<=180 )||
           ( pixel_x>=390 && pixel_x<=410 && pixel_y>=130 && pixel_y<=230 )||
           
                  ( pixel_x>=419 && pixel_x<=510 && pixel_y>=130 && pixel_y<=150 )||
           ( pixel_x>=419 && pixel_x<=439 && pixel_y>=130 && pixel_y<=230 )||
           ( pixel_x>=419 && pixel_x<=469 && pixel_y>=170 && pixel_y<=190 )||
           (pixel_x>=419 && pixel_x<=510 && pixel_y>=210 && pixel_y<=230 )||
           
                  ( pixel_x>=119 && pixel_x<=210 && pixel_y>=250 && pixel_y<=270 )||
           ( pixel_x>=119 && pixel_x<=139 && pixel_y>=250 && pixel_y<=350 )||
            (pixel_x>=119 && pixel_x<=169 && pixel_y>=290 && pixel_y<=310 )||
           ( pixel_x>=119 && pixel_x<=210 && pixel_y>=330 && pixel_y<=350 )||
           
                  ( pixel_x>=219 && pixel_x<=310 && pixel_y>=250 && pixel_y<=270 ) ||
           ( pixel_x>=219 && pixel_x<=239 && pixel_y>=250 && pixel_y<=350 ) ||
           ( pixel_x>=290 && pixel_x<=310 && pixel_y>=250 && pixel_y<=350 )||
           
                   ( pixel_x>=319 && pixel_x<=410 && pixel_y>=250 && pixel_y<=270 ) ||
           ( pixel_x>=319 && pixel_x<=339 && pixel_y>=250 && pixel_y<=350 ) ||
           ( pixel_x>=319 && pixel_x<=410 && pixel_y>=320 && pixel_y<=350 )||
            ( pixel_x>=390 && pixel_x<=410 && pixel_y>=250 && pixel_y<=350 )          
            
       )
       begin 
        red <= 4'hF;    
        green <= 4'h0;    
        blue <= 4'h3; 
       end
       
               else
                begin
                    red <= 4'hF; 
                    blue <= 4'hF; 
                    green <= 4'hF; 
                end
     end 
     
     
     else
      
     begin
        //block looping.
        
     // *****************
     // collision detection 
     //***************
             
             if ((( plane_1_max <= 90 && plane_1_max >= 60 ) || ( plane_1_min <= 90 && plane_1_min >= 60 )) 
                        && (( block1_min <= 152 && block1_min >= 100) || ( block1_max <= 152 && block1_max >= 100)))
                begin 
                   
                    collision <= collision + 1;
                    
                end    
              
            else if ((( plane_1_max <= 190 && plane_1_max >= 160 ) || ( plane_1_min <= 190 && plane_1_min >= 160 )) 
                        && (( block2_min <= 152 && block2_min >= 100) || ( block2_max <= 152 && block2_max >= 100)))
                begin 
                   
                    collision <= collision + 1;
                    
                end   
                
            else if ((( plane_1_max <= 390 && plane_1_max >= 360 ) || ( plane_1_min <= 390 && plane_1_min >= 360 )) 
                        && (( block3_min <= 152 && block2_min >= 100) || ( block3_max <= 152 && block2_max >= 100)))
                begin 
                   
                    collision <= collision + 1;
                    
                end  
                
             else if ((( plane_1_max <= 140 && plane_1_max >= 110 ) || ( plane_1_min <= 140 && plane_1_min >= 110 )) 
                        && (( block4_min <= 152 && block4_min >= 100) || ( block4_max <= 152 && block4_max >= 100)))
                begin 
                   
                    collision <= collision + 1;
                    
                end   
                
                
             else if ((( plane_1_max <= 230 && plane_1_max >= 200 ) || ( plane_1_min <= 230 && plane_1_min >= 200 )) 
                        && (( block5_min <= 152 && block2_min >= 100) || ( block5_max <= 152 && block5_max >= 100)))
                begin 
                   
                    collision <= collision + 1;
                    
                end   
                
             else if ((( plane_1_max <= 280 && plane_1_max >= 250 ) || ( plane_1_min <= 280 && plane_1_min >= 250 )) 
                        && (( block6_min <= 152 && block6_min >= 100) || ( block6_max <= 152 && block6_max >= 100)))
                begin 
                   
                    collision <= collision + 1;
                    
                end
                
                
             else if ((( plane_1_max <= 320 && plane_1_max >= 290 ) || ( plane_1_min <= 320 && plane_1_min >= 290 )) 
                        && (( block7_min <= 152 && block7_min >= 100) || ( block7_max <= 152 && block7_max >= 100)))
                begin 
                   
                    collision <= collision + 1;
                    
                end   
                
                
              else if ((( plane_1_max <= 355 && plane_1_max >= 325 ) || ( plane_1_min <= 355 && plane_1_min >= 325 )) 
                        && (( block8_min <= 152 && block8_min >= 100) || ( block8_max <= 152 && block8_max >= 100)))
                begin 
                   
                    collision <= collision + 1;
                    
                end   
                
                
              else if ((( plane_1_max <= 430 && plane_1_max >= 400 ) || ( plane_1_min <= 430 && plane_1_min >= 400 )) 
                        && (( block9_min <= 152 && block9_min >= 100) || ( block9_max <= 152 && block9_max >= 100)))
                begin 
                   
                    collision <= collision + 1;
                    
                end     
    //      
                    
    //                 red <= 4'h0; 
    //                blue <= 4'h0; 
    //                green <= 4'h0; 
    // ************
    // Block randomization
    //*************
               if (block1_min < 40)
                begin
                    block1_min = 550;
                    block1_max = 590;
                end
                
                else if (block2_min < 40)
                begin
                    block2_min = 550;
                    block2_max = 590;
                end
                
                else if (block3_min < 40)
                begin
                    block3_min = 550;
                    block3_max = 590;
                end
                
                else if (block4_min < 40)
                begin
                    block4_min = 550;
                    block4_max = 590;
                end
                
                else if (block5_min < 40)
                begin
                    block5_min = 550;
                    block5_max = 590;
                end
                
                else if (block6_min < 40)
                begin
                    block6_min = 550;
                    block6_max = 590;
                end
                
                else if (block7_min < 40)
                begin
                    block7_min = 550;
                    block7_max = 590;
                end
                
                else if (block8_min < 40)
                begin
                    block8_min = 550;
                    block8_max = 590;
                end 
                
                else if (block9_min < 40)
                begin
                    block9_min = 550;
                    block9_max = 590;
                end
    //                block2_min = 550;
    //                block2_max = 590;
    //                block3_min = 550;
    //                block3_max = 580;
    //            end  
                
    //end
    
    
    // ************
    // Screen border
    //*************            
    
            else if ((pixel_x > 600)|| (pixel_x < 40) || (pixel_y > 440) || (pixel_y <40 && pixel_y > 30) || (pixel_y <10)  )
                begin
                red <= 4'h0;    
                green <= 4'h0;    
                blue <= 4'h0;    
                end
    //**************
     // Health bar.
     //**************           
    
            else if ((pixel_x > 600)|| (pixel_x < 40) || (pixel_y >10 && pixel_y < 30)  )
            begin
                if (collision <= 10)
                begin
                    if ((pixel_x > 600)|| (pixel_x < 40) || (pixel_y >10 && pixel_y < 30))
                    begin
                        red <= 4'h0;    
                        green <= 4'hF;    
                        blue <= 4'h0; 
                    end
                end
                
                else if (collision > 11 )
                begin
                    if ((pixel_x > 600)|| (pixel_x < 240 ) || (pixel_y >10 && pixel_y < 30))
                    begin
                        red <= 4'h0;    
                        green <= 4'hF;    
                        blue <= 4'h0; 
                    end
                end 
                
                
            
            end
     
     
     //**************
     // plane instantiation.
     //**************
             else if ((pixel_x > 132 && pixel_x < 145 && pixel_y > plane_1_min && pixel_y < plane_1_max) || (pixel_x > 107 && pixel_x < 152 && pixel_y > plane_2_min && pixel_y < plane_2_max )|| (pixel_x > 100 && pixel_x < 107 && pixel_y > plane_3_min && pixel_y < plane_3_max)|| (pixel_x > 152 && pixel_x < 154 && pixel_y > plane_4_min && pixel_y < plane_4_max ) )                                                  
                begin
                red <= 4'h0;    
                green <= 4'h0;    
                blue <= 4'hF;    
                
                if (counter == 1000)
                begin
                
                    if((pixel_y < 440) && (pixel_y  > 40))
                    begin
                    if((vry >= 9 )&& (vry <= 14))
//                      if(move_down)
                        begin
                        plane_1_max <= plane_1_max + aeroplane;
                        plane_1_min <= plane_1_min + aeroplane ;
                        plane_2_max <= plane_2_max + aeroplane;
                        plane_2_min <= plane_2_min + aeroplane ;
                        plane_3_max <= plane_3_max + aeroplane;
                        plane_3_min <= plane_3_min + aeroplane ;
                        plane_4_max <= plane_4_max + aeroplane;
                        plane_4_min <= plane_4_min + aeroplane ;
                        
                        counter = 0;
                       
                        end 
                        
                    else if (vry >= 0 && vry <= 3)
//                    else if (move_up)
                    begin
                        plane_1_max <= plane_1_max - aeroplane;
                        plane_1_min <= plane_1_min - aeroplane ;
                        plane_2_max <= plane_2_max - aeroplane;
                        plane_2_min <= plane_2_min - aeroplane ;
                        plane_3_max <= plane_3_max - aeroplane;
                        plane_3_min <= plane_3_min - aeroplane ;
                        plane_4_max <= plane_4_max - aeroplane;
                        plane_4_min <= plane_4_min - aeroplane ;
                        counter = 0;
                      
                    end
                     end
                     
                     else
                     begin
                        collision <= collision + 1;
                     end
                 end
                 
                 else
                 begin
                    counter = counter +1;
                  end
                
                end
                
 // ********     
 // block generation 
 // ********
    
     else if ((pixel_x > block1_min) && (pixel_x < block1_max) && (pixel_y > 60) && (pixel_y < 90) )
                begin
                    red <= 4'hF; 
                    blue <= 4'h0; 
                    green <= 4'h0; 
                   if (block1_counter == 1000)
                   begin
                        block1_min <= block1_min - 1;
                        block1_max <= block1_max - 1;
                        block1_counter <= 0;
                   end
                   else
                   begin
                        block1_counter <= block1_counter+3;
                   end
                   
                    
                end      
                
     else if ((pixel_x > block2_min) && (pixel_x < block2_max) && (pixel_y > 160) && (pixel_y < 190) )
                begin
                    red <= 4'hF; 
                    blue <= 4'h0; 
                    green <= 4'h0; 
                   if (block2_counter == 1000)
                   begin
                        block2_min <= block2_min - 1;
                        block2_max <= block2_max - 1;
                        block2_counter <= 0;
                   end
                   else
                   begin
                        block2_counter <= block2_counter+3;
                   end
                   
                    
                end   
                
     else if ((pixel_x > block3_min) && (pixel_x < block3_max) && (pixel_y > 360) && (pixel_y < 390) )
                begin
                    red <= 4'hF; 
                    blue <= 4'h0; 
                    green <= 4'h0; 
                   if (block3_counter == 1000)
                   begin
                        block3_min <= block3_min - 1;
                        block3_max <= block3_max -1 ;
                        block3_counter <= 0;
                   end
                   else
                   begin
                        block3_counter <= block3_counter+4;
                   end
                   
                    
                end   
                
                
     else if ((pixel_x > block4_min) && (pixel_x < block4_max) && (pixel_y > 110) && (pixel_y < 140) )
                begin
                    red <= 4'hF; 
                    blue <= 4'h0; 
                    green <= 4'h0; 
                   if (block4_counter == 1000)
                   begin
                        block4_min <= block4_min - 1;
                        block4_max <= block4_max -1 ;
                        block4_counter <= 0;
                   end
                   else
                   begin
                        block4_counter <= block4_counter+2;
                   end
                   
                    
                end   
                
      else if ((pixel_x > block5_min) && (pixel_x < block5_max) && (pixel_y > 200) && (pixel_y < 230) )
                begin
                    red <= 4'hF; 
                    blue <= 4'h0; 
                    green <= 4'h0; 
                   if (block5_counter == 1000)
                   begin
                        block5_min <= block5_min - 1;
                        block5_max <= block5_max -1 ;
                        block5_counter <= 0;
                   end
                   else
                   begin
                        block5_counter <= block5_counter+5;
                   end
                   
                    
                end  
                
        else if ((pixel_x > block6_min) && (pixel_x < block6_max) && (pixel_y > 250) && (pixel_y < 280) )
                begin
                    red <= 4'hF; 
                    blue <= 4'h0; 
                    green <= 4'h0; 
                   if (block6_counter == 1000)
                   begin
                        block6_min <= block6_min - 1;
                        block6_max <= block6_max -1 ;
                        block6_counter <= 0;
                   end
                   else
                   begin
                        block6_counter <= block6_counter+3;
                   end
                   
                    
                end   
                
       else if ((pixel_x > block7_min) && (pixel_x < block7_max) && (pixel_y > 290) && (pixel_y < 320) )
                begin
                    red <= 4'hF; 
                    blue <= 4'h0; 
                    green <= 4'h0; 
                   if (block7_counter == 1000)
                   begin
                        block7_min <= block7_min - 1;
                        block7_max <= block7_max -1 ;
                        block7_counter <= 0;
                   end
                   else
                   begin
                        block7_counter <= block7_counter+4;
                   end
                   
                    
                end  
                
         else if ((pixel_x > block8_min) && (pixel_x < block8_max) && (pixel_y > 325) && (pixel_y < 355) )
                begin
                    red <= 4'hF; 
                    blue <= 4'h0; 
                    green <= 4'h0; 
                   if (block8_counter == 1000)
                   begin
                        block8_min <= block8_min - 1;
                        block8_max <= block8_max -1 ;
                        block8_counter <= 0;
                   end
                   else
                   begin
                        block8_counter <= block8_counter+2;
                   end
                   
                    
                end  
                
//          else if ((pixel_x > block8_min) && (pixel_x < block8_max) && (pixel_y > 400) && (pixel_y < 430) )
//                begin
//                    red <= 4'hF; 
//                    blue <= 4'h0; 
//                    green <= 4'h0; 
//                   if (block8_counter == 1000)
//                   begin
//                        block8_min <= block8_min - 1;
//                        block8_max <= block8_max -1 ;
//                        block8_counter <= 0;
//                   end
//                   else
//                   begin
//                        block8_counter <= block8_counter+2;
//                   end
                   
                    
//                end  
                
                
         else if ((pixel_x > block9_min) && (pixel_x < block9_max) && (pixel_y > 400) && (pixel_y < 430) )
                begin
                    red <= 4'hF; 
                    blue <= 4'h0; 
                    green <= 4'h0; 
                   if (block9_counter == 1000)
                   begin
                        block9_min <= block9_min - 1;
                        block9_max <= block9_max -1 ;
                        block9_counter <= 0;
                   end
                   else
                   begin
                        block9_counter <= block9_counter+2;
                   end
                   
                    
                end  
                
         
    // Collision Detection.
    
    
    
    
    // screen background fill
            else
                begin
                    red <= 4'hF; 
                    blue <= 4'hF; 
                    green <= 4'hF; 
                end
        end
        end
    end
endmodule

            
  


    
//        end
