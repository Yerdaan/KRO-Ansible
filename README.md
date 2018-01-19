# KRO-Ansible

Trzeba stworzyć role, które:

1. instalują coś z yum/apt-get;
2. instalują program z binariów(wykorzystanie zdalnych poleceń shell i template do plików konfiguracyjnych);
3. tworzą użytkownika, przypisują do odpowiedniej grupy, nadają specyficzne prawa dla określonych plików;
4. konfigurują iptables/firewalld;
5. tworzą skrypt i dodają wpisy do crona;
6. sprawdzają konfigurację maszyny(cpu, pamięć, dostępne miejsce na dysku, otwarte porty, itp.);
7. w zależności od sprawdzonej konfiguracji maszyny wykonują określone czynności.

Następnie, z ról chcielibyśmy stworzyć playbooki, które wykonywałyby zestaw określonych czynności w zależności od konfiguracji w plikach .inventory (w plikach tych podawane są dodatkowe zmienne oraz definiowane hosty/grupy hostów), np. w maszynach z grupy web, jest dana ilość ramu to dzieje się coś, a jeśli inna to coś innego; jeśli maszyny nie należą do żadnej grupy to tylko podstawowe zadania są wykonywane, itp.
