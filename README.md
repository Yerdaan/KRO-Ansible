# KRO-Ansible
Few sample roles and playbooks

Trzeba stworzyć role, które:
*instalują coś z yum/apt-get;
*instalują program z binariów(wykorzystanie zdalnych poleceń shell i
template do plików konfiguracyjnych);
*tworzą użytkownika, przypisują do odpowiedniej grupy, nadają
specyficzne prawa dla określonych plików;
*konfigurują iptables/firewalld;
*tworzą skrypt i dodają wpisy do crona;
*sprawdzają konfigurację maszyny(cpu, pamięć, dostępne miejsce na
dysku, otwarte porty, itp.);
*w zależności od sprawdzonej konfiguracji maszyny wykonują określone czynności.

Następnie, z ról chcielibyśmy stworzyć playbooki, które wykonywałyby
zestaw określonych czynności w zależności od konfiguracji w plikach
.inventory (w plikach tych podawane są dodatkowe zmienne oraz
definiowane hosty/grupy hostów), np. w maszynach z grupy web, jeśli
jest dana ilość ramu to dzieje się coś, a jeśli inna to coś innego;
jeśli maszyny nie należą do żadnej grupy to tylko podstawowe zadania
są wykonywane, itp.
