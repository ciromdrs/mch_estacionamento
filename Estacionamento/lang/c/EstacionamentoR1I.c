/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Estacionamento.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

#define Estacionamento__MAX_INT 1000
/* Array and record constants */


/* Clause CONCRETE_VARIABLES */

static int32_t Estacionamento__hora;
static int32_t Estacionamento__lim;
static int32_t Estacionamento__preco;
static 
static 
static 
static 
static 
static 
/* Clause INITIALISATION */
void Estacionamento__INITIALISATION(void)
{
    
    Estacionamento__hora = 0;
    Estacionamento__lim = 15;
    Estacionamento__preco = 3;
    {
        int32_t ii;
        
        ii = 0;
        while((ii) < (Estacionamento__MAX_INT))
        {
            ii = ii+1;
            Estacionamento__vagas_ativasI[ii] = false;
            Estacionamento__statusI[ii] = Estacionamento__S_NULL;
            Estacionamento__tipoI[ii] = Estacionamento__T_NULL;
            Estacionamento__tickets_ativosI[ii] = false;
            Estacionamento__pagosI[ii] = false;
            Estacionamento__chegadaI[ii] = 0;
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
            aa = Estacionamento__vagas_ativasI[ii];
            if(aa == false)
            {
                continuar = false;
                Estacionamento__vagas_ativasI[ii] = true;
                Estacionamento__statusI[ii] = Estacionamento__livre;
                Estacionamento__tipoI[ii] = tt;
            }
        }
    }
}

void Estacionamento__excluir(Estacionamento__VAGA vv)
{
    int32_t ii;
    
    ii = vv;
    Estacionamento__vagas_ativasI[ii] = false;
}

void Estacionamento__ocupar(Estacionamento__VAGA vv)
{
    Estacionamento__statusI[vv] = Estacionamento__ocupada;
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
            aa = Estacionamento__vagas_ativasI[ii];
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

void Estacionamento__adiantar(int32_t horas, int32_t minutos)
{
    Estacionamento__hora = (horas * 60)+minutos+Estacionamento__hora;
}

void Estacionamento__pegar_ticket(Estacionamento__TICKET *tt)
{
    {
        int32_t ii;
        bool aa;
        bool continuar;
        
        (*tt) = 1;
        aa = true;
        ii = 0;
        continuar = true;
        while(((ii) < (Estacionamento__MAX_INT)) &&
        (continuar == true))
        {
            ii = ii+1;
            aa = Estacionamento__tickets_ativosI[ii];
            if(aa == false)
            {
                continuar = false;
                Estacionamento__tickets_ativosI[ii] = true;
                Estacionamento__chegadaI[ii] = Estacionamento__hora;
                Estacionamento__pagosI[ii] = false;
                (*tt) = ii;
            }
        }
    }
}

void Estacionamento__pagar_ticket(Estacionamento__TICKET ticket, int32_t dinheiro, int32_t *troco)
{
    int32_t tempo_gasto;
    
    tempo_gasto = Estacionamento__hora-Estacionamento__chegadaI[ticket];
    if((tempo_gasto) <= (Estacionamento__lim))
    {
        (*troco) = dinheiro;
        Estacionamento__pagosI[ticket] = true;
    }
    else
    {
        {
            int32_t resto;
            
            resto = ((tempo_gasto / 60)+1) * Estacionamento__preco-dinheiro;
            if((resto) >= (0))
            {
                (*troco) = resto;
                Estacionamento__pagosI[ticket] = true;
            }
            else
            {
                (*troco) = dinheiro;
            }
        }
    }
}

void Estacionamento__abrir_cancela(Estacionamento__TICKET ticket)
{
    Estacionamento__tickets_ativosI[ticket] = false;
}

