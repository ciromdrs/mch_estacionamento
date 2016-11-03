#ifndef _Estacionamento_h
#define _Estacionamento_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


#define Estacionamento__VAGA__max Estacionamento__MAX_INT
/* Clause SETS */
typedef int Estacionamento__VAGA;
typedef enum
{
    Estacionamento__idoso,
    Estacionamento__deficiente,
    Estacionamento__comum,
    Estacionamento__T_NULL
    
} Estacionamento__TIPOS;
typedef enum
{
    Estacionamento__livre,
    Estacionamento__ocupada,
    Estacionamento__S_NULL
    
} Estacionamento__STATUS;
typedef enum
{
    Estacionamento__azul,
    Estacionamento__amarela,
    Estacionamento__verde,
    Estacionamento__vermelha
    
} Estacionamento__CORES;

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
#define Estacionamento__MAX_INT 1000

/* Array and record constants */


extern void Estacionamento__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Estacionamento__criar(Estacionamento__TIPOS tt);
extern void Estacionamento__excluir(Estacionamento__VAGA vv);
extern void Estacionamento__ocupar(Estacionamento__VAGA vv);
extern void Estacionamento__liberar(Estacionamento__VAGA vv);
extern void Estacionamento__get_cor_lampada(Estacionamento__VAGA vv, Estacionamento__CORES *cc);
extern void Estacionamento__get_tipo_vaga(Estacionamento__VAGA vv, Estacionamento__TIPOS *tt);
extern void Estacionamento__indicar(Estacionamento__TIPOS tt, Estacionamento__VAGA *vv);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Estacionamento_h */
