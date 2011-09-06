;Added by Vivek 06th June 2011
;They listened in fascination.
; meaning is (uwsukawA)
(defrule fascination0
(declare (salience 5000))
(id-root ?id fascination)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or (kriyA-in_saMbanXI ? ?id) (kriyA-with_saMbanXI ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwsukawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fascination.clp 	fascination0   "  ?id "  banawAnA )" crlf))
)

;Added by Vivek 06th June 2011
;But what is sport's fascination? 
; meaning is (AkarRaNa)
(defrule fascination1
(declare (salience 4900))
(id-root ?id fascination)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkarRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fascination.clp 	fascination1   "  ?id "  AkarRaNa )" crlf))
)
