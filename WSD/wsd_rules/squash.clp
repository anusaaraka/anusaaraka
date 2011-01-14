
(defrule squash0
(declare (salience 5000))
(id-root ?id squash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sarabawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squash.clp 	squash0   "  ?id "  Sarabawa )" crlf))
)

;"squash","N","1.Sarabawa"
;A chilled glass of orange squash.
;--"2.skvASa{Kela}"
;I enjoy playing squash.
;--"3.kumhadZA"
;Pumpkins are vanities of squash.
;
(defrule squash1
(declare (salience 4900))
(id-root ?id squash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BurawA_banA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squash.clp 	squash1   "  ?id "  BurawA_banA_xe )" crlf))
)

;"squash","V","1.BurawA_banA_xenA"
;Tomatoes are easier to squash than potatoes.
;--"2.wiraskAra_karanA"
;His plans were squashed by his new boss.
;--"3.XakiyA_kara_GusanA"
;You should not try && squash inside the hall at once.
;
