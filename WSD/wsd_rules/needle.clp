
(defrule needle0
(declare (salience 5000))
(id-root ?id needle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  needle.clp 	needle0   "  ?id "  suI )" crlf))
)

;"needle","N","1.suI"
;She used a very fine needle for the embroidery.
;
(defrule needle1
(declare (salience 4900))
(id-root ?id needle)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  needle.clp 	needle1   "  ?id "  pareSAna_kara )" crlf))
)

(defrule needle2
(declare (salience 4800))
(id-root ?id needle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  needle.clp 	needle2   "  ?id "  pareSAna_ho )" crlf))
)

;"needle","VI","1.pareSAna_karanA[honA]"
;Don't needle that boy.
;
