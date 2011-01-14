
(defrule melt0
(declare (salience 5000))
(id-root ?id melt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id molten )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id piGalA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  melt.clp  	melt0   "  ?id "  piGalA_huA )" crlf))
)

;"molten","Adj","1.piGalA huA"
;The molten lava flew down the ridges like water.
;
(defrule melt1
(declare (salience 4900))
(id-root ?id melt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id melting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id piGalawA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  melt.clp  	melt1   "  ?id "  piGalawA_huA )" crlf))
)

;"melting","Adj","1.piGalawA_huA"
;I could see the metal melting.
;
;
(defrule melt2
(declare (salience 4800))
(id-root ?id melt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piGalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  melt.clp 	melt2   "  ?id "  piGalA )" crlf))
)

(defrule melt3
(declare (salience 4700))
(id-root ?id melt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piGala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  melt.clp 	melt3   "  ?id "  piGala )" crlf))
)

;"melt","V","1.piGalAnA[piGalanA]"
;Eat the ice-cream, don't wait for it to melt.
;
