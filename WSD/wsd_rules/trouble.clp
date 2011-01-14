
(defrule trouble0
(declare (salience 5000))
(id-root ?id trouble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trouble.clp 	trouble0   "  ?id "  pareSAnI )" crlf))
)

(defrule trouble1
(declare (salience 4900))
(id-root ?id trouble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trouble.clp 	trouble1   "  ?id "  pareSAna_kara )" crlf))
)

;"trouble","VT","1.pareSAna_karanA"
;The sprain in my neck is troubling me.
;--"2.namrawApUrvaka_nivexana_karanA"
;He took the book away without even troubling to ask.
;May I trouble you for the newspaper?.
;
;