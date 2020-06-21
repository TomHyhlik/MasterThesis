# Zminit u slidu prezentace

## 1
- Jedna se o spolecny projekt ČVUT a firmy IMA s.r.o.

- Jehoz cilem je:
Rozšířit přístupový systém firmy IMA, který je zde na ČVUT o senzorovou síť.
Navržené řešení realizovat a otestovat.
Jde tedy o rozšíření stávajici infrastruktury ČVUT.

- Proč se tímto zabývat? 
V budovách, kde je tento přístupový systém firmy IMA zaveden, tedy včetně ČVUT, to zjednoduší a sníží náklady na realizace IoT aplikací, právě tím, že se využije velká část již zavedené infrastruktury.
Jako příkladné IoT aplikace přo které by se to mohlo využít je bezdrátové měření nebo aplikace inteligentních budov a to v dané budově i jejím okolí.

## 2
Zde je architektura přístupového systému firmy IMA ve spodní části blokového diagramu, i s navrženým rozšířením o senzorovou síť v horní části.

Do serveru řízení přístupu jsou zavedeny kontrolní panely, každý znich je připojen do jedné vlastní sítě RS485 kde je několik zařízení CKP s kterými komunikuje na bázi CKP protokol, který je navržěn firmou IMA.
CKP zařízení tvoří rozhraní mezi kontrolním panelem a párem čtečka + dveřní zámek. Můžou to být různé typy čteček, stejně tak dveřních zámků, ale i vrat, závor apodobně.
Rozšíření tohoto přístupového systému o senzorovou síť je realizováno vytvořením gatewaye senzorové sítě, připojené do této sítě RS485, tedy navržená gateway podporuje CKP protokol jako ostatní zařízení v této síti.

## 3
Výběr bezdrátové technologie pro realizaci senzorové sítě je založen na požadavcích: Nízká cena HW, jednoduchost přípojení zařízení třetích stran dostupných na trhu, velký počet těchto zařízení dostupných na trhu, jednoduchost implementace senzorové sítě a nízká spotřeba koncových zařízení.

S uvážením těchto kritérií byla vybrána jednokanálová LoRa se síťovým protokolem LoRaWAN

## 4 
Datove omezeni protokolu CKP



## 5
Prototyp gatewaye je složen z hotových plošných desek.
Převodník RS485 na UART, deska s mikrokontrolérem STM32, architektury ARM Cortex-M0+ a LoRa transceiver s transceiverem od SEMTECHu, umístěn na desce, která má stejný pinout jako mikrokontrolérová deska.

## 6
SW návrh jsem rozdělil na několik nezávislých modulů, tedy:
LoRa driver pro transceiver,
LW packet implementuje LoRaWAN protokol,
knihovna pro implementaci CKP protokolu v síti RS485
dále modul pro komunikaci přes USB zajištující konfiguraci gatewaye
a modul EEPROM, pro ukládání konfigurace gatewaye do paměti

Navíc jsou použity mé knihovny pro cyklický buffer, práci s řadami bajtů a linkd list.

Dále jsou použity open-source knihovny pro šifrování AES a výpo CMAC.


## 7
Realizovaný návrh byl testován tady na FELu v jednom bloku patra viz obrázek půdorisu.
Je zde jedna RS485 síť s jedním kontrolním panelem a dvanácti CKP zařízeními. 
Do této sítě byla připojena navržená gateway a k ní byly připojeny 2 bezdrátové LoRa senzory odesílající data jednou za 5 minut.




## 8

za běžného provozu po dobu delší než jeden měsíc, po tuto dobu byly zaznamenávány přenášené data v síti RS485.





## 0
## 0
## 0

