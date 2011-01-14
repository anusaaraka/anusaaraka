
(defrule moan0
(declare (salience 5000))
(id-root ?id moan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  moan.clp 	moan0   "  ?id "  karAha )" crlf))
)

;"moan","N","1.karAha"
;No one could understand his moan of pain.
;
(defrule moan1
(declare (salience 4900))
(id-root ?id moan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Soka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  moan.clp 	moan1   "  ?id "  Soka_kara )" crlf))
)

;"moan","V","1.Soka_karanA"
;Don't moan over what has happened, think ahead.
;
