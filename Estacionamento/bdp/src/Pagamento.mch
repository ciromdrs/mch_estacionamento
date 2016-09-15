MACHINE
    Pagamento ( preco , // preço por min
              lim )  // limite que o usuário pode usar sem pagar

CONSTRAINTS
    preco : NAT &
    lim   : NAT

OPERATIONS
    pp <-- calcular_preco ( ini , fim ) =
        PRE pp  : NAT &
            ini : NAT &
            fim : NAT &
            fim >= ini
        THEN
            IF fim - ini > lim THEN
                pp := fim - ini * preco
            ELSE
                pp := 0
            END
        END

END
