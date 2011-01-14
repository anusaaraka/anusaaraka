; Added by Amba
(defrule lady0
(declare (salience 5000))
(id-root ?id lady)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 companion)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lady.clp 	lady0   "  ?id "  mahilA )" crlf))
)

(defrule lady1
(declare (salience 4900))
(id-root ?id lady)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lady.clp 	lady1   "  ?id "  mahilA )" crlf))
)

; Her lady companion was smart.
;default_sense && category=noun	BaxramahilA	0
;"lady","N","1.BaxramahilA"
;She is a fine lady.
;
;
