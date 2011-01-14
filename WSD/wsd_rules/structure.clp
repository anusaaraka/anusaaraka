
(defrule structure0
(declare (salience 5000))
(id-root ?id structure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMracanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  structure.clp 	structure0   "  ?id "  saMracanA )" crlf))
)

;"structure","N","1.saMracanA/nirmANa"
;Subject,verb && object are parts of the structure of a sentence.
;--"2.DAzcA"
;Our body is a structure of bones && flesh.
;
(defrule structure1
(declare (salience 4900))
(id-root ?id structure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id racanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  structure.clp 	structure1   "  ?id "  racanA_kara )" crlf))
)

;"structure","V","1.racanA_karanA"
;To get success movements should be structured.
;
