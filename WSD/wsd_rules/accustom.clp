
(defrule accustom0
(declare (salience 5000))
(id-root ?id accustom)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id accustomed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aByaswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  accustom.clp  	accustom0   "  ?id "  aByaswa )" crlf))
)

;"accustomed","Adj","1.aByaswa"
;His accustomed thoroughness of work impressed me.
;
(defrule accustom1
(declare (salience 4900))
(id-root ?id accustom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aByaswa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accustom.clp 	accustom1   "  ?id "  aByaswa_ho )" crlf))
)

;"accustom","VT","1.aByaswa_honA"
;He quickly accustomed himself to this new way of life.
;
;
