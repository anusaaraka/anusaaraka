
(defrule exact0
(declare (salience 5000))
(id-root ?id exact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exact.clp 	exact0   "  ?id "  TIka )" crlf))
)

;"exact","Adj","1.TIka"
;Give exact figures.
;--"2.SuxXa"
;--"3.nirxoRa"
;--"4.yaWArWa/samuciwa"
;An exact mind



(defrule exact1
(declare (salience 4000))
(id-root ?id exact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balapUrvaka_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exact.clp 	exact1   "  ?id "  balapUrvaka_le )" crlf))
)

;"exact","VT","1.balapUrvaka_lenA"

;@@@ Added by Pramila(Banasthali University)  on 04-02-2014
;She was determined to exact a promise from him.   ;oald
;उसने उससे वादा लेने का दृढ  निश्चय किया.
(defrule exact2
(declare (salience 4950))
(id-root ?id exact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(kriyA-object  ?id ?id2)
(id-root ?id2 promise)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exact.clp 	exact2   "  ?id "  le )" crlf))
)

;@@@ Added by Pramila(Banasthali University)  on 04-02-2014
;He exacted a terrible revenge for their treatment of him.   ;oald
;उसने उनके व्यवहार के लिए एक भयानक बदला लिया.
(defrule exact3
(declare (salience 4900))
(id-root ?id exact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?)
(kriyA-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exact.clp 	exact3   "  ?id "  le )" crlf))
)

;@@@ Added by Pramila(Banasthali University)  on 04-02-2014
;The blackmailers exacted a total of $100,000 from their victims.    ;cald
;ब्लैकमेलरों ने अपने शिकारों से कुल 100,000 डॉलर  की माँग की.
(defrule exact4
(declare (salience 4900))
(id-root ?id exact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAzga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exact.clp 	exact4   "  ?id "  mAzga_kara )" crlf))
)

