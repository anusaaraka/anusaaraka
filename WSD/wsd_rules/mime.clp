
(defrule mime0
(declare (salience 5000))
(id-root ?id mime)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mime.clp 	mime0   "  ?id "  nakala )" crlf))
)

;"mime","N","1.nakala"
;He is a  great mime artist.
;
(defrule mime1
(declare (salience 4900))
(id-root ?id mime)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mime.clp 	mime1   "  ?id "  nakala_kara )" crlf))
)

;"mime","V","1.nakala_karanA"
;It is fun to mime the teachers.
;
