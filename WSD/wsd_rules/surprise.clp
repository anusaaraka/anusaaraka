
(defrule surprise0
(declare (salience 5000))
(id-root ?id surprise)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id surprising )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AScaryajanaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  surprise.clp  	surprise0   "  ?id "  AScaryajanaka )" crlf))
)

;"surprising","Adj","1.AScaryajanaka"
;Tajmahal is very surprising.
;
(defrule surprise1
(declare (salience 4900))
(id-root ?id surprise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AScarya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surprise.clp 	surprise1   "  ?id "  AScarya )" crlf))
)

(defrule surprise2
(declare (salience 4700))
(id-root ?id surprise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AScaryacakiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surprise.clp 	surprise2   "  ?id "  AScaryacakiwa_ho )" crlf))
)

(defrule surprise3
(declare (salience 4800))
(id-root ?id surprise)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AScaryacakiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surprise.clp 	surprise3   "  ?id "  AScaryacakiwa_kara )" crlf))
)

;"surprise","V","1.AScaryacakiwa karanA"
;He surprised everyone by his behaviour at the party.
;
;
