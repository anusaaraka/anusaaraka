
(defrule ripple0
(declare (salience 5000))
(id-root ?id ripple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotI_waraMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ripple.clp 	ripple0   "  ?id "  CotI_waraMga )" crlf))
)

;"ripple","N","1.CotI_waraMga"
;He threw a stone into the lake && watched the ripples spread.
;
(defrule ripple1
(declare (salience 4900))
(id-root ?id ripple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ripple.clp 	ripple1   "  ?id "  laharA )" crlf))
)

;"ripple","VTI","1.laharAnA"
;Flowers are rippling in the breeze.        
;
