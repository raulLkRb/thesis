// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __goertzelInterno_scud_H__
#define __goertzelInterno_scud_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct goertzelInterno_scud_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 30;
  static const unsigned AddressRange = 8;
  static const unsigned AddressWidth = 3;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(goertzelInterno_scud_ram) {
        ram[0] = "0b111111111001101101100010100100";
        ram[1] = "0b111111110111101000001100101001";
        ram[2] = "0b111111110100010011101011111000";
        ram[3] = "0b111111101110100010001111101110";
        ram[4] = "0b111111100011001000100110101001";
        ram[5] = "0b111111000111011100101000001011";
        ram[6] = "0b111101100011001001100001100100";
        ram[7] = "0b101010010110110000001101011101";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(goertzelInterno_scud) {


static const unsigned DataWidth = 30;
static const unsigned AddressRange = 8;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


goertzelInterno_scud_ram* meminst;


SC_CTOR(goertzelInterno_scud) {
meminst = new goertzelInterno_scud_ram("goertzelInterno_scud_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~goertzelInterno_scud() {
    delete meminst;
}


};//endmodule
#endif