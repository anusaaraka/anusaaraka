
(defrule bare0
(declare (salience 5000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anAvqwwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bare.clp 	bare0   "  ?id "  anAvqwwa )" crlf))
)

; She kept a pea on the bare bedstead.
; default_sense && category=a pralata	0
(defrule bare1
(declare (salience 4900))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirvaswra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bare.clp 	bare1   "  ?id "  nirvaswra_kara )" crlf))
)

;"bare","V","1.nirvaswra_karanA"
;She bared her veiled face.
;--"2.prakata_karanA"
;He bared the facts of the case before the Jury.
;
;
