;Added by Human
; Added, since vAlA vAle in plural
(defrule reptile0
(declare (salience 5000))
(id-root ?id reptile)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id reptiles )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id reMganevAle_jIva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  reptile.clp  	reptile0   "  ?id "  reMganevAle_jIva )" crlf))
)

(defrule reptile1
(declare (salience 4900))
(id-root ?id reptile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id reMganevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reptile.clp 	reptile1   "  ?id "  reMganevAlA )" crlf))
)

;"reptile","Adj","1.reMganevAlA"
;He licked his lips in an unpleasantly reptilian way.
;
(defrule reptile2
(declare (salience 4800))
(id-root ?id reptile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id reMganevAlA_jIva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reptile.clp 	reptile2   "  ?id "  reMganevAlA_jIva )" crlf))
)

;"reptile","N","1.reMganevAlA_jIva"
;Snakes, Lizards,Tortoises,and crocodiles are all reptiles.
;
