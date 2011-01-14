
(defrule savour0
(declare (salience 5000))
(id-root ?id savour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  savour.clp 	savour0   "  ?id "  svAxa )" crlf))
)

;"savour","N","1.svAxa"
;The delicious savour of gulabjamun attracts me.
;
(defrule savour1
(declare (salience 4900))
(id-root ?id savour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasanxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  savour.clp 	savour1   "  ?id "  pasanxa_kara )" crlf))
)

;"savour","V","1.pasanxa_karanA"
;I like to savour the rewards of success.
;
