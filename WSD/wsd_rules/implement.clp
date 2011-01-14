;Added by sheetal(12-12-2009).
(defrule implement0
(declare (salience 5000))
(id-root ?id implement)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verbal_noun)
(id-root ?id1 ease)
(kriyA-by_saMbanXI ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAgU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " implement.clp  implement0  "  ?id "  lAgU_kara  )" crlf))
)
;He eased the burden of debt by implementing many schemes .

