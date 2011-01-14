
(defrule crochet0
(declare (salience 5000))
(id-root ?id crochet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kroSiyA_kA_kAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crochet.clp 	crochet0   "  ?id "  kroSiyA_kA_kAma )" crlf))
)

;"crochet","N","1.kroSiyA_kA_kAma"
;She is expert in crochet work. 
;
(defrule crochet1
(declare (salience 4900))
(id-root ?id crochet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kroSiyA_se_kADZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crochet.clp 	crochet1   "  ?id "  kroSiyA_se_kADZa )" crlf))
)

;"crochet","V","1.kroSiyA_se_kADZanA"
;She wears crocheted dress on special occasions.
;
