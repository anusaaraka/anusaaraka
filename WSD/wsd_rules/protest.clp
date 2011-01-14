
(defrule protest0
(declare (salience 5000))
(id-root ?id protest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viroXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  protest.clp 	protest0   "  ?id "  viroXa )" crlf))
)

;"protest","N","1.viroXa"
;The mazdoor union staged protest against the erraneous management.
;
(defrule protest1
(declare (salience 4900))
(id-root ?id protest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viroXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  protest.clp 	protest1   "  ?id "  viroXa_kara )" crlf))
)

;"protest","V","1.viroXa_karanA"
;Opposition party protested against the PM's statement.
;
