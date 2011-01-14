
(defrule stalwart0
(declare (salience 5000))
(id-root ?id stalwart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niRTAvAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stalwart.clp 	stalwart0   "  ?id "  niRTAvAna )" crlf))
)

(defrule stalwart1
(declare (salience 4900))
(id-root ?id stalwart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niRTAvAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stalwart.clp 	stalwart1   "  ?id "  niRTAvAna )" crlf))
)

;"stalwart","Adj","1.niRTAvAna"
;He is one of the most stalwart worker of our company.
;
;