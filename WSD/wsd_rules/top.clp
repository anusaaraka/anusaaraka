
;Added by Meena(18.9.10)
;In the first experiment , a large magnet and a small magnet are weighed separately , and then one magnet is hung from the pan of the top balance so that it is directly above the other magnet . 
(defrule top00
(declare (salience 5000))
(id-root ?id top)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 ?)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  top.clp       top00   "  ?id "  Upara_vAlA )" crlf))
)


;Added by Meena(27.7.10)
;She was standing at the top of the stairs . 
(defrule top0
(declare (salience 5000))
(id-root ?id top)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 stairs)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UparI_sirA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  top.clp       top0   "  ?id "  UparI_sirA )" crlf))
)

(defrule top1
(declare (salience 4900))
(id-root ?id top)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 muzha_waka_Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " top.clp	top1  "  ?id "  " ?id1 "  muzha_waka_Bara  )" crlf))
)

(defrule top2
(declare (salience 4800))
(id-root ?id top)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upara_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  top.clp 	top2   "  ?id "  upara_dAla )" crlf))
)

;default_sense && category=verb	Upara_dAla	0
;"top","VT","1.Upara_dAlanA"
;You top the cake with cream && chocolate.
;--"2.SiKara_para_pahuzcanA"
;We topped the mountain to have a clear view.
;--"3.se_baDakara_rahanA"
;He has topped the list by securing majority of votes.
;--"5.niSAna_CUtanA [golPa_meM]"
;He lost the game because he topped the ball in the last round.
;
;LEVEL 
;Headword : top
;
;
;Examples --
;
;"top","Adj","1.sarvocca_sWAna"
;All his relatives have occupied the top positions in the company.
;usake parivAra ke saBI saxasyoM ne kampanI ke sarvocca_sWAnoM ko Gera liyA hE.
;--"2.muKya"
;He is a top man in the management.
;vaha prabanXa_vyavasWA kA eka pramuKa vyakwi hE.
;
;"top","N","1.UparI_BAga"
;The mower cuts off the tops of the grass.
;lOYna moara GAsa ke UparI BAga ko kAta xewA hE.
;--"2.Upara"
;Put your books on top of the desk.
;apanI kiwAbeM deska ke Upara para raKa xo. 
;--"3.lattU"
;The boy is playing with a top.
;ladZakA lattU se Kela_rahA_hE.
;--"4.paMcama_svara"
;The girl shouted at the top of her voice when the intruder entered.
;jaba anajAnA_AxamI(GusapETiyA) GusA wo ladZakI paMcama_svara meM cillAyI
;--"5.kurwA"
;He got a bright red top && a bead string for his birthday.
;use apane janmaxina para eka BadZakIlA lAla kurwA Ora eka mowiyoM kI mAlA milI. 
;--"6.Dakkana"
;He removed the top of the carton.
;usane dibbe kA Dakkana hatA xiyA.
;
;"top","VT","1.Upara_lagAnA"
;You top the cake with cream && chocolate.
;wuma keka ke Upara krIma Ora cOYkaleta lagAo. 
;--"2.SiKara_para_pahuzcanA"
;We topped the mountain to have a clear view.
;spaRta xqSya ke liye hama pahAdZa ke SiKara para pahuzce.
;He has topped the list by securing majority of votes.
;aXikawara vota pAkara vaha sUcI ke SiKara para hE. 
;--"3.niSAna_cUkanA{golPa_meM}"
;He lost the game because he topped the ball in the last round.
;vaha Kela meM hAra gayA kyoMki anwima rAuMda meM vaha geMxa kA niSAnA cUka gayA.
;
;
;Upara xiye uxAharaNoM se 'top' Sabxa kA eka spaRta arWa jo uBara kara AwA hE vaha hE 'Upara_honA' yA 'UparI_BAga'. isake SeRa saBI asambanXiwa arWa isI se judZe hue hEM.
;
;anwarnihiwa sUwra ;
;
;sarvocca_sWAna -UparI_BAga{SiKara, SIrRa}-UparI hisse para jo howA hE vaha {Dakkana, kurwA}--UparI hisse se sambanXiwa kriyA {Upara jAnA, Upara lagAnA, Upara se nikala jAnA(niSAna_cUkanA)}
;
;
;kinwu isake kaI arWoM ke liye hinxI meM BI 'tOYpa' kAPI pracaliwa ho gayA hE.
;awaH PilahAla isakA sUwra hogA --
;
;sUwra : tOYpa`
;
