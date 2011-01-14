
(defrule streamline0
(declare (salience 5000))
(id-root ?id streamline)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pravAhamArga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  streamline.clp 	streamline0   "  ?id "  pravAhamArga )" crlf))
)

;"streamline","N","1.pravAhamArga"
(defrule streamline1
(declare (salience 4900))
(id-root ?id streamline)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pravAhapUrNa_ba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  streamline.clp 	streamline1   "  ?id "  pravAhapUrNa_ba )" crlf))
)

;"streamline","V","1.pravAhapUrNa_banA"
