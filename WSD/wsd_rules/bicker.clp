
(defrule bicker0
(declare (salience 5000))
(id-root ?id bicker)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JagadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bicker.clp 	bicker0   "  ?id "  JagadZA )" crlf))
)

;"bicker","N","1.JagadZA"
;I get jittery when I see the bicker of children.
;
(defrule bicker1
(declare (salience 4900))
(id-root ?id bicker)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JagadZA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bicker.clp 	bicker1   "  ?id "  JagadZA_kara )" crlf))
)

;"bicker","VT","1.JagadZA_karanA"
;Children keep bickering all the time.
;
