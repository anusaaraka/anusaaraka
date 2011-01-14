
;Go ask the guy over there.
(defrule there0
(declare (salience 5000))
(id-root ?id there)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) is|are|be|was|were|been|am
)=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  there.clp 	there0   "  ?id "  - )" crlf))
)

(defrule there1
(declare (salience 4900))
(id-root ?id there)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) over)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vahAz_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  there.clp 	there1   "  ?id "  vahAz_para )" crlf))
)

;category=EX	-	0
;POS taggers make mistakes in assigning EX tag, hence above line is commented.
(defrule there2
(declare (salience 4800))
(id-root ?id there)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vahAz_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  there.clp 	there2   "  ?id "  vahAz_para )" crlf))
)

;"there","Adv","1.vahAz_para"
;He went there in the morning.
;--"2.vaha{kriyA_SabxoM_ke_sAWa_bala_xene_ke_lie}"
;There goes the last bus.
;
(defrule there3
(declare (salience 4700))
(id-root ?id there)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id interjection)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lo-xeKo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  there.clp 	there3   "  ?id "  lo-xeKo )" crlf))
)

;"there","Interj","1.lo-xeKo{prowsAhana/pareSAna_karanA}"
;There you are!You will make it.
;

;Added by Meena(4.02.10)
;There seems to be no acceleration in the rate of Indian economic growth .
(defrule there4
(declare (salience 5000))
(id-root ?id there)
?mng <-(meaning_to_be_decided ?id)
(kriyA-dummy_subject  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  there.clp     there4   "  ?id "  - )" crlf))
)

(defrule there5
(declare (salience 4600))
(id-root ?id there)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vahAz_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  there.clp 	there5   "  ?id "  vahAz_para )" crlf))
)

