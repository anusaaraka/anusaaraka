
(defrule fleet0
(declare (salience 5000))
(id-root ?id fleet)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fleeting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kRaNaBaMgura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fleet.clp  	fleet0   "  ?id "  kRaNaBaMgura )" crlf))
)

;"fleeting","Adj","1.kRaNaBaMgura"
;For a fleeting moment, I thought that I have recognised the thief.
;
(defrule fleet1
(declare (salience 4900))
(id-root ?id fleet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jahAjI_bedZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fleet.clp 	fleet1   "  ?id "  jahAjI_bedZA )" crlf))
)

(defrule fleet2
(declare (salience 4800))
(id-root ?id fleet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fleet.clp 	fleet2   "  ?id "  wejZa )" crlf))
)

;"fleet","Adj","1.wejZa"
;He has trained a fleet footed team for the forthcoming competition.
;
;