
(defrule now0
(declare (salience 5000))
(id-root ?id now)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  now.clp 	now0   "  ?id "  aba )" crlf))
)

;"now","Adv","1.aba"
;Goods are now on sale.
;
(defrule now1
(declare (salience 4900))
(id-root ?id now)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PalawaH))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  now.clp 	now1   "  ?id "  PalawaH )" crlf))
)

;"now","Conj","1.PalawaH"
;Now that you have done it, I will see it.
;
(defrule now2
(declare (salience 4800))
(id-root ?id now)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isa_samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  now.clp 	now2   "  ?id "  isa_samaya )" crlf))
)

(defrule now3
(declare (salience 4700))
(id-root ?id now)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  now.clp 	now3   "  ?id "  aba )" crlf))
)

;"now","N","1.isa_samaya"
;Who is taking the class now?
;Untill now I did not realize his worth.
;
