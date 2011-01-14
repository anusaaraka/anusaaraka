
(defrule dazzle0
(declare (salience 5000))
(id-root ?id dazzle)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakAcOMXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dazzle.clp 	dazzle0   "  ?id "  cakAcOMXa_kara )" crlf))
)

(defrule dazzle1
(declare (salience 4900))
(id-root ?id dazzle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakAcOMXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dazzle.clp 	dazzle1   "  ?id "  cakAcOMXa_kara )" crlf))
)

;"dazzle","VT","1.cakAcOMXa_karanA[karanA]"
;She was dazzled by the bright headlights
;
