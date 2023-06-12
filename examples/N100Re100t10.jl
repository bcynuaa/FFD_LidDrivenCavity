"""
 # @ author: bcynuaa | bcynuaa@163.com
 # @ date: 2023-06-12 21:00:26
 # @ license: MIT
 # @ description:
 - number of grid points: 100
 - Reynolds number: 100
 - total time: 10
 """

include("..//src//Simulation.jl");

cavity_len::Float64 = 1.;
N::Int64 = 256;
Re::Float64 = 100.;
u_upper::Float64 = 1.;
dt::Float64 = 0.005;
total_time::Float64 = 10.;

case::Case = makeCase(cavity_len, N, u_upper, Re, total_time);

data_path::String = "..//data//N100Re100t10//";

@time simulation(case, total_time, data_path);