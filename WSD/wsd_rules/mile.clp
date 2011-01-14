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

