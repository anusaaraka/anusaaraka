
;Added by Amba
(defrule perform0
(declare (salience 5000))
(id-root ?id perform)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 process)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perform.clp 	perform0   "  ?id "  kara )" crlf))
)

(defrule perform1
(declare (salience 4900))
(id-root ?id perform)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 photosynthesis)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perform.clp 	perform1   "  ?id "  kara )" crlf))
)

(defrule perform2
(declare (salience 4800))
(id-root ?id perform)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perform.clp 	perform2   "  ?id "  kArya_kara )" crlf))
)

;default_sense && category=verb	kara	0
;"perform","V","1.karanA"
;By giving donation he has performed a great social service.
;That magician performs miracles.
;--"2.praxarSana_karanA"
;The play was first performed in the late 80's.
;*--"3.kArya meM AnA/kriyASIla honA"
;Your new technique has performed very well in the tests.
;
;
