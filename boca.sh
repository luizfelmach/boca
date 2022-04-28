#!/bin/bash

#################################################################################
#Script Name	: boca
#Description	: Compile, run and verify test cases from boca exercises
#Usage          : boca <file> [options]
#Options        : Options to pass to the compiler (e.g. -lm to link math library)
#Author       	: Luiz Felipe Machado
#################################################################################

prog=$1
output_prog=${prog/.c/''}
shift
options=''
input_default='./input'
output_default='./output'
my_output_default='./myOutput'


compile() {
    gcc -o ${output_prog} ${options} ${prog}
}

clean() {
    rm $output_prog
    rm -r $my_output_default
}

generate() {
    mkdir -p $my_output_default
    for input_file in ${input_default}/*; do
        output_file=${input_file/input/$my_output_default}
        ./${output_prog} < $input_file > $output_file
    done
}

compare() {
    diff $output_default $my_output_default
}

while getopts c:n:u:m: flag
do
    case "${flag}" in
        c) options=${OPTARG};;
        n) input_default=${OPTARG};;
        u) output_default=${OPTARG};;
        m) my_output_default=${OPTARG};;
    esac
done

if test ! -f $prog; then
    echo 'Arquivo não encontrado!'
    exit 1
fi

compile
generate
compare
