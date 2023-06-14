#########################################################################
# Plantilla basica para hacer scripts de simulacion
#########################################################################
# Reinicio de la simulacion y el instante de simulacion vuelve a 0ns
restart

# renombra una señal como un alias en VHDL
# add_wave {{/design_1_wraper/}}

# Aplicacion de estimulos basicos
# definimos CLK como un reloj con periodo de 20ns (12.5MHz). Valor inicial 0
# add_force {/design_1_wrapper/clk_in1} -radix bin {0 0ns} {1 40ns} -repeat_every 80ns


# definimos CLK como un reloj con periodo de 10ns (100MHz). Valor inicial 0
add_force {/design_1_wrapper/clk_in1} -radix bin {1 0ns} {0 5ns} -repeat_every 10ns

# definimos CLK_12_5 como un reloj con periodo de 10ns (12.5MHz). Valor inicial 0
add_force {/design_1_wrapper/CLK_12_5} -radix bin {1 0ns} {0 40ns} -repeat_every 80ns

# Entradas varias
#add_force {/design_1_wrapper/dedo_miso} -radix hex {1 0ns}
#add_force {/design_1_wrapper/t_ready_fir} -radix hex {1 0ns}


# definimos RESET_NEGADO
add_force {/design_1_wrapper/reset} -radix bin {0 0ns} {1 40ns}

# definimos dma_configurada
add_force {/design_1_wrapper/dma_configurada} -radix bin {0 0ns} {1 120ns}

# definimos frame_number
# add_force {/design_1_wrapper/frame_number} -radix hex {05 0ns}

# definimos current_frame como si fuera un reloj con periodo de 32700ns (unos 380Hz). Valor inicial 0
#add_force {/design_1_wrapper/current_frame} -radix bin {0 0ns} {1 232768ns} -repeat_every 465536ns

# definimos tready a '1' desde inicio 
# add_force {/design_1_wrapper/m00_axis_tready} -radix bin {1 0ns}

# ponemos inicialmente start y ack_ram_reading a 0
add_force {/design_1_wrapper/start} -radix bin {0 0ns} 

# avanzamos simulacion, observar que lo hacemos en multiplos del periodo de reloj
run 1000ns

# valor inicial para la señal start
add_force {/design_1_wrapper/start} -radix bin {1 0ns} {0 80ns} -repeat_every 20000000000ns

# avanzamos simulacion, observar que lo hacemos en multiplos del periodo de reloj
run 1000ns

# avanzar simulacion. OBSERVA que se hace en multiplos del periodo de reloj mas rapido
run 300000ns