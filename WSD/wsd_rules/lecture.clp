
(defrule lecture0
(declare (salience 5000))
(id-root ?id lecture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyAKyAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lecture.clp 	lecture0   "  ?id "  vyAKyAna )" crlf))
)

;"lecture","N","1.vyAKyAna"
;His lecture impressed me. 
;--"2.lambA_kaWana"
;He gave me a lecture on my mistake.
;
(defrule lecture1
(declare (salience 4900))
(id-root ?id lecture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyAKyAna_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lecture.clp 	lecture1   "  ?id "  vyAKyAna_xe )" crlf))
)

;"lecture","V","1.vyAKyAna_xenA"
;He lectures on ancient history twice a week.
;--"2.AlocanA_karanA"
;Why are you lecturing me?
;
