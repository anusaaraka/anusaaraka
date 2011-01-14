
(defrule aesthetic0
(declare (salience 5000))
(id-root ?id aesthetic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalApAraKI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aesthetic.clp 	aesthetic0   "  ?id "  kalApAraKI )" crlf))
)

(defrule aesthetic1
(declare (salience 4900))
(id-root ?id aesthetic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sOMxarya_paraKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aesthetic.clp 	aesthetic1   "  ?id "  sOMxarya_paraKa )" crlf))
)

;"aesthetic","Adj","1.sOMxarya_paraKa"
;His house is very beautiful because he has a good sense of aestheticr.
;--"2.sOMxaryapremI"
;He is a very aesthetic person.
;--"3.surucipUrNa"
;She makes very aesthetic designs using her computer.
;
;
;LEVEL 
;
;
;Headword : aesthetics
;
;Examples --
;"aesthetic","Adj","1.sOMxarya_paraKa"  <--sOnxaryaboXI<--kalApAraKI
;His house is very beautiful because he has a good sense of aestheticr.
;usakA Gara bahuwa sunxara hE kyoMki vaha sOnxarya kI paraKa acCI hE.
;
;--"2.sOMxaryapremI"  <--kalApAraKI
;He is a very aesthetic person.
;vaha eka sOnxaryapremI hE.
;
;--"3.surucipUrNa"  <--kalApAraKI
;She makes very aesthetic designs using her computer.
;vaha apane kampyUtara kA prayoga karawe hue bahuwa surucipUrNa namUne banAwI hE.
;
;"aesthetics","N","1.sOMxarya_SAswra"
;He is an active && known personality in aesthetics.
;vaha sOnxaryaSAswra meM eka kriyASIla Ora jAnI pahacAnI hasWI hEM.                         
;        ki kalA Axi meM sOnxarya ko sarvopari mahawva xenevAla
;  nota:--    uparyukwa "aesthetic"Sabxa kA viSeRaNa va saMjFA meM yahIBAvaprakata howA hE           ki kalA Axi meM sOnxarya ko sarvopari mahawva xene vAlA kalApAraKI hE   
;            
;           sUwra : sOnxarya_SAswra[<kalApAraKI] 
;                                               
;
