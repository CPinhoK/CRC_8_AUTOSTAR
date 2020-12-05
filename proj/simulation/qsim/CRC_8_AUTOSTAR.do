onerror {exit -code 1}
vlib work
vcom -work work CRC_8_AUTOSTAR.vho
vcom -work work Encoder.vwf.vht
vsim  -c -t 1ps -L cycloneiv -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.CRC_8_Encoder_vhd_vec_tst
vcd file -direction CRC_8_AUTOSTAR.msim.vcd
vcd add -internal CRC_8_Encoder_vhd_vec_tst/*
vcd add -internal CRC_8_Encoder_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
