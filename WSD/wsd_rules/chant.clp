;$$$  Modified by Preeti(29-4-14)
;Chant is often used as a form of meditation and prayer. [merriam-webster.com]
;sAXanA Ora prArWanA ke rUpa meM aksara maMwra kA upayoga kiyA jAwA hE.
(defrule chant0
;(declare (salience 5000));salience changed
(id-root ?id chant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMwra));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chant.clp 	chant0   "  ?id "  maMwra )" crlf))
)

;$$$  Modified by Preeti(29-4-14)
;"chant","V","1.japa_karanA"
;They were chanting in Arabic. [merriam-webster.com]
;ve arabI meM japa_kara rahe We.
(defrule chant1
(declare (salience 4900))
(id-root ?id chant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id japa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chant.clp 	chant1   "  ?id "  japa_kara )" crlf))
)


;$$$  Modified by Preeti(29-4-14)
;'Resign! Resign!' they chanted.[Oxford Advanced Learner's Dictionary]
;'wyAga_pawra xIjie! wyAga_pawra xIjie! 'unhoMne xoharAyA.
(defrule chant2
;(declare (salience 4800))
(id-root ?id chant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoharA));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chant.clp 	chant2   "  ?id "  xoharA )" crlf))
)

;@@@ Added by Preeti(29-4-14)
;The crowd broke into chants of 'Out! Out! '[Oxford Advanced Learner's Dictionary]
;BIda bAhara nikalo bAhara nikalo  ke nAre lagAye.
;Our chant was "Peace now, peace now!". 
;hamArA nArA WA "amana abI, amana abI!" .
(defrule chant3
(declare (salience 1000))
(id-root ?id chant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-RaRTI_viSeRaNa  ?id ?)(kriyA-into_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chant.clp 	chant3   "  ?id "  nArA )" crlf))
)


;"chant","VT","1.japa_karanA/alApanA"
;The students chanted the same slogan over && over again
;
;"chant","N","1.gIwa/Bajana"
;The pillgrims sang a religious chant.
;
