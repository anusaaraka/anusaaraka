
(defrule stable0
(declare (salience 5000))
(id-root ?id stable)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id stabling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aswabala_meM_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  stable.clp  	stable0   "  ?id "  aswabala_meM_sWAna )" crlf))
)

;"stabling","N","1.aswabala meM sWAna"
;There was a stabling for forty.
;
(defrule stable1
(declare (salience 4900))
(id-root ?id stable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stable.clp 	stable1   "  ?id "  sWira )" crlf))
)

;"stable","Adj","1.sWira"
;His condition has become more stable than before.
;--"2.sanwuliwa"
;After the accident her mind has not been stable.
;--"3.sWAyI"
;The chemistry teachers was explanning us about stable compounds.
;
(defrule stable2
(declare (salience 4800))
(id-root ?id stable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aSvaSAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stable.clp 	stable2   "  ?id "  aSvaSAlA )" crlf))
)

;"stable","N","1.aSvaSAlA"
;The horses broke through the stables door.
;
