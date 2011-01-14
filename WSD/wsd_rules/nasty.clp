
(defrule nasty0
(declare (salience 5000))
(id-root ?id nasty)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apriya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nasty.clp 	nasty0   "  ?id "  apriya )" crlf))
)

(defrule nasty1
(declare (salience 4900))
(id-root ?id nasty)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nasty.clp 	nasty1   "  ?id "  burA )" crlf))
)

;"nasty","Adj","1.burA/hqxayahIna"
;He passed a nasty remark on her. 
;This is a nasty stain on my shirt.
;He is a nasty boy.
; 
;"natal","Adj","1.janma_saMbaMXI"
;The child had this problem right from the pre-natal stage. 
;
;
