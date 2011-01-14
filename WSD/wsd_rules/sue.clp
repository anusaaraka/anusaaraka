
(defrule sue0
(declare (salience 5000))
(id-root ?id sue)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id proper_noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id syu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sue.clp 	sue0   "  ?id "  syu )" crlf))
)

(defrule sue1
(declare (salience 4900))
(id-root ?id sue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_para_mukaxamA_kAyama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sue.clp 	sue1   "  ?id "  kisI_para_mukaxamA_kAyama_kara )" crlf))
)

;"sue","V","1.kisI para mukaxamA kAyama karanA"
;She's suing for a divorse.
;--"2.kisI se nivexana"
;She's suing for a peace.
;
;
