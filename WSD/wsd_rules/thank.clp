

;Added by Meena(4.11.09)
;We thank you all for coming this evening . 
(defrule thank0
(declare (salience 5000))
(id-root ?id thank)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
;(kriyA-for_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XanyavAxa_xe))
;(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thank.clp       thank0   "  ?id "  XanyavAxa_xe )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  thank.clp      thank0   "  ?id " ko )" crlf)
)
)

