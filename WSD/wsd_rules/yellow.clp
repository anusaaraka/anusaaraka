
(defrule yellow0
(declare (salience 5000))
(id-root ?id yellow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yellow.clp 	yellow0   "  ?id "  pIlA )" crlf))
)

;"yellow","Adj","1.pIlA"
(defrule yellow1
(declare (salience 4900))
(id-root ?id yellow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIlA_raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yellow.clp 	yellow1   "  ?id "  pIlA_raMga )" crlf))
)

;"yellow","N","1.pIlA_raMga"
;Sita's saree is yellow.




;Added by Meena(18.01.10)
;The pages of the book were yellowed with age . 
(defrule yellow2
(declare (salience 4800))
(id-root ?id yellow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIlA_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yellow.clp    yellow2   "  ?id "  pIlA_padZa )" crlf))
)



;Salience reduced by Meena(18.01.10)
(defrule yellow3
(declare (salience 0))
;(declare (salience 4800))
(id-root ?id yellow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIlA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yellow.clp 	yellow3   "  ?id "  pIlA_kara )" crlf))
)

;"yellow","VTI","1.pIlA_karanA"
;The pages of the book were yellowed with age.
;
