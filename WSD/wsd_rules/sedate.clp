
(defrule sedate0
(declare (salience 5000))
(id-root ?id sedate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sedate.clp 	sedate0   "  ?id "  SAnwa )" crlf))
)

;"sedate","Adj","1.SAnwa/gamBIra"
;She is a sedate old lady.
;
(defrule sedate1
(declare (salience 4900))
(id-root ?id sedate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sedate.clp 	sedate1   "  ?id "  SAnwa_kara )" crlf))
)

(defrule sedate2
(declare (salience 4800))
(id-root ?id sedate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sedate.clp 	sedate2   "  ?id "  SAnwa_ho )" crlf))
)

;"sedate","V","1.SAnwa_karanA[honA]"
;The excess drinking made the old man sedated.
;
