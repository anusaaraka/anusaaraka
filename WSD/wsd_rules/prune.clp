
(defrule prune0
(declare (salience 5000))
(id-root ?id prune)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pruning )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kAta-CAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  prune.clp  	prune0   "  ?id "  kAta-CAzta )" crlf))
)

;"pruning","N","1.kAta-CAzta"
;We appointed a gardener for pruning.
;
(defrule prune1
(declare (salience 4900))
(id-root ?id prune)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AlUbuKArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prune.clp 	prune1   "  ?id "  AlUbuKArA )" crlf))
)

;"prune","N","1.AlUbuKArA"
;Prunes cause stomach ache.
;
(defrule prune2
(declare (salience 4800))
(id-root ?id prune)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAtanA-CAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prune.clp 	prune2   "  ?id "  kAtanA-CAzta )" crlf))
)

;"prune","V","1.kAtanA-CAztanA"
;She has been pruning the roses in the rose garden.
;
