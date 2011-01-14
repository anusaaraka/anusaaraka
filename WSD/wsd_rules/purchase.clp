
(defrule purchase0
(declare (salience 5000))
(id-root ?id purchase)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarIxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  purchase.clp 	purchase0   "  ?id "  KarIxa )" crlf))
)

;"purchase","N","1.KarIxa"
;A purchase order sent by the G.M..
;--"2.pakada"
;You can't get purchase on flat-surface.
;
(defrule purchase1
(declare (salience 4900))
(id-root ?id purchase)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarIxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  purchase.clp 	purchase1   "  ?id "  KarIxa )" crlf))
)

;"purchase","V","1.KarIxa"
