
(defrule handle0
(declare (salience 5000))
(id-root ?id handle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id handling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id prabanXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  handle.clp  	handle0   "  ?id "  prabanXa )" crlf))
)

;"handling","N","1.prabanXa"
;Parents handling of the case was not proper.
;
(defrule handle1
(declare (salience 4900))
(id-root ?id handle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id handled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id hawWA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  handle.clp  	handle1   "  ?id "  hawWA_lagA )" crlf))
)

;"handled","Adj","1.hawWA lagA"
;yaha cAkU hAWIxAzwa"handled"wAlA hE. 
;
;
(defrule handle2
(declare (salience 4800))
(id-root ?id handle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samBAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  handle.clp 	handle2   "  ?id "  samBAla )" crlf))
)

;default_sense && category=verb	hAWa se CU	0
;"handle","V","1.hAWa se CUnA"
;dAinAmAida eka KawaranAka visPotaka hE jise sAvaXAnI se Handle karanA hE 
;--"2.prabanXa karanA"
;vakIla ne apane muvakkila kA kesa cawurAI se"handle"kiyA. 
;
;
