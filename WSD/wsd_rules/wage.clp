;@@@ Added by Pramila(BU) on 25-02-2014
;The wage of sin is misery.   ;shiksharthi
;पाप का परिणाम दुःख है.
(defrule wage0
(declare (salience 5000))
(id-root ?id wage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariNAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wage.clp 	wage0   "  ?id "  pariNAma )" crlf))
)

;@@@ Added by Pramila(BU) on 25-02-2014
;They waged a compaign against untouchability.  ;shiksharthi
;उन्होंने छुआछूत के विरुद्ध अभियान छेड़ दिया.
;The rebels have waged a guerrilla war since 2007.   ;oald
;विद्रोहियों ने 2007 के बाद से एक गुरिल्ला युद्ध छेड़ दिया है.
(defrule wage1
(declare (salience 5000))
(id-root ?id wage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-against_saMbanXI  ?id ?id1)(kriyA-since_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CedZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wage.clp 	wage1   "  ?id "  CedZa_xe )" crlf))
)

(defrule wage2
(declare (salience 100))
(id-root ?id wage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majaxUrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wage.clp 	wage2   "  ?id "  majaxUrI )" crlf))
)

;"wage","N","1.majaxUrI"
;Workers get nominal wages
;
(defrule wage3
(declare (salience 100))
(id-root ?id wage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAyA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wage.clp 	wage3   "  ?id "  kirAyA_kara )" crlf))
)

;"wage","VT","1.kirAyA_karanA"
;He had to wage his flat to get money
;
