
(defrule delay0
(declare (salience 5000))
(id-root ?id delay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vilamba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  delay.clp 	delay0   "  ?id "  vilamba )" crlf))
)

;"delay","N","1.vilamba"
;The function will start without delay.
;There was a delay of two hours noticed for the arrival of the train.
;There will be some delay in the Annual function.
;vArRikowsava me WodZA vilamba hogA.
;
(defrule delay1
(declare (salience 4900))
(id-root ?id delay)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xerI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  delay.clp 	delay1   "  ?id "  xerI_kara )" crlf))
)

(defrule delay2
(declare (salience 4800))
(id-root ?id delay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xerI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  delay.clp 	delay2   "  ?id "  xerI_ho )" crlf))
)

;"delay","V","1.xerI_karanA[honA]"
;You should not delay the procedure further.
;Traffic was delayed by the bad weather.
;Ram is trying to delay his going to  London.
;rAma laMxana jAne ko tAlane kI koSiSa kara rahA hE.
;
