
(defrule rake0
(declare (salience 5000))
(id-root ?id rake)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id raked )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Age_kI_ora_DZAlU_honA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rake.clp  	rake0   "  ?id "  Age_kI_ora_DZAlU_honA )" crlf))
)

;"raked","Adj","1.Age_kI_ora_DZAlU_honA"
;The seat backs of the car is raked for extra comfort.   
;
(defrule rake1
(declare (salience 4900))
(id-root ?id rake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rake.clp 	rake1   "  ?id "  pAzcA )" crlf))
)

;"rake","N","1.pAzcA{GAsa_jamA_karane_kA_OjZAra}"
;He uses rake for collecting fallen leaves.
;--"2.xurAcArI"
;He is a rake,roams with many women.  
;
(defrule rake2
(declare (salience 4800))
(id-root ?id rake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jamA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rake.clp 	rake2   "  ?id "  jamA_kara )" crlf))
)

;"rake","VTI","1.jamA_karanA"
;She raked up the grass cuttings.
;He has been raking money ever since he started the new venture.
;--"2.walASa_karanA"
;He raked the almirah for the missing letter.
;--"3.gole_xAganA"
;They raked an enemy trench with machine gun fire. 
;
