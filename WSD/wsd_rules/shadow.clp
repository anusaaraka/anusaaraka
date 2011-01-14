
(defrule shadow0
(declare (salience 5000))
(id-root ?id shadow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAyAvaw))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shadow.clp 	shadow0   "  ?id "  CAyAvaw )" crlf))
)

;"shadow","Adj","1.CAyAvaw"
;The shadow ministers helped in solving the scandals of ministers of ruling party.
;



;Modified by Meena (31.8.09)
;changed the spelling "paraCAzI to paraCAI" , as there were different spellings for paraCAI in this rule and in the file female_list.txt(paraCAIM)
; The shadow travels with the sun. 
(defrule shadow1
(declare (salience 4900))
(id-root ?id shadow)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraCAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shadow.clp 	shadow1   "  ?id "  paraCAI )" crlf))
)




;"shadow","N","1.paraCAzI"
;--"2.paraCAI"
;The chair cast a shadow on the wall.
;--"3.CAyA"
;She has shadows under her eyes as she has been suffering from lack of sleep.
;--"4.CAyABAsa/marIcikA"
;You can't spend your life chasing shadows.
;
(defrule shadow2
(declare (salience 4800))
(id-root ?id shadow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAyA_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shadow.clp 	shadow2   "  ?id "  CAyA_dAla )" crlf))
)

(defrule shadow3
(declare (salience 4700))
(id-root ?id shadow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAyA_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shadow.clp 	shadow3   "  ?id "  CAyA_padZa )" crlf))
)

;"shadow","V","1.CAyA_dAlanA[padZanA]"
;Her face was shadowed by a wide-brimmed hat.
;--"2.pICe_laganA"
;He was shadowed by the police.
;
