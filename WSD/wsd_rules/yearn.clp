
(defrule yearn0
(declare (salience 5000))
(id-root ?id yearn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id yearning )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  yearn.clp  	yearn0   "  ?id "  cAha )" crlf))
)

;"yearning","N","1.cAha"
;I'm yearnig to go home.
;
(defrule yearn1
(declare (salience 4900))
(id-root ?id yearn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id icCA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yearn.clp 	yearn1   "  ?id "  icCA_kara )" crlf))
)

;"yearn","VTI","1.icCA_karanA"
;I yearn to become a pilot.
;
;