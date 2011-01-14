
;Many people were injured.
(defrule injure0
(declare (salience 5000))
(id-root ?id injure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id injured )
(id-word ?id1 are)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id GAyala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  injure.clp  	injure0   "  ?id "  GAyala )" crlf))
)

(defrule injure1
(declare (salience 4900))
(id-root ?id injure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id injured )
(id-word ?id1 were)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id GAyala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  injure.clp  	injure1   "  ?id "  GAyala )" crlf))
)

(defrule injure2
(declare (salience 4800))
(id-root ?id injure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id injured )
(id-word ?id1 was)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id GAyala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  injure.clp  	injure2   "  ?id "  GAyala )" crlf))
)

(defrule injure3
(declare (salience 4700))
(id-root ?id injure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id injured )
(id-word ?id1 is)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id GAyala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  injure.clp  	injure3   "  ?id "  GAyala )" crlf))
)

(defrule injure4
(declare (salience 4600))
(id-root ?id injure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id injured )
(id-word ?id1 am)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id GAyala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  injure.clp  	injure4   "  ?id "  GAyala )" crlf))
)

(defrule injure5
(declare (salience 4500))
(id-root ?id injure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id injured )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id GAyala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  injure.clp  	injure5   "  ?id "  GAyala )" crlf))
)

(defrule injure6
(declare (salience 4400))
(id-root ?id injure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id injured )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id GAyala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  injure.clp  	injure6   "  ?id "  GAyala )" crlf))
)

;"injured","Adj","1.GAyala"
;The injured antelope limped.
;--"2.xoRiwa"
;The boy with injured reputation left the company of his friends.
;
;
(defrule injure7
(declare (salience 4300))
(id-root ?id injure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ahawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  injure.clp 	injure7   "  ?id "  Ahawa_ho )" crlf))
)

(defrule injure8
(declare (salience 4200))
(id-root ?id injure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ahawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  injure.clp 	injure8   "  ?id "  Ahawa_kara )" crlf))
)

;default_sense && category=verb	GAyala_kara	0
;"injure","VT","1.GAyala_karanA"
;The boy was injured while playing cricket.
;
;
