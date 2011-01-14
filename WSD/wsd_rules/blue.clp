
(defrule blue0
(declare (salience 5000))
(id-root ?id blue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blue.clp 	blue0   "  ?id "  nIlA )" crlf))
)

(defrule blue1
(declare (salience 4900))
(id-root ?id blue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIlA_raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blue.clp 	blue1   "  ?id "  nIlA_raMga )" crlf))
)

;default_sense && category=noun	nIlA_raMga	0
;"blue","N","1.nIlA_raMga"
;The sky is blue in colour.
;--"2.upAXi"
;He got blue for football.
;--"3.uxAsa_saMgIwa"
;Blue music is still very popular.
;
;
