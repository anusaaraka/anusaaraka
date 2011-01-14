
(defrule irritate0
(declare (salience 5000))
(id-root ?id irritate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id irritating )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uwwejanaSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  irritate.clp  	irritate0   "  ?id "  uwwejanaSIla )" crlf))
)

;"irritating","Adj","1.uwwejanaSIla"
;She has an irritating habit.
;
(defrule irritate1
(declare (salience 4900))
(id-root ?id irritate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id irritated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id KIjA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  irritate.clp  	irritate1   "  ?id "  KIjA_huA )" crlf))
)

;"irritated","Adj","1.KIjA_huA"
;She was irritated when her maid did not turn up.
;
;
(defrule irritate2
(declare (salience 4800))
(id-root ?id irritate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gussA_xilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  irritate.clp 	irritate2   "  ?id "  gussA_xilA )" crlf))
)

;default_sense && category=verb	kRubXa_kara	0
;"irritate","VT","1.kRubXa_karanA"
;Untidiness irritates me.
;--"2.KujalI_honA"
;Aspirin irritates my stomach.
;
;
