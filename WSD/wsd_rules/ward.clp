
(defrule ward0
(declare (salience 5000))
(id-root ?id ward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nigarAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ward.clp 	ward0   "  ?id "  nigarAnI )" crlf))
)

;"ward","Adj","1.nigarAnI"
;Mohan is a ward boy in the state hospital.
;
(defrule ward1
(declare (salience 4900))
(id-root ?id ward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ward.clp 	ward1   "  ?id "  ASriwa )" crlf))
)

;"ward","N","1.ASriwa"
;The young boy was Gita's ward.
;
(defrule ward2
(declare (salience 4800))
(id-root ?id ward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rakRA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ward.clp 	ward2   "  ?id "  rakRA_kara )" crlf))
)

;"ward","VT","1.rakRA_karanA"
;People believe that sincere prayers ward off the evils
;
