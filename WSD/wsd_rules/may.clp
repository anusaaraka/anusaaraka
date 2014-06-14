
(defrule may0
(id-root ?id may)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMBava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  may.clp 	may0   "  ?id "  saMBava )" crlf))
)

;$$$ Modified by Nandini(6-1-14)
;A rare occasion when Asutosh took part in a political demonstration was in May 1883 when he was still a student of the Presidency College.
(defrule may1
(declare (salience 4900))
(id-root ?id may)
?mng <-(meaning_to_be_decided ?id)
;(id-cat ?id proper_noun)
(id-cat_coarse ?id noun|PropN); Commented above fact and added this fact by Nandini
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  may.clp 	may1   "  ?id "  maI )" crlf))
)

;Commented this rule by Roja(27-12-13). Suggested by Sukhada. Modal verbs are handled in LWG.
;(defrule may2
;(declare (salience 4800))
;(id-root ?id may)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id modal)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id samBavawaH))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  may.clp 	may2   "  ?id "  samBavawaH )" crlf))
;)
;
;"may","MV","1.samBavawaH"
;This medicine may soothe your cough.
;
;
