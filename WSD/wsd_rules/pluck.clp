
(defrule pluck0
(declare (salience 5000))
(id-root ?id pluck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAhasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pluck.clp 	pluck0   "  ?id "  sAhasa )" crlf))
)

;"pluck","N","1.sAhasa"
;The boy showed his pluck in capturing the decoits.
;
(defrule pluck1
(declare (salience 4900))
(id-root ?id pluck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id woda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pluck.clp 	pluck1   "  ?id "  woda )" crlf))
)

;"pluck","V","1.wodanA"
;We should not pluck the flowers from the public park.
;--"2.ocanA"
;The cheff plucked && prepared the chicken to cook.
;--"3.KIMcanA"
;I plucked && showed the licence to the harassing traffic constable.
;--"4.bacAnA"
;the fisherman who were being drowned in the sea were plucked by airforce.
;
