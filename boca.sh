#!/bin/bash

#################################################################################
#Script Name	: boca
#Description	: Compile, run and verify test cases from boca exercises
#Usage          : boca <file> [options]
#Options        : Options to pass to the compiler (e.g. -lm to link math library)
#Author       	: Luiz Felipe Machado
#################################################################################

set -e

if [ $# -gt 0 ]; then
    prog=${@: -1}
fi
output_prog=${prog/.c/''}
options=''
input_default='./input'
output_default='./output'
my_output_default='./myOutput'

usage() {
    echo 'Usage:'
    echo '  boca <file> [options]     Compile, execute e verifique os casos de testes'
    echo
    echo 'Options:'
    echo '  -c          Passe argumentos para o compilador gcc (Por exemplo, -c -lm para linkar a biblioteca <math.h>)'
    echo '  -n          Diretório de entrada para seu programa (Padrão: ./input)'
    echo '  -u          Diretório de saída para seu programa (Padrão: ./output)'
    echo '  -m          Diretório de saída gerado (Padrão: ./myOutput)'
    echo '  -d          Limpe os arquivos gerados pelo programa'
    echo '  -h          Ajuda'
}

compile() {
    gcc -o ${output_prog} ${options} ${prog}
}

clean() {
    rm -rf $output_prog
    rm -rf $my_output_default
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

run() {
    compile
    generate
    compare
}

while getopts c:n:u:m:hd flag
do
    case "${flag}" in
        c) options=${OPTARG};;
        n) input_default=${OPTARG};;
        u) output_default=${OPTARG};;
        m) my_output_default=${OPTARG};;
        d) clean
            exit 0;;
        h|*) usage
            exit 0;;
    esac
done

if test ! -f $prog; then
    echo 'Arquivo não encontrado!'
    exit 1
elif [[ -z $prog ]]; then
    usage
else
    run
fi

