
(defrule negative0
(declare (salience 5000))
(id-root ?id negative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakArAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  negative.clp 	negative0   "  ?id "  nakArAwmaka )" crlf))
)

;"negative","Adj","1.nakArAwmaka"
;He gave a negative reply.
;He is very negative in his approach.
;
(defrule negative1
(declare (salience 4900))
(id-root ?id negative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  negative.clp 	negative1   "  ?id "  nakAra )" crlf))
)

;"negative","N","1.nakAra"
;He spoke in the negative.
;--"2.nigetiva{Poto_kA}"
;I do not know where I have kept the negatives of these photographs.
;

;Added by sheetal(1-10-09).
(defrule negative2
(declare (salience 4950))
(id-root ?id negative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 comment)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakArAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " negative.clp negative2 " ?id " nakArAwmaka )" crlf))
)
;He made negative comments to the press .
