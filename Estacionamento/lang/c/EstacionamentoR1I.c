/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Estacionamento.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

#define Estacionamento__MAX_INT 1000
/* Array and record constants */


/* Clause CONCRETE_VARIABLES */

static 
static 
static 
/* Clause INITIALISATION */
void Estacionamento__INITIALISATION(void)
{
    
    {
        int32_t ii;
        
        ii = 0;
        while((ii) < (Estacionamento__MAX_INT))
        {
            ii = ii+1;
            Estacionamento__ativoI[ii] = false;
            Estacionamento__statusI[ii] = Estacionamento__S_NULL;
            Estacionamento__tipoI[ii] = Estacionamento__T_NULL;
        }
    }
}

/* Clause OPERATIONS */

void Estacionamento__criar(Estacionamento__TIPOS tt)
{
    {
        int32_t ii;
        bool aa;
        bool continuar;
        
        aa = true;
        ii = 0;
        continuar = true;
        while(((ii) < (Estacionamento__MAX_INT)) &&
        (continuar == true))
        {
            ii = ii+1;
            aa = Estacionamento__ativoI[ii];
            if(aa == false)
            {
                continuar = false;
            }
        }
        Estacionamento__ativoI[ii] = true;
        Estacionamento__statusI[ii] = Estacionamento__livre;
        Estacionamento__tipoI[ii] = tt;
    }
}

void Estacionamento__excluir(Estacionamento__VAGA vv)
{
    int32_t ii;
    
    ii = vv;
    Estacionamento__ativoI[ii] = false;
}

void Estacionamento__ocupar(Estacionamento__VAGA vv)
{
    int32_t ii;
    
    ii = vv;
    Estacionamento__statusI[ii] = Estacionamento__ocupada;
}

void Estacionamento__liberar(Estacionamento__VAGA vv)
{
    int32_t ii;
    
    ii = vv;
    Estacionamento__statusI[ii] = Estacionamento__livre;
}

void Estacionamento__get_cor_lampada(Estacionamento__VAGA vv, Estacionamento__CORES *cc)
{
    {
        Estacionamento__STATUS ss;
        Estacionamento__TIPOS tt;
        int32_t ii;
        
        ii = vv;
        ss = Estacionamento__statusI[ii];
        tt = Estacionamento__tipoI[ii];
        if(ss == Estacionamento__livre)
        {
            switch(tt)
            {
                case Estacionamento__idoso : {
                    
                    (*cc) = Estacionamento__azul;
                    break;
                }
                case Estacionamento__deficiente : {
                    
                    (*cc) = Estacionamento__amarela;
                    break;
                }
                default : {
                    
                    (*cc) = Estacionamento__verde;
                    break;
                }
            }
        }
        else
        {
            (*cc) = Estacionamento__vermelha;
        }
    }
}

void Estacionamento__get_tipo_vaga(Estacionamento__VAGA vv, Estacionamento__TIPOS *tt)
{
    int32_t ii;
    
    ii = vv;
    (*tt) = Estacionamento__tipoI[ii];
}

void Estacionamento__indicar(Estacionamento__TIPOS tt, Estacionamento__VAGA *vv)
{
    (*vv) = 0;
    {
        int32_t ii;
        bool aa;
        Estacionamento__STATUS ss;
        Estacionamento__TIPOS uu;
        bool continuar;
        
        uu = Estacionamento__T_NULL;
        ss = Estacionamento__S_NULL;
        aa = true;
        continuar = true;
        ii = 0;
        while((ii) < (Estacionamento__MAX_INT))
        {
            ii = ii+1;
            aa = Estacionamento__ativoI[ii];
            ss = Estacionamento__statusI[ii];
            uu = Estacionamento__tipoI[ii];
            if(((aa == true) &&
                (ss == Estacionamento__livre)) &&
            (uu == tt))
            {
                continuar = false;
            }
        }
        (*vv) = ii;
    }
}

