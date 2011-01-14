
(defrule garb0
(declare (salience 5000))
(id-root ?id garb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id garbed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id viSeRa_prakAra_se_kapadZe_pahananA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  garb.clp  	garb0   "  ?id "  viSeRa_prakAra_se_kapadZe_pahananA )" crlf))
)

;"garbed","Adj","1.viSeRa_prakAra_se_kapadZe_pahananA"
;All of them were garbed in white in the funeral ceremony.
;
(defrule garb1
(declare (salience 4900))
(id-root ?id garb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id poSAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  garb.clp 	garb1   "  ?id "  poSAka )" crlf))
)

;"garb","N","1.poSAka"
;He was in the military garb.
;
;