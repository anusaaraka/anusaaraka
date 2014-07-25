;Added by Meena(5.02.10)
;They are building a gigantic mall five miles from here .
(defrule mile0
(declare (salience 5000))
(id-root ?id mile)
?mng <-(meaning_to_be_decided ?id)
(or (viSeRya-saMKyA_viSeRaNa  ?id ?)(viSeRya-det_viSeRaNa ?id ?));'viSeRya-det_viSeRaNa' added by sheetal
;(saMjFA-from_viBakwi  ?id ?id1);Commented by Sukhada. This fact doesn't exist anymore.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mIla_xUra))
(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jam.clp       jam0   "  ?id "  mIla_xUra )" crlf));Commented by Sukhada
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mile.clp       mile0 "  ?id "  mIla_xUra )" crlf))
)

;===========Default-rule=====================
;@@@ Added by Nandini (22-11-13)
;Deserts extend to many miles.
;regiswAna bahuwa sAre mIloM ko baDawe hEM.
;I have miles to go.
;muJe mIloM jAna hE.
(defrule mile1
(declare (salience 50))
(id-root ?id mile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mile.clp       mile1 "  ?id "  mIla )" crlf))
)

;@@@ Added by Nandini(8-1-14)
;The beach is a mile away. [via mail]
;samuxrawata mIla xUra hE.
(defrule mile2
(declare (salience 5050))
(id-root ?id mile)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id ?id1)
(id-word ?id1 a)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 eka_mIla))
(if ?*debug_flag* then
(printout wsd_fp "(affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	mile2  "  ?id "  " ?id1 "  eka_mIla )" crlf))
)
