
(defrule muster0
(declare (salience 5000))
(id-root ?id muster)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAjZirI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  muster.clp 	muster0   "  ?id "  hAjZirI )" crlf))
)

;"muster","N","1.hAjZirI"
;He was thrown in the brig for missing muster
;
(defrule muster1
(declare (salience 4900))
(id-root ?id muster)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekawriwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  muster.clp 	muster1   "  ?id "  ekawriwa_ho )" crlf))
)

;"muster","VI","1.ekawriwa_honA"
(defrule muster2
(declare (salience 4800))
(id-root ?id muster)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikaTTA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  muster.clp 	muster2   "  ?id "  ikaTTA_kara )" crlf))
)

;"muster","VT","1.ikaTTA_karanA"
;Muster the courage to do something
;
