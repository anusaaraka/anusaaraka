
(defrule stress0
(declare (salience 5000))
(id-root ?id stress)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id stressed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xabAva_se_pIdiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  stress.clp  	stress0   "  ?id "  xabAva_se_pIdiwa )" crlf))
)

;"stressed","Adj","1.xabAva se pIdiwa"
;Students feel stressed under heavy pressure of work.
;
(defrule stress1
(declare (salience 4900))
(id-root ?id stress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balAGAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stress.clp 	stress1   "  ?id "  balAGAwa )" crlf))
)

;"stress","N","1.balAGAwa"
;--"2.bala"
;She put stress on the need of extra security in the border areas.
;--"3.xabAva"
;Due to long working hours Ramu is always under stress.
;
(defrule stress2
(declare (salience 4800))
(id-root ?id stress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bala_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stress.clp 	stress2   "  ?id "  bala_xe )" crlf))
)

;"stress","V","1.bala_xenA"
;India should stress more on providing employment.
;
