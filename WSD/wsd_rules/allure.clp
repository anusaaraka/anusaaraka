
(defrule allure0
(declare (salience 5000))
(id-root ?id allure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id alluring )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mohaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  allure.clp  	allure0   "  ?id "  mohaka )" crlf))
)

;"alluring","Adj","1.mohaka"
;Cricket is an alluring game.
;
(defrule allure1
(declare (salience 4900))
(id-root ?id allure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  allure.clp 	allure1   "  ?id "  mAyA )" crlf))
)

;"allure","N","1.mAyA"
;Villagers get easily carried away by the false allure of city-life.
;
(defrule allure2
(declare (salience 4800))
(id-root ?id allure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id luBA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  allure.clp 	allure2   "  ?id "  luBA )" crlf))
)

;"allure","VT","1.luBAnA"
;Villagers are easily allured to the glitter of city-life.
;
