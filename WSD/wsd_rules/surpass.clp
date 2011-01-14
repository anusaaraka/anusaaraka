
(defrule surpass0
(declare (salience 5000))
(id-root ?id surpass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id surpassing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id SreRTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  surpass.clp  	surpass0   "  ?id "  SreRTa )" crlf))
)

;"surpassing","Adj","1.SreRTa"
;There is a scenery of surpassing beauty.
;
(defrule surpass1
(declare (salience 4900))
(id-root ?id surpass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_nikala_jZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surpass.clp 	surpass1   "  ?id "  Age_nikala_jZA )" crlf))
)

;"surpass","V","1.Age nikala jZAnA"
;Geetika worked so hard that she surpassed Neha.
;
;