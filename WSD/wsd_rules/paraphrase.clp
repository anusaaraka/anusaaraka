
(defrule paraphrase0
(declare (salience 5000))
(id-root ?id paraphrase)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAvAnuvAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paraphrase.clp 	paraphrase0   "  ?id "  BAvAnuvAxa )" crlf))
)

;"paraphrase","N","1.BAvAnuvAxa"
;I need a paraphase of this topic.
;
(defrule paraphrase1
(declare (salience 4900))
(id-root ?id paraphrase)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxAnvaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paraphrase.clp 	paraphrase1   "  ?id "  paxAnvaya_kara )" crlf))
)

;"paraphrase","V","1.paxAnvaya_karanA"
