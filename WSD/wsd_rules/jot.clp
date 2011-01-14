
(defrule jot0
(declare (salience 5000))
(id-root ?id jot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jot.clp 	jot0   "  ?id "  kaNa )" crlf))
)

;"jot","N","1.kaNa"
;There is not a jot of truth in what you say.
;
(defrule jot1
(declare (salience 4900))
(id-root ?id jot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalxI_se_liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jot.clp 	jot1   "  ?id "  jalxI_se_liKa )" crlf))
)

;"jot","V","1.jalxI_se_liKanA"
;I jot down the important points during discussion.
;
