;Added by Meena(22.5.10)  Needs discussion as for  nAka_nakSa , it is usually "features" and not "feature"
;He had an actor's typically malleable features . 
(defrule feature0
(declare (salience 5000))
(id-root ?id feature)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id features)
(viSeRya-viSeRaNa ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAka_nakSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feature.clp   feature0   "  ?id "   nAka_nakSa )" crlf))
)



;Salience reduced by Meena(22.5.10)
(defrule feature1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id feature)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lakRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feature.clp 	feature1   "  ?id "  lakRaNa )" crlf))
)

(defrule feature1
(declare (salience 4900))
(id-root ?id feature)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakata_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feature.clp 	feature1   "  ?id "  prakata_kara )" crlf))
)

;"feature","V","1.prakata_karanA"
;This film features an important hero.
;--"2.hissA_lenA"
;Does change of job features in your plans.
;
;
