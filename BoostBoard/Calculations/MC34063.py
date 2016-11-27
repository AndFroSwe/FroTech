'''
Program for calculating parameters in MC34063 DC/DC voltage regulator.
All calculations from datasheet.

Author: Andreas Froderberg
'''
import time

# Specifications
V_in = 5 # Input voltage [V]
Vout_min = 9 # [V]
Vout_max = 12 # [V]
f_min = 100e3 # Oscillating frequency [Hz]
I_out = 0.500 # Desired output current [A]
V_ripple = 0.4 # Desired output ripple [V]
V_sat = 1.5 # Saturation of output switch [V]
V_f = 0 # Output recitfier forward voltage drop [V]
R1 = 2.2e3 # Regulator voltage divider resistor [ohm]

def calc_t_on(V_out):
    return f_min**(-1) - calc_t_off(V_out)

def calc_t_off(V_out):
    return f_min**(-1)/(calc_t_ratio(V_out) + 1)

def calc_t_ratio(V_out):
    return (V_out + V_f + V_in)/(V_in - V_sat)

def calc_CT(V_out):
    return 4e-5*calc_t_on(V_out)

def calc_Ipk(V_out):
    return 2*I_out*(calc_t_ratio(V_out) + 1)

def calc_R_SC(V_out):
    return 0.3/calc_Ipk(V_out)

def calc_Lmin(V_out):
    return ((V_in - V_sat)/calc_Ipk(V_out))*calc_t_on(V_out)

def calc_Co(V_out):
    return 9*I_out*calc_t_on(V_out)/V_ripple

def calc_R2(V_out):
    return (V_out/1.25 - 1)*R1

def fline(fileobj, var_name, var_value, unit = "V"):
    fileobj.write(var_name + ": " + str(var_value) + " " + unit + "\n")

if __name__ == "__main__":
    print("Starting MC34063 script...")
    print("Opening file...")
    # Open file and write results to it
    with open("MC34063_parameters.txt", "w") as myfile:
        # Header
        myfile.write("#################################\n")
        myfile.write("File written on:" + time.strftime("%c") + "\n")
        myfile.write("#################################\n")
        myfile.write("#### User parameters ####\n")
        # Write input
        fline(myfile, "Vin", V_in)
        fline(myfile, "Vout_min", Vout_min)
        fline(myfile, "Vout_max", Vout_max)
        fline(myfile, "Oscillator freq", f_min*1e-3, "kHz")
        fline(myfile, "Iout", I_out, "A")
        fline(myfile, "Vripple", V_ripple)
        fline(myfile, "Vsat", V_sat)
        fline(myfile, "V_f", V_f)
        fline(myfile, "R1", R1*1e-3, "kOhm")
        # Calculate outputs
        print("Calculating outputs...")
        myfile.write("#################################\n")
        myfile.write("#### Calculated parameters ####\n")
        fline(myfile, "ton/toff", calc_t_ratio(Vout_max), "s")
        fline(myfile, "ton", calc_t_on(Vout_max)*1e6, "us")
        fline(myfile, "C_T", calc_CT(Vout_max)*1e9, "nF")
        fline(myfile, "Ipk", calc_Ipk(Vout_max), "A")
        fline(myfile, "Rsc", calc_R_SC(Vout_max), "Ohm")
        fline(myfile, "Lmin", calc_Lmin(Vout_max)*1e6, "uH")
        fline(myfile, "Co", calc_Co(Vout_max)*1e6, "uF")
        fline(myfile, "R2_" + str(Vout_max) + "V", calc_R2(Vout_max)*1e-3, "kOhm")
        fline(myfile, "R2_" + str(Vout_min) + "V", calc_R2(Vout_min)*1e-3, "kOhm")
        myfile.write("#################################\n")
        print("Done writing to file!")

    print("Terminating...")
