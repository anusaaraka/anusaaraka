
(defrule kid0
(declare (salience 5000))
(id-root ?id kid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baccA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kid.clp 	kid0   "  ?id "  baccA )" crlf))
)

(defrule kid1
(declare (salience 4900))
(id-root ?id kid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kid.clp 	kid1   "  ?id "  Cala )" crlf))
)

;default_sense && category=verb	pareSAna_kara	0
;"kid","V","1.pareSAna_karanA"
;He is kidding his sister.
;--"2.XoKA_xenA
;He kidded his friend that he is not well.
;--"3.majZAka_karanA
;Don't take it seriously, I am just kidding.
;
;