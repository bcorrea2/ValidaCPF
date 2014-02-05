//
//  ValidaCPF.m
//  ValidaCPF
//
//  Created by Bruno Corrêa on 04/02/14.
//  Copyright (c) 2014 Bruno Corrêa. All rights reserved.
//

#import "ValidaCPF.h"
#include <stdio.h>
#include <string.h>

@implementation ValidaCPF

+(BOOL) validarCPF:(NSString *)cpf {
    const char *cleanCpf = [[[cpf
                              stringByReplacingOccurrencesOfString:@"." withString:@""] // FIX this
                             stringByReplacingOccurrencesOfString:@"-" withString:@""]
                            cStringUsingEncoding:NSUTF8StringEncoding];
    return validarCPF(cleanCpf);
}


bool validarCPF(const char *cpf)
{
    int i, j, digito1 = 0, digito2 = 0;
    if(strlen(cpf) != 11)
        return 0;
    else if((strcmp(cpf,"00000000000") == 0) || (strcmp(cpf,"11111111111") == 0) || (strcmp(cpf,"22222222222") == 0) ||
            (strcmp(cpf,"33333333333") == 0) || (strcmp(cpf,"44444444444") == 0) || (strcmp(cpf,"55555555555") == 0) ||
            (strcmp(cpf,"66666666666") == 0) || (strcmp(cpf,"77777777777") == 0) || (strcmp(cpf,"88888888888") == 0) ||
            (strcmp(cpf,"99999999999") == 0))
        return false;
    else
    {
        for(i = 0, j = 10; i < strlen(cpf)-2; i++, j--)
            digito1 += (cpf[i]-48) * j;
        digito1 %= 11;
        if(digito1 < 2)
            digito1 = 0;
        else
            digito1 = 11 - digito1;
        if((cpf[9]-48) != digito1)
            return false;
        else
        {
            for(i = 0, j = 11; i < strlen(cpf)-1; i++, j--)
                digito2 += (cpf[i]-48) * j;
            digito2 %= 11;
            if(digito2 < 2)
                digito2 = 0;
            else
                digito2 = 11 - digito2;
            if((cpf[10]-48) != digito2)
                return false;
        }
    }
    return true;
}

@end
