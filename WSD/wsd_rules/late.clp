
(defrule late0
(declare (salience 5000))
(id-root ?id late)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) by)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalxa_se_jalxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  late.clp 	late0   "  ?id "  jalxa_se_jalxa )" crlf))
)

(defrule late1
(declare (salience 4900))
(id-root ?id late)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id latest)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id navInawama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  late.clp  	late1   "  ?id "  navInawama )" crlf))
)

(defrule late2
(declare (salience 4800))
(id-root ?id late)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id later )
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bAxa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  late.clp  	late2   "  ?id "  bAxa_meM )" crlf))
)

(defrule late3
(declare (salience 4700))
(id-root ?id late)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 be)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  late.clp 	late3   "  ?id "  xera )" crlf))
)

(defrule late4
(declare (salience 4600))
(id-root ?id late)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 get)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  late.clp 	late4   "  ?id "  xera )" crlf))
)

;He is late.
;They asked us not to be late.
;Generalised from Wasp generated rules
(defrule late5
(declare (salience 4500))
(id-root ?id late)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xera_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  late.clp 	late5   "  ?id "  xera_se )" crlf))
)

(defrule late6
(declare (salience 4400))
(id-root ?id late)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xivaMgawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  late.clp 	late6   "  ?id "  xivaMgawa )" crlf))
)

;"late","Adj","1.xivaMgawa"
;His late father was a very popular figure in this locality.
;
;
