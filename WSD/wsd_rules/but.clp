
(defrule but0
(declare (salience 5000))
(id-root ?id but)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kevala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  but.clp 	but0   "  ?id "  kevala )" crlf))
)

;"but","Adv","1.kevala"
;He is but a boy.
;
(defrule but1
(declare (salience 4900))
(id-root ?id but)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paranwu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  but.clp 	but1   "  ?id "  paranwu )" crlf))
)

;"but","Conj","1.paranwu"
;Sonu eats sweets but Sweety doesn't.
;
(defrule but2
(declare (salience 4800))
(id-root ?id but)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_awirikwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  but.clp 	but2   "  ?id "  ke_awirikwa )" crlf))
)

;"but","Prep","1.ke_awirikwa"
;Nobody but only you could do that.
;
(defrule but3
(declare (salience 4700))
(id-root ?id but)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraMwu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  but.clp 	but3   "  ?id "  paraMwu )" crlf))
)

;Added by sheetal(13-12-2009).
(defrule but4
(declare (salience 4850))
(id-root ?id but)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
(link_name-lnode-rnode MVp ?id1 ?id)
(id-cat_coarse ?id1 verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parnwu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  but.clp       but4   "  ?id "  parnwu )" crlf))
)
;They speak neither French nor German but a curious mixture of the two.(see in 3rd linkage.)

