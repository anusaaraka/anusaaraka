
(defrule panel0
(declare (salience 5000))
(id-root ?id panel)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id panelling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cOKatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  panel.clp  	panel0   "  ?id "  cOKatA )" crlf))
)

;"panelling","N","1.cOKatA"
;The rooms furnished with oak paneling are now in fashion.
;
(defrule panel1
(declare (salience 4900))
(id-root ?id panel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waKwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  panel.clp 	panel1   "  ?id "  waKwA )" crlf))
)

;"panel","N","1.waKwA`"
;--"2.Palaka"
;The door with painted panels looks beautiful.
;--"3.BAga"
;There are lace panels on all corners of my night suit.
;--"4.pEnala"
;Due to the defect in control panel , the aircraft has to land in midway.
;--"5.xala"
;The panel of judges in SC sat down to solve the case of Jaisika Lal.
;
(defrule panel2
(declare (salience 4800))
(id-root ?id panel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xillA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  panel.clp 	panel2   "  ?id "  xillA_lagA )" crlf))
)

;"panel","V","1.xillA_lagAnA"
;During deepawali, we panel our house in all possible manners.
;
;LEVEL 
;
;
;Headword : panel
;-------
;
;tukadA (list)
;1.Palaka
;    A strip of wood,glass or metal (Palaka)
;   Carpenter makes the door with the wood panels.
;   baDaI lakadI ke Palaka se xaravAjA banAwA hE. 
;2. nAmasUcI
;   The panel has been made for the successful candidates.
;   saPala parIkRArarWiyoM kI eka nAmasUcI wEyAra kara lI gayI hE.
;3.tIma  
;   A panel of cricket players will be declared tomorrow.
;   kriketa KilAdiMyoM kI eka nAmasUcI kala GoRiwa kI jAegI.
;4. kalI 
;   The sleeves of the shirt had lace panels.
;   kamIjZa kI bAzhoM meM lesa kI kaliyAz lagI WIM  
;5. gAdI kA bAharI Prema
;   The panel of the truck is very strong.
;   traka kA bAhArI hisA meM lagAyA huA XAwu kA tukadA wagadA hE.  
;
;wood panels, panel for succeeding candidate, panel of players, lace panels
;     panel of the truck.
;
;ina uxAharaNoM ke AXAra para usa Sabxa kA sUwra ese banAez :-
;
;sUwra : Palaka`[pEnala]
;
