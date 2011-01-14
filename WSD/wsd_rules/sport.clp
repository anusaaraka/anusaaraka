
(defrule sport0
(declare (salience 5000))
(id-root ?id sport)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sporting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Kela_saMbanXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sport.clp  	sport0   "  ?id "  Kela_saMbanXI )" crlf))
)

;"sporting","Adj","1.Kela saMbanXI"
;--"2.sAhasika"
;
(defrule sport1
(declare (salience 4900))
(id-root ?id sport)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sport.clp 	sport1   "  ?id "  Kela )" crlf))
)

;"sport","N","1.Kela"
;We have many types of sports in our school.
;
(defrule sport2
(declare (salience 4800))
(id-root ?id sport)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sport.clp 	sport2   "  ?id "  Kela )" crlf))
)

;"sport","V","1.KelanA"
;We sport many outdoor activities at our home.
;
