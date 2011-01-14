
(defrule bow0
(declare (salience 5000))
(id-root ?id bow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saraka_PaMxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bow.clp 	bow0   "  ?id "  saraka_PaMxA )" crlf))
)

(defrule bow1
(declare (salience 4900))
(id-root ?id bow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bow.clp 	bow1   "  ?id "  Juka )" crlf))
)

;"bow","V","1.JukanA"
;The children bowed to the audience after the dance.
;
;