
(defrule judge0
(declare (salience 5000))
(id-root ?id judge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nyAyAXISa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  judge.clp 	judge0   "  ?id "  nyAyAXISa )" crlf))
)

(defrule judge1
(declare (salience 4900))
(id-root ?id judge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirNaya_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  judge.clp 	judge1   "  ?id "  nirNaya_le )" crlf))
)

;"judge","V","1.nirNaya_lenA"
;You cannot judge a man by his face.
;
;

;Added by Prachi Rathore[29-11-13]
;The panel of judges at the flower show.
(defrule judge2
(declare (salience 5000))
(id-root ?id judge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirNAyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  judge.clp 	judge2   "  ?id "  nirNAyaka )" crlf))
)

;;Added by Prachi Rathore[29-11-13]
;She's a good judge of character.[oald]
;वह चरित्र की एक अच्छी जानकार है . 
(defrule judge3
(declare (salience 5000))
(id-root ?id judge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  judge.clp 	judge3   "  ?id "  jAnakAra )" crlf))
)
