
(defrule jag0
(declare (salience 5000))
(id-root ?id jag)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id jagged )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nukIlI_XAravAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  jag.clp  	jag0   "  ?id "  nukIlI_XAravAlA )" crlf))
)

;"jagged","Adj","1.nukIlI_XAravAlA"
;The broken glasses have jagged edges.
;
(defrule jag1
(declare (salience 4900))
(id-root ?id jag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAzwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jag.clp 	jag1   "  ?id "  xAzwA )" crlf))
)

;"jag","N","1.xAzwA"
;The jags of the rock are very frightening.
;
;